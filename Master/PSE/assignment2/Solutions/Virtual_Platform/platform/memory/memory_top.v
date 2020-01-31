`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stefano Centomo
// 
// Create Date: 11.11.2019 16:43:20
// Design Name: 
// Module Name: memory_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//   Top level for memory block 
//   MMIO between sw/hw is specified inside this block
//   This module use the Master clock and generate a clock divider by 4. 
//   Clock div4 is used by cpu and other peripherals!
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory_top(
    input                   clk,
    input                   rst,
    output                  clk_div4,
	input  		[15:0] 		addr,			//  address bus
	output reg  [7:0] 		datai, 			//  data bus
	input 		[7:0] 		datao, 			//  data bus
	input 					oeb, 			//  data bus negtive enable
	output reg  			irq_n, 			//  interrupt request
	output reg  			nmi_n, 			//  Non-makable interrupt request
	output reg  			res_n, 			//  reset
	output reg  			rdy,			//  ready
	output reg  			sob_n, 			//  Set Overflow bit
	input  					sync,			//  indicates an opcode fetch
	input  					vpab, 			//  Vector Pull Address
	input  					we_n, 			//  1=read,0=write
    input                   mode,
    input [7:0]             sw_din,
    input [13:0]            sw_addr,
    input                   we_n_in,
    output  [7:0]           psel,
    output                  penable,
    output                  pwrite,
    output                  presetn,
    output  [31:0]          pwdata,
    output [31:0]           paddr,
    input                   pready,
    input   [31:0]          prdata
    );
    // ------------------------------------------------------------------------
	//  FSM
	// ------------------------------------------------------------------------
    
    localparam PSEL_ADDR = 14'h3c20;
    localparam FLAGS_ADDR = 14'h3c21;
    localparam PRDATA_ADDR = 14'h3c10; //3c10 - 3c13
    // ------------------------------------------------------------------------
	//  FSM
	// ------------------------------------------------------------------------
	localparam STATE_SIZE = 4;
	localparam st_start	= 4'b0000;
	localparam st_1		= 4'b0001;
	localparam st_2		= 4'b0010;
	localparam st_3		= 4'b0011;
	localparam st_4		= 4'b0100;
	localparam st_5		= 4'b0101;
	localparam st_6		= 4'b0110;
	localparam st_7		= 4'b0111;
	localparam st_8		= 4'b1000;
	localparam st_9		= 4'b1001;
	reg[STATE_SIZE - 1 : 0] state,next_state;
    wire clk_div2, clk_div4, clk_div8;
    
    reg [3:0]counter;   
    
    reg [63:0]  ram_din;
    reg [7:0]   rom_din;
    reg [13:0]  ram_addr, rom_addr;
    reg [2:0]   addr_low;
    wire [7:0]  flags;
    
    reg rom_ena,ram_ena;
    reg ram_we_n,rom_we_n;
    wire [7:0] rom_dout;
    wire [95:0] ram_dout;
    reg [95:0] mmio;
    reg mmio_req;
    
    assign clk_div2 = counter[0];
    assign clk_div4 = counter[1];
    assign clk_div8 = counter[2];
    
    assign psel     = mmio[7:0];
    assign pwdata   = mmio[39:8];
    assign paddr    = mmio[71:40];
    assign penable  = mmio[72];
    assign pwrite   = mmio[80];
    assign presetn  = mmio[88];
    
    //-------------------------------------------------------------
    // RAM Instantiation
    //-------------------------------------------------------------    
    ram_top _ram(   .clk(clk),
                    .addr(ram_addr),
                    .ena(ram_ena),
                    .we_n(ram_we_n),
                    .din(ram_din),
                    .dout(ram_dout),
                    .mmio_req(mmio_req)
                    );
    //-------------------------------------------------------------
    // ROM Instatiation
    //-------------------------------------------------------------
    rom _rom(   .clk(clk),
                .addr(rom_addr),
                .ena(rom_ena),
                .we_n(rom_we_n),
                .din(rom_din),
                .dout(rom_dout),
                .mode(mode),
                .sw_din(sw_din),
                .sw_addr(sw_addr)
                );
    
    
    always@(posedge clk) begin
        case(counter[1:0])
            2'd3:begin
                datai <= addr[15] ? rom_dout :  (addr_low[2:0] == 3'd0) ? ram_dout[7:0]   : 
                                                (addr_low[2:0] == 3'd1) ? ram_dout[15:8]  : 
                                                (addr_low[2:0] == 3'd2) ? ram_dout[23:16] : 
                                                (addr_low[2:0] == 3'd3) ? ram_dout[31:24] :
                                                (addr_low[2:0] == 3'd4) ? ram_dout[39:32] :
                                                (addr_low[2:0] == 3'd5) ? ram_dout[47:40] :
                                                (addr_low[2:0] == 3'd6) ? ram_dout[55:48] :
                                                (addr_low[2:0] == 3'd7) ? ram_dout[63:56] : 8'd0;
                
                //request the entire mmio
                mmio_req <= 1'b1;
                ram_addr <= PSEL_ADDR;
                ram_we_n <= 1'b1;
                ram_ena  <= 1'b1;
                rom_ena  <= 1'b0; 
            end
            
            2'd2:begin
 
            end
            
            2'd1:begin
                //Retrieve MMIO
                mmio <= ram_dout;
                
                //Prepare the next iteration
                mmio_req <= 1'b0;
                ram_din[7:0]  <= datao;
                ram_addr <= addr[13:0];
                ram_we_n <= we_n;
                ram_ena  <= ~addr[15];
                rom_din  <= datao;
                rom_addr <= addr[13:0];
                addr_low <= addr[2:0];
                rom_ena  <= addr[15];
                rom_we_n <= we_n;
            
            end
            2'd0: begin
                //Write Pready and PRDATA
                ram_addr    <= PRDATA_ADDR;
                ram_din     <= {31'd0,pready,prdata}; //64
                ram_we_n    <= 1'b0;    //write mode
                ram_ena     <= 1'b1;    //enable ram
                mmio_req    <= 1'b1;    //enable 8 bytes write mode
                 
            end
        endcase
    end
    
    
    //Clock Divider
    always@(posedge clk) begin
        if(rst) begin
            counter <= 3'b111;
        end else begin
            counter <= counter -1;
        end
    end
    
    always @ ( state ) begin
        case(state)
            st_start: begin
                next_state <= st_1;
            end
            st_1: begin
                next_state <= st_2;
            end
            st_2: begin
                next_state <= st_3;
            end
            st_3: begin
                next_state <= st_4;
            end
            st_4: begin
                next_state <= st_5;
            end
            st_5: begin
                next_state <= st_6;
            end
            st_6: begin
                next_state <= st_7;
            end
            st_7: begin
                next_state <= st_8;
            end
            st_8: begin
                next_state <= st_9;
            end
            st_9: begin
                next_state <= st_8;
            end
        endcase
    end
    
    always @(posedge clk_div4) begin
        if(~mode) begin
            if(rst == 1'b1) begin
                state <= st_start;
            end else begin
                state <= next_state;
                case( next_state )
                    st_start: begin
                        rdy			<= 1'b0;
                        sob_n		<= 1'b0;
                        irq_n		<= 1'b0;
                        nmi_n		<= 1'b0;
                        res_n		<= 1'b0;
                    end
                    st_1: begin
                        rdy 	<= 1'b1;  // CHANGED
                        sob_n	<= 1'b1;  // CHANGED
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b0;
                        res_n 	<= 1'b0;
                    end
                    st_2: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b0;
                        res_n 	<= 1'b0;
                    end
                    st_3: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b1; // CHANGED
                        res_n 	<= 1'b0;
                    end
                    st_4: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b1;
                        res_n 	<= 1'b0;
                    end
                    st_5: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b1;
                        res_n 	<= 1'b0;
                    end
                    st_6: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b0; // CHANGED
                        res_n 	<= 1'b0;
                    end
                    st_7: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b0;
                        res_n 	<= 1'b1; // CHANGED
                    end
                    st_8: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b0;
                        res_n 	<= 1'b1;
                    end
                    st_9: begin
                        rdy 	<= 1'b1;
                        sob_n	<= 1'b1;
                        irq_n 	<= 1'b0;
                        nmi_n 	<= 1'b0;
                        res_n 	<= 1'b1;
                    end
                endcase
            end
        end
    end
endmodule
