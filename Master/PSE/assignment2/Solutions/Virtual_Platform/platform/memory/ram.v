`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2019 11:30:29
// Design Name: 
// Module Name: mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  Simple ram block 
//  when enable read or write depending on we_n. 
//  when ena = 1 
//  we_n = 0 write enable
//  we_n = 1 do not write, read enable
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ram(
    input               clk,
    input       [10:0]  addr, // 
    input               we_n,
    input               ena, 
    input       [7:0]   din,
    output reg  [15:0]   dout);
    
    reg [7:0] _mem[2048:0]; // 2047 + 1  mem[addr] mem[addr+1] 
    
    wire we;
    wire [1:0] rw;
    
    assign rw ={ena, ~we_n}; // read-write
    
    always@(posedge clk) begin
        casex(rw)
            2'b0?:begin // Do nothing.
            end
            2'b10:begin // Enable Read
                dout[7:0]   <= _mem[addr];
                dout[15:8]  <= _mem[addr+1];
            end
            2'b11:begin // Enable Write
                _mem[addr] <= din;
            end
        endcase
    end
endmodule