// a 4 bit ripple carry adder
// 
`timescale 1 ns / 1 ns 

module add4rpl (a,
   b,
   cin,
   cout,
   sum);
input   [3:0] a; //  A side

input   [3:0] b; //  B side

input   cin; //  carry in

output  cout; //  carry out

output  [3:0] sum; //  sum out

wire    cout; 
wire    [3:0] sum; 
wire    [3:0] cry; //  local carries
assign sum[0] = a[0] ^ b[0] ^ cry[0]; 
assign sum[1] = a[1] ^ b[1] ^ cry[1]; 
assign sum[2] = a[2] ^ b[2] ^ cry[2]; 
assign sum[3] = a[3] ^ b[3] ^ cry[3]; 
assign cry[0] = cin; 
assign cry[1] = a[0] & b[0] | cry[0] & a[0] | cry[0] & b[0]; 
assign cry[2] = a[1] & b[1] | cry[1] & a[1] | cry[1] & b[1]; 
assign cry[3] = a[2] & b[2] | cry[2] & a[2] | cry[2] & b[2]; 
assign cout = a[3] & b[3] | cry[3] & a[3] | cry[3] & b[3]; 

endmodule // module add4rpl

