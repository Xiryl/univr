// 16 bit program counter for the m6502
//
//  Description:
//  	This is the 16 bit program counter for the m6502.
// 	This is basically a 16 bit up counter.
// 	There is an 8 bit register that is used to hold the low half of the PC 
// 	when loading a new value during a JMP instruction.
// 	The reset and interrupt vectors are also applied here.
// 
//  Signals ending in _n are active low.
//
// --------------------------------------------------------------------------------    
`timescale 1 ns / 1 ns // timescale for following modules

module prog_cnt (clk,
   reset,
   alu,
   cntoh,
   cntol,
   datai,
   datao,
   prog_ctl);
input   clk; //  we use the IEEE standard 1164 logic types. + and - operators

input   reset; //  active high reset

input   [7:0] alu; //  output of alu

output  [7:0] cntoh; //  high counter out

output  [7:0] cntol; //  low counter out

input   [7:0] datai; //  data in bus in

input   [7:0] datao; //  data out bus in

input   [6:0] prog_ctl; //  Control signals

parameter RST_vec_hi = 8'b 11111111; //  reset vector = fffc
parameter NMI_vec_lo = 8'b 11111010; 
parameter RST_vec_lo = 8'b 11111100; 
//  be sure to include the following synopsys command in your synthesis script
//  compile_preserve_sync_resets="true"
parameter IRQ_vec_lo = 8'b 11111110; 
wire    [7:0] cntoh; 
wire    [7:0] cntol; 
//  0=cnt_enb,1=load H, 2=load PC, 3=sel_datai, 4=load PCL with alu
//  6:5-00=no change,01=NMI vector, 10=reset vector,11=IRQ vector
wire    [7:0] cntih; //  counter data in high
wire    [7:0] cntil; //  counter data in low
reg     [7:0] hreg; //  H register output
wire    [7:0] hreg_in; //  H register input
reg     [15:0] pc; //  program counter
// ---------------Architecture synth-----------
assign cntoh = pc[15:8]; 
//  drive the port
assign cntol = pc[7:0]; 
//  drive the port
assign hreg_in = prog_ctl[3] == 1'b 1 ? datai : 
	alu; 
//  mux either the datai or datao ports
//  mux in reset vector
//  mux in NMI vector
//  mux in IRQ vector
//  shortcut relative branches
assign cntil = prog_ctl[6:5] == 2'b 10 ? RST_vec_lo : 
	prog_ctl[6:5] == 2'b 01 ? NMI_vec_lo : 
	prog_ctl[6:5] == 2'b 11 ? IRQ_vec_lo : 
	prog_ctl[4] == 1'b 1 ? alu : 
	hreg; 
//  mux in reset
//  mux either the datai or datao ports
assign cntih = prog_ctl[6:5] != 2'b 00 ? RST_vec_hi : 
	prog_ctl[3] == 1'b 1 ? datai : 
	datao; 
always @(posedge clk)
   begin : counter
   if (reset == 1'b 1)
      begin
      pc <= {RST_vec_hi , RST_vec_lo};
      end
   else if (prog_ctl[2] == 1'b 1 | prog_ctl[4] == 1'b 1 )
      begin
      pc <= {cntih , cntil};
      end
   else if (prog_ctl[0] == 1'b 1 )
      begin
      pc <= pc + 1;
      end
   else
      begin
      pc <= pc;
      end
   if (reset == 1'b 1)
//  create the H register which holds
      begin
      hreg <= RST_vec_lo;
//  the new low half of the PC while
      end
   else if (prog_ctl[1] == 1'b 1 )
//  we're fetching the high half.
      begin
      hreg <= hreg_in;
      end
   else
      begin
      hreg <= hreg;
      end
   end

endmodule // module prog_cnt

