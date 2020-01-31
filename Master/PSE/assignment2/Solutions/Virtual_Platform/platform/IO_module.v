`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Stefano Centomo
// 
// Create Date: 11.11.2019 16:43:20
// Design Name: 
// Module Name: I/O Module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//   I/O module used to read and write data computed by the platform
//   when the peripheral is selected it can write data dout port or request data from din port.
//  When the peripheral is selected (psel = 1) and pwrite = 1 it write on dout port 

// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module IO_module(

		input                 pclk,	
		input                 presetn, 
		input [31:0]          paddr, 	
		input                 psel, 	
		input                 penable, 
		input                 pwrite, 	
		input [31:0]          pwdata, 	
		output reg            pready, 
		output reg [31:0]     prdata,
		
		input [31:0]          din,
		input                 din_rdy,
		output reg [31:0]     dout,
		output reg            dout_rdy,
		output reg            din_req
    );
    
always@(posedge pclk)begin

    if(psel == 1'b1) begin
        // Read Mode
        if(pwrite== 1'b0) begin
            din_req <= 1'b1; // request
            if(din_rdy == 1'b1) begin
                prdata <= din;
                pready <= 1'b1;
            end 
            else begin 
                prdata <= 32'b0;
                pready <= 1'b0;
            end
         end else begin
        //Write Mode pwrite = 1
            dout <= pwdata;
            dout_rdy <= 1'b1;
        end
        
     //psel = 0;
     end else begin
        din_req <= 1'b0;
        prdata <= 32'b0;
        pready <= 32'b0;
        dout_rdy <= 1'b0;
        dout <= 32'b0;
     end 
end
    



    
    
endmodule
