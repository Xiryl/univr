// high address mux for the m6502
// 
//  SEL | Y
//  ----+-----
//  0000| PCH
//  0001| 0x01
//  0010| 0x00
//  0100| Dreg
//  1000| ALU
// 
// 
// ---------------------------------------------------------------------------
// ----------------------------ENTITY-----------------
`timescale 1 ns / 1 ns // timescale for following modules

module adh_mux (alu,
   pch,
   dreg,
   sel,
   y);
input   [7:0] alu; //  alu inputs

input   [7:0] pch; //  program counter hi inputs

input   [7:0] dreg; //  D reg inputs

input   [3:0] sel; //  Select

output  [7:0] y; //  y outputs

parameter zero = 8'b 00000000; //  zero page
//  Note that this is coded at a very low level.
//  No doubt about what the synthesize should do with this!
//  Xes also propagate just like the real gate level version.
parameter one = 8'b 00000001; //  stack page
wire    [7:0] y; 
wire    [7:0] pre_y; //  output of the 4:1 mux
// -------------ARCHITECTURE----------
//  by default we select the program ctr
assign y = sel == 4'b 0000 ? pch : 
	pre_y; 
assign pre_y[0] = (alu[0] & sel[3] | dreg[0] & sel[2] | sel[0]) & ~sel[1]; 
assign pre_y[1] = (alu[1] & sel[3] | dreg[1] & sel[2]) & ~(sel[1] | sel[0]); 
assign pre_y[2] = (alu[2] & sel[3] | dreg[2] & sel[2]) & ~(sel[1] | sel[0]); 
assign pre_y[3] = (alu[3] & sel[3] | dreg[3] & sel[2]) & ~(sel[1] | sel[0]); 
assign pre_y[4] = (alu[4] & sel[3] | dreg[4] & sel[2]) & ~(sel[1] | sel[0]); 
assign pre_y[5] = (alu[5] & sel[3] | dreg[5] & sel[2]) & ~(sel[1] | sel[0]); 
assign pre_y[6] = (alu[6] & sel[3] | dreg[6] & sel[2]) & ~(sel[1] | sel[0]); 
assign pre_y[7] = (alu[7] & sel[3] | dreg[7] & sel[2]) & ~(sel[1] | sel[0]); 

endmodule // module adh_mux

