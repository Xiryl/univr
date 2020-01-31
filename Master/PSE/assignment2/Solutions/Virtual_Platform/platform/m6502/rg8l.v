// an 8-Bit register
//
// 
//  Truth Table:
// 
//                 CLK LD | Operation
//               -----------+------------
//                  ^   L   | Hold
//                  ^   H   | Load
// 
`timescale 1 ns / 1 ns // timescale for following modules

module rg8l (di,
   ld,
   do,
   clk);
input   [7:0] di; //  Data input

input   ld; //  load

output  [7:0] do; //  Data output

input   clk; //  clock input

wire    [7:0] do; 
// ---------------------------------------------------------------------------
// 
//   Architecture body
// 
// ---------------------------------------------------------------------------
reg     [7:0] ido; //  Internal data output
// ---------------------------------------------------------------------------
// 
//      Process: ff1
// 
//   Parameters: NONE
// 
//  Description: This process implements d-flip flops.
// 
// ---------------------------------------------------------------------------
assign do = ido; 
//  Buffer data output
always @(posedge clk)
   begin : ff1
   if (ld == 1'b 1)
      begin
      ido <= di;
      end
   end

endmodule // module rg8l

