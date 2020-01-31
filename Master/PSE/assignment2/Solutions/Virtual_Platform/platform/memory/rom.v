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
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rom(
    input               clk,
    input       [13:0]  addr,
    input               we_n,
    input               ena,
    input       [7:0]   din,
    output reg  [7:0]   dout,
    input               mode, 
    input       [7:0]   sw_din,
    input       [13:0]  sw_addr);
    
    reg [7:0] _mem[16383:0];
        
    wire we;
    wire [2:0] irw;
    
    assign irw = {mode, ena, ~we_n}; // init-read-write
    
    always@(posedge clk) begin
        casex(irw)
            3'b00?:begin // Do nothing.
            end
            3'b010:begin // Enable Read
                dout <= _mem[addr];
            end
            3'b011:begin // Enable Write
                _mem[addr] <= din; 
            end
            3'b1??:begin // Enable Write ROM
                _mem[sw_addr] <= sw_din;
            end
        
        endcase
    end
endmodule