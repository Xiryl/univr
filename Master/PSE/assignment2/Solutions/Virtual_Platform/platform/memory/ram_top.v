`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2019 11:21:33
// Design Name: 
// Module Name: ram_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ram_top(
        input clk,
        input [63:0] din,
        input [13:0] addr,
        input ena,
        input mmio_req,
        input we_n,
        output [95:0] dout
    );
wire [15:0] ram1_dout, ram2_dout, ram3_dout, ram4_dout, ram5_dout, ram6_dout,ram7_dout,ram8_dout;
wire [10:0] addr_high;
wire [2:0] addr_low;
wire ena1,ena2,ena3,ena4,ena5,ena6,ena7,ena8;
wire [7:0] ram_din1,ram_din2,ram_din3,ram_din4,ram_din5,ram_din6,ram_din7,ram_din8;
assign addr_high = addr[13:3];
assign addr_low  = addr[2:0];


// Enable RAM operation depeding on the 3 bits lower address or enable all brams when a mmio request is required 
assign ena1 = (ena & ~mmio_req) ? (~addr_low[2]  &  ~addr_low[1] & ~addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ; 
assign ena2 = (ena & ~mmio_req) ? (~addr_low[2]  &  ~addr_low[1] &  addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ;
assign ena3 = (ena & ~mmio_req) ? (~addr_low[2]  &   addr_low[1] & ~addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ; 
assign ena4 = (ena & ~mmio_req) ? (~addr_low[2]  &   addr_low[1] &  addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ;
assign ena5 = (ena & ~mmio_req) ? ( addr_low[2]  &  ~addr_low[1] & ~addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ;
assign ena6 = (ena & ~mmio_req) ? ( addr_low[2]  &  ~addr_low[1] &  addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ;
assign ena7 = (ena & ~mmio_req) ? ( addr_low[2]  &   addr_low[1] & ~addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ; 
assign ena8 = (ena & ~mmio_req) ? ( addr_low[2]  &   addr_low[1] &  addr_low[0] ) : (ena & mmio_req) ? 1'b1 : 1'b0 ; 

//DIN Setup
assign ram_din1 = (ena1 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[7:0]   :  8'd0;
assign ram_din2 = (ena2 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[15:8]  :  8'd0;
assign ram_din3 = (ena3 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[23:16] :  8'd0;
assign ram_din4 = (ena4 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[31:24] :  8'd0;
assign ram_din5 = (ena5 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[39:32] :  8'd0;
assign ram_din6 = (ena6 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[47:40] :  8'd0;
assign ram_din7 = (ena7 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[55:48] :  8'd0;
assign ram_din8 = (ena8 & ~mmio_req) ? din[7:0] : (mmio_req) ? din[63:56] :  8'd0;

assign dout = {ram4_dout[15:8],ram3_dout[15:8],ram2_dout[15:8],ram1_dout[15:8],ram8_dout[7:0],ram7_dout[7:0],ram6_dout[7:0],ram5_dout[7:0],ram4_dout[7:0],ram3_dout[7:0],ram2_dout[7:0],ram1_dout[7:0]};

ram _ram1(.clk(clk),.ena(ena1),.we_n(we_n),.din(ram_din1),.addr(addr_high),.dout(ram1_dout));
ram _ram2(.clk(clk),.ena(ena2),.we_n(we_n),.din(ram_din2),.addr(addr_high),.dout(ram2_dout));
ram _ram3(.clk(clk),.ena(ena3),.we_n(we_n),.din(ram_din3),.addr(addr_high),.dout(ram3_dout));
ram _ram4(.clk(clk),.ena(ena4),.we_n(we_n),.din(ram_din4),.addr(addr_high),.dout(ram4_dout));
ram _ram5(.clk(clk),.ena(ena5),.we_n(we_n),.din(ram_din5),.addr(addr_high),.dout(ram5_dout));
ram _ram6(.clk(clk),.ena(ena6),.we_n(we_n),.din(ram_din6),.addr(addr_high),.dout(ram6_dout));
ram _ram7(.clk(clk),.ena(ena7),.we_n(we_n),.din(ram_din7),.addr(addr_high),.dout(ram7_dout));
ram _ram8(.clk(clk),.ena(ena8),.we_n(we_n),.din(ram_din8),.addr(addr_high),.dout(ram8_dout));
   
endmodule
