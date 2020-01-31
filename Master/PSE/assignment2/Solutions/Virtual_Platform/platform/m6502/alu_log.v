// an 8 bit logic unit that is part of the m6502 ALU.
// 
//      CTL | Y output
//      ----+--------
//      000 | 
//      001 | 
//      010 | Rotate Left A
//      011 | Rotate Right A
//      100 | A AND B
//      101 | A OR  B
//      110 | A XOR B
//      111 | !A AND B
//   
// 
// 
// ----------------------------------------------------------------------
`timescale 1 ns / 1 ns // timescale for following modules

module alu_log (a,
   b,
   cin,
   cout,
   ctl,
   y);
input   [7:0] a; //  A side

input   [7:0] b; //  B side

input   cin; //  carry in

output  cout; //  carry out

input   [2:0] ctl; //  control

output  [7:0] y; //  sum out

wire    cout; 
wire    [7:0] y; 
assign y = ctl == 3'b 010 ? {a[6:0] , cin} : 
	ctl == 3'b 011 ? {cin , a[7:1]} : 
	ctl == 3'b 100 ? a & b : 
	ctl == 3'b 101 ? a | b : 
	ctl == 3'b 110 ? a ^ b : 
	~a & b; 
assign cout = ctl == 3'b 010 ? a[7] : 
	a[0]; 

endmodule // module alu_log

