// an 8 bit ripple carry adder subtractor
// 
// 
`timescale 1 ns / 1 ns // timescale for following modules

module addsub8 (a,
   b,
   cin,
   cout4,
   cout8,
   sub,
   sum);
input   [7:0] a; //  A side

input   [7:0] b; //  B side

input   cin; //  carry in

output  cout4; //  half-carry out

output  cout8; //  carry out

input   sub; //  subtract when 1

output  [7:0] sum; //  sum out

wire    cout4; 
wire    cout8; 
wire    [7:0] sum; 
wire    [7:0] b_sub; //  b side after XOR gates
wire    [7:0] sub_v; //  vectorized sub
wire    cout4l; //  local copy
// -----------ARCHITECTURE---------
assign sub_v = {{{{{{{sub , sub} , sub} , sub} , sub} , sub} , sub} , sub}; 
assign b_sub = b ^ sub_v; 
//  If you need more speed, replace this with a carry-look-ahead adder.
//  In general though, the delays here match the delays thru the 
//  opcode decode especially if you remove the BCD logic.
//  No sense in using more logic when it's not in the critical path...
// ------Instantiate the 4 bit adder here---------------
assign cout4 = cout4l; 
//  drive the local copy out
add4rpl addh (.a(a[7:4]),
          .b(b_sub[7:4]),
          .cin(cout4l),
          .cout(cout8),
          // ------Instantiate the 4 bit adder here---------------
.sum(sum[7:4]));
add4rpl addl (.a(a[3:0]),
          .b(b_sub[3:0]),
          .cin(cin),
          .cout(cout4l),
          .sum(sum[3:0]));

endmodule // module addsub8

