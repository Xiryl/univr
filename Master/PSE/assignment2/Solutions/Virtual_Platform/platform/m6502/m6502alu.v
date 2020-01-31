// ALU for the m6502
// 
// 
//  Defnition of control signals:
//  ALU_CTL should come directly from flops to maximize performance
//  	These signals are Definitely in the critical path!
//  ALU_CTL[2:0] - output Mux select/alu mode/logic mode
// 	000	BCD_out/ADD/don't care
// 	001	BCD_out/Subtract/don't care
// 	010	LOG_out/Don't care/ROL
// 	011	LOG_out/Don't care/ROR
// 	100	LOG_out/Don't care/AND
// 	101	LOG_out/Don't care/OR
// 	110	LOG_out/Don't care/EOR
// 	111	LOG_out/Don't care/!A AND B
//  ALU_CTL[3]	- BCD mode enable (0=bypass BCD adjust logic)
//  ALU_CTL[4]	- Carry in
//  ALU_CTL[5]	- force alu_out to zero (for reset)
//  ALU_CTL[7:6]	- ALU B side select
// 	00	- Zero
// 	01	- Sign extend
// 	10	- K register
// 	11	- K register
//  ALU_CTL[7:6]	- LOG B side select (note that these bits have 2 different functions)
// 	00	- Zero
// 	01	- Decoded ALU_CTL[10:8]
// 	10	- K register
// 	11	- K register
//  ALU_CTL[10:8]	- LOG decoder - 3 to 8 bit decoder to the B side of the LOG
//  ALU_CTL[11]	- LOG invert B side
//                                                                         
//  ALU_LD can be from decode logic since there are only a few levels of gates
//  ALU_LD[0] - Load J register from DATAI
//  ALU_LD[1] - Load J register from DATAO
//  ALU_LD[2] - Load K register from DATAI
// 
//  Synthesis notes:
// 	Depending on the power of your synthesizer, you might try flattening
// 	the heirachy at this level. Some amount of the gates can be combined
// 	since much of the logic is combinatorial. However, it is also arithemtic
// 	and synthesizers aften do a poor job with arithmetic logic (the XOR
// 	gates often blow up the algorithms). To get the most performance,
// 	replace the ripple carry adders with the high speed adder of your
// 	choice.
// 
//   
// 
`timescale 1 ns / 1 ns // timescale for following modules

module m6502alu (clk,
   datai,
   datao,
   alu_ctl,
   alu_ld,
   alu2op,
   alu_out);
input   clk; //  clock

input   [7:0] datai; //  Datai inputs

input   [7:0] datao; //  datao inputs

input   [11:0] alu_ctl; //  control inputs

input   [2:0] alu_ld; //  register load control

output  [5:0] alu2op; //  Flags

output  [7:0] alu_out; //  alu outputs

parameter zero = 8'b 00000000; 
parameter XES = 8'b xxxxxxxx; 
wire    [5:0] alu2op; 
// ---------------------------------------------------------------------------
// 
//   Architecture body
// 
// ---------------------------------------------------------------------------
wire    [7:0] alu_out; 
wire    [7:0] jreg; //  J register
wire    [7:0] kreg; //  K register
wire    [7:0] add_b; //  adder B input
wire    [7:0] log_b_preinv; //  logic B input before inv
wire    [7:0] log_b; //  logic B input
wire    [7:0] add_out; //  adder output
wire    [7:0] log_out; //  Logic unit output
wire    [7:0] bcd_out; //  BCD output
wire    [7:0] dcd; //  Output of 3 to 8 decoder.
wire    [2:0] log_ctl; //  Logic unit control
wire    [7:0] alu_outl; //  local version of the output
wire    add_sub; //  1=subtract, 0=add
wire    add_cin; //  adder carry in.
wire    add_cout4; //  adder half-carry out.
wire    add_cout; //  adder carry out.
wire    alu_cout; //  adder and logic unit carry out
wire    log_cin; //  Logic unit carry in.
wire    log_cout; //  Logic unit carry out.
wire    bcd_en; //  1=enable bcd adjust
wire    bcd_cout; //  bcd carry out
wire    [7:0] sign_ext; //  sign extend on relative branch
wire    z_flag; //  Zero flag of the PSR
wire    n_flag; //  Negative flag of the PSR
wire    v_flag; //  overflow flag of the PSR
wire    bra_carry; //  relative branch page crossing
rg8l2 jrg (.dia(datai),
          .dib(datao),
          .lda(alu_ld[0]),
          .ldb(alu_ld[1]),
          .do(jreg),
          .clk(clk));
rg8l krg (.di(datai),
          .ld(alu_ld[2]),
          .do(kreg),
          .clk(clk));
addsub8 adder (.a(jreg),
          .b(add_b),
          .cin(add_cin),
          .cout4(add_cout4),
          .cout8(add_cout),
          .sub(add_sub),
          .sum(add_out));
alu_log logic (.a(jreg),
          .b(log_b),
          .cin(log_cin),
          .cout(log_cout),
          .ctl(log_ctl),
          .y(log_out));
bcd_adj bcd (.datai(add_out),
          .datao(bcd_out),
          .bcd_en(bcd_en),
          .cin4(add_cout4),
          .cin8(add_cout),
          .cout(bcd_cout),
          .sub(add_sub));
assign alu_outl = alu_ctl[5] == 1'b 1 ? zero : 
	alu_ctl[2:1] == 2'b 00 ? bcd_out : 
	log_out; 
// ---------------Create the mux into the B side of the adder
assign alu_out = alu_outl; 
//  default to the Logical Unit drive the local version out.-----------------Instantiate the J register------------
// -----------------Instantiate the K register------------
// -----------------Instantiate the adder------------
// -----------------Instantiate the Logic unit------------
// -----------------Instantiate the BCD adjust------------
//  reset
//  add or subtract
// ---------------Create the mux into the B side of the logic unit
assign add_b = alu_ctl[7:6] == 2'b 00 ? zero : 
	alu_ctl[7:6] == 2'b 01 ? sign_ext : 
	alu_ctl[7:6] == 2'b 10 ? kreg : 
	alu_ctl[7:6] == 2'b 11 ? kreg : 
	XES; 
// ---------------Create the inversion logic to the B side of the logic unit.
assign log_b_preinv = alu_ctl[7:6] == 2'b 00 ? zero : 
	alu_ctl[7:6] == 2'b 01 ? dcd : 
	alu_ctl[7:6] == 2'b 10 ? kreg : 
	alu_ctl[7:6] == 2'b 11 ? kreg : 
	XES; 
//  decode ALU_CTL(10 downto 8) - 3 to 8 line decoder
assign log_b = alu_ctl[11] == 1'b 1 ? ~log_b_preinv : 
	log_b_preinv; 
assign dcd[0] = alu_ctl[10:8] == 3'b 000 ? 1'b 1 : 
	1'b 0; 
assign dcd[1] = alu_ctl[10:8] == 3'b 001 ? 1'b 1 : 
	1'b 0; 
assign dcd[2] = alu_ctl[10:8] == 3'b 010 ? 1'b 1 : 
	1'b 0; 
assign dcd[3] = alu_ctl[10:8] == 3'b 011 ? 1'b 1 : 
	1'b 0; 
assign dcd[4] = alu_ctl[10:8] == 3'b 100 ? 1'b 1 : 
	1'b 0; 
assign dcd[5] = alu_ctl[10:8] == 3'b 101 ? 1'b 1 : 
	1'b 0; 
assign dcd[6] = alu_ctl[10:8] == 3'b 110 ? 1'b 1 : 
	1'b 0; 
assign dcd[7] = alu_ctl[10:8] == 3'b 111 ? 1'b 1 : 
	1'b 0; 
assign alu2op = {{{{{n_flag , v_flag} , add_cout} , bra_carry} , z_flag} , alu_cout}; 
assign bcd_en = alu_ctl[3]; 
//  enable BCD adjust when enabled and D bit is set.
//  bit 7 is the sign of the
//  if we are adding a positive offset, then we need to add 1,
//  a negative offset we need to subtract one (or add FF in this case).
assign sign_ext = {{{{{{{kreg[7] , kreg[7]} , kreg[7]} , kreg[7]} , kreg[7]} , kreg[7]} , kreg[7]} , 1'b 1}; 
//  relative branch.
assign z_flag = alu_outl == 8'b 00000000 ? 1'b 1 : 
	1'b 0; 
//  Zero flag
assign n_flag = alu_outl[7]; 
//  N flag
//  V_flag is active when there is a signed add or subtract overflow
//  only valid for binary arithmetic.
assign v_flag = (~alu_ctl[0] ^ jreg[7] ^ kreg[7]) & (add_out[7] ^ jreg[7]); 
assign add_sub = alu_ctl[0]; 
//  subtract when bit(0) = 1.
assign log_cin = add_cin; 
//  adder and logic carry in are the same
assign log_ctl = alu_ctl[2:0]; 
//  control bits to the logic unit.
assign add_cin = alu_ctl[4]; 
//  carry in
//  combine the adder and logic couts
//  branch relative carry. This signal is active when a relative branch is made
//  to another page. Kreg(7) is the sign of the relative branch and obviously
//  inverts the polarity of the carry. Jreg=0xff inverts it again since we
//  have to add 1 to the branch since we load PCL into J before we have 
//  incremented past IAL.
assign alu_cout = alu_ctl[2:1] == 2'b 00 ? bcd_cout : 
	log_cout; 
assign bra_carry = add_cout ^ kreg[7] ^ jreg[7] & jreg[6] & jreg[5] & jreg[4] & jreg[3] & jreg[2] & jreg[1] & jreg[0]; 

endmodule // module m6502alu

