// low address mux for the m6502
//
`timescale 1 ns / 1 ns // timescale for following modules

module adl_mux (alu,
   pcl,
   dreg,
   sreg,
   clk,
   lreg_ld,
   sel,
   y);
input   [7:0] alu; //  alu inputs

input   [7:0] pcl; //  program counter low inputs

input   [7:0] dreg; //  D reg inputs

input   [7:0] sreg; //  Stack pointer inputs

input   clk; //  the clock for the L reg.

input   lreg_ld; //  load the L register

input   [1:0] sel; //  Select

output  [7:0] y; //  y outputs

// ---------------------------------------------------------------------------
// 
//   Architecture body
// 
// ---------------------------------------------------------------------------
wire    [7:0] y; 
wire    [7:0] lreg; //  output of the L register
//  these are right from regs
//  so they are plenty fast.
// ----------Instantiate the L register here-------------------
assign y = sel == 2'b 00 ? pcl : 
	sel == 2'b 01 ? dreg : 
	sel == 2'b 10 ? sreg : 
	sel == 2'b 11 ? lreg : 
	{{{{{{{1'b x , 1'b x} , 1'b x} , 1'b x} , 1'b x} , 1'b x} , 1'b x} , 1'b x}; 
rg8l lrg (.di(alu),
          .ld(lreg_ld),
          .do(lreg),
          .clk(clk));

endmodule // module adl_mux

