`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UniVr
// Engineer: Centomo Stefano
// 
// Create Date: 04.11.2019 12:07:40
// Design Name: Testbench
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//   Testbench used to load the SW inside the Rom and launch a simple execution.
//   The used sw request a data. It will raise din_req. 
//   The requested data is passed through din port.
//   The new data is notified raising din_rdy port.

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define ROM_SIZE 16384

module tb;
    reg clk;
    reg  [13:0]     sw_addr;
    reg  [7:0]      sw_din;
    reg             mode;
    wire [7:0]      datai, datao;
    reg  [7:0]      _mem[(`ROM_SIZE - 1) : 0];
    reg             rst;
    reg             we_n;
   
    reg   [31:0]    din;
    reg             din_rdy;
    wire  [31:0]    dout;
    wire            dout_rdy;
    wire            din_req;
    

    top_level platform( .clk(clk),
                        .rst(rst),
                        .sw_din(sw_din),
                        .we_n_in(we_n),
                        .sw_addr(sw_addr),
                        .mode(mode),
                        .din(din),
                        .din_rdy(din_rdy),
                        .dout(dout),
                        .dout_rdy(dout_rdy),
                        .din_req(din_req)
                       );
    initial begin
        // read rom.mem file and store it into _mem
        $readmemh("rom.mem", _mem);
        clk     <= 1'b0;
        sw_din  <= 7'h0000;
        sw_addr <= 13'd0;
    end   
    
    //Master clock generation: 20ns period
    always #10 clk <=  !clk;
    
    integer counter;
   
   // Master process
    always@* begin
        #200;

        // ROM LOADING 
        for(counter = 0; counter < `ROM_SIZE; counter = counter + 1) begin
            sw_addr[13:0] = counter;
            sw_din =_mem[ sw_addr[13:0] ];
            mode = 1'b1;
            we_n = 1'b0;
            #20;
        end
        
        #20
        // Run the platform
        mode = 1'b0;
        rst  = 1'b1;
        
        #20;
        rst = 1'b0;
        
        // When data request (din_req) set din port 
        while(~dout_rdy)begin #20; end
        
        $display("Out: %d ", dout);
        
        while(~din_req)begin #20; end
         din = 32'd6;
         din_rdy = 1'd1;
         #100000;
        // 
        
    end
endmodule