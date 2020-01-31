// an 8-Bit register with Parallel Load Capability
// 
//  Truth Table:
// 
//                 CLK LD | Operation
//               -----------+------------
//                  ^   L   | Hold
//                  ^   H   | Load
// 
// 
`timescale 1 ns / 1 ns // timescale for following modules

module rg8l2 (dia,
   dib,
   lda,
   ldb,
   do,
   clk);
input   [7:0] dia; //  Data input

input   [7:0] dib; //  Data input

input   lda; //  load a

input   ldb; //  load b

output  [7:0] do; //  Data output

input   clk; //  clock input

wire    [7:0] do; 
reg     [7:0] ido; 
wire    [7:0] idi; 
wire    ld; 
// --------------------------------------------
assign do = ido; 
//  Buffer data output
assign ld = lda | ldb; 
// ---------------------------------------------------------------------------
// 
//      Process: ff1
//  Description: This process implements d-flip flops.
// 
// ---------------------------------------------------------------------------
assign idi = lda == 1'b 1 ? dia : 
	dib; 
always @(posedge clk)
   begin : ff1
   if (ld == 1'b 1)
      begin
      ido <= idi;
      end
   end

endmodule // module rg8l2

