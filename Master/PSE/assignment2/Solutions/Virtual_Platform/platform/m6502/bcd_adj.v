// an 8 bit Binary Coded Decimal (BCD) adjust logic.
//
`timescale 1 ns / 1 ns // timescale for following modules

module bcd_adj (datai,
   datao,
   bcd_en,
   cin4,
   cin8,
   cout,
   sub);
input   [7:0] datai; //  in

output  [7:0] datao; //  out

input   bcd_en; //  enable bcd adjust

input   cin4; //  half carry in

input   cin8; //  carry in

output  cout; //  carry out

input   sub; //  subtract flag

wire    [7:0] datao; 
wire    cout; 
wire    [7:0] b; //  adjust value
wire    cout4; // half-carry out
wire    cin4l; // half-carry in
wire    cout8; // adder carry out
wire    gnd; //  logic zero
wire    lo_adj; //  1= low nibble needs to have 6 added to it.
wire    hi_adj; //  1= hi nibble needs to have 6 added to it.
wire    lo_adj_sub; //  1= low nibble needs to have A added to it.
wire    hi_adj_sub; //  1= hi nibble needs to have A added to it.
// -----------ARCHITECTURE---------
//  adjust when a-f and BCD adjust is enabled
assign lo_adj = bcd_en & ~sub & (cin4 | 
		datai[3] & ~(~datai[2] & ~datai[1])); 
//  adjust when a-f and BCD adjust is enabled
//
//Bug fix: 2000.03.21
// instruction SBC will be wrong
//Original:
//assign lo_adj_sub = bcd_en & sub & datai[3] & ~(~datai[2] & ~datai[1]);
assign lo_adj_sub = bcd_en & sub & ~cin4; 
//  adjust when a-f and cin4=0 or 9-f when cin4=1 when enabled
assign hi_adj = bcd_en & ~sub & (cin8 | 
		datai[7] & ~(~cout4 & 
		~datai[6] & ~datai[5] | cout4 & ~datai[6] & ~datai[5] & ~datai[4])); 
//  adjust when a-f and BCD adjust is enabled
//Bug fix: 2000.03.21
// instruction SBC will be wrong
//Original:
//assign hi_adj_sub = bcd_en & sub & datai[7] & ~(~datai[6] & ~datai[5]);
assign hi_adj_sub = bcd_en & sub & ~cin8; 
assign b[7:4] = hi_adj_sub == 1'b 1 ? 4'b 1010 : 
	hi_adj == 1'b 1 ? 4'b 0110 : 
	4'b 0000; 
//  add 6 for add or A for subtract to the nibble(s) that need adjusting
assign b[3:0] = lo_adj_sub == 1'b 1 ? 4'b 1010 : 
	lo_adj == 1'b 1 ? 4'b 0110 : 
	4'b 0000; 
assign cout = cin8 | cout8 & ~hi_adj_sub; 
//  set the carry bit if adjust causes carry out.
assign cin4l = cout4 & ~lo_adj_sub; 
//  don't carry when adj for sub 
// ------Instantiate the 4 bit adder here---------------
assign gnd = 1'b 0; 
add4rpl addh (.a(datai[7:4]),
          .b(b[7:4]),
          .cin(cin4l),
          .cout(cout8),
          // ------Instantiate the 4 bit adder here---------------
.sum(datao[7:4]));
add4rpl addl (.a(datai[3:0]),
          .b(b[3:0]),
          //  no carry in.
.cin(gnd),
          .cout(cout4),
          .sum(datao[3:0]));

endmodule // module bcd_adj

