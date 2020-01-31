// top level of the 6502 synthesizable model
//
// 
//  Signals ending in _n are active low.
// 
`timescale 1 ns / 1 ns // timescale for following modules

module m6502_org (clk,
   addr,
   dataenb,
   datai,
   datao,
   irq_n,
   nmi_n,
   sob_n,
   res_n,
   rdy,
   vpa,
   sync,
   we_n

   );
//  Type definitions for Text I/O

// TYPE SIDE:
parameter LEFT = 0;
parameter RIGHT = 1;

input   clk; //  we use the IEEE standard 1164 logic types. everything clocks on rising edge

output  [15:0] addr; //  address bus out

output  dataenb; //  enable databus tristate drivers

input   [7:0] datai; //  data bus in

output  [7:0] datao; //  data bus out

input   irq_n; //  interrupt request

input   nmi_n; //  Non-makable interrupt request

input   sob_n; //  Set Overflow bit

input   res_n; //  reset

input   rdy; //  ready 

output  vpa; //  Vector Pull Address

output  sync; //  indicates an opcode fetch

output  we_n; //  1=read,0=write

wire    [15:0] addr; 
wire    dataenb; 
wire    [7:0] datao; 
wire    vpa; 
//  The following pins are not meant to be connected to.
//  They are provided here for easy debugging and synthesis.
//  Primarily, having them as ports insures that the signal names
//  will not be optimized away or have various strings prepended to them.
wire    sync; 
wire    we_n; 
wire    [7:0] areg; 
wire    [7:0] sreg; 
wire    [7:0] xreg; 
wire    [7:0] yreg; 
wire    [7:0] pch; 
wire    [7:0] pcl; 
wire    [7:0] alu_out; 
//  Flags register
wire    [7:0] dreg; 
wire    [7:0] psr; 
wire    [7:0] addrh; //  output of adh mux, hi byte of address
wire    [7:0] addrl; //  output of adl mux, low byte of address
wire    [7:0] dataol; //  output of domux, local copy of datao
wire    [7:0] xregl; //  xreg output 
wire    [7:0] yregl; //  yreg output 
wire    [7:0] sregl; //  sreg output 
wire    [7:0] aregl; //  areg output 
wire    [7:0] dregl; //  dreg output 
wire    [7:0] alu_outl; //  alu output 
wire    [7:0] pchl; //  program counter high 
wire    [7:0] pcll; //  program counter low 
wire    [7:0] psrl; //  flags
wire    [11:0] alu_ctl; //  alu control
wire    [5:0] alu2op; //  alu status
wire    [2:0] alu_ld; //  alu register load
//  0=a from datao,1=d from datai,2=d from datao,3=s,4=x,5=y,6=l
wire    [6:0] rg_load; //  register load enables
wire    sreg_up; //  direction for sreg counter
wire    sreg_cen; //  sreg counter count enable
wire    [6:0] pc_ctl; //  Program counter control
wire    [1:0] adl_sel; //  adl out mux select lines
wire    [3:0] adh_sel; //  adh out mux select lines
wire    [2:0] domux_sel; //  data out mux select lines
wire    reset; //  active high synchronized reset
wire    [7:0] opcde; //  current opcode
// --------------------------------------------------------------------
wire    [8:1] cycle; //  current state
// ------------------Architecture synth-----------
assign areg = aregl; 
//  drive the local versions of the signals out the ports
assign xreg = xregl; 
//  drive the local versions of the signals out the ports
assign yreg = yregl; 
//  drive the local versions of the signals out the ports
assign sreg = sregl; 
//  drive the local versions of the signals out the ports
assign dreg = dregl; 
//  drive the local versions of the signals out the ports
assign pch = pchl; 
//  drive the local versions of the signals out the ports
assign pcl = pcll; 
//  drive the local versions of the signals out the ports
assign psr = psrl; 
//  drive the local versions of the signals out the ports
assign alu_out = alu_outl; 
//  drive the local versions of the signals out the ports
assign datao = dataol; 
//  drive the local version out the port
// ------------Instantiate the opcode decode machine---------
assign addr = {addrh , addrl}; 
//  drive the local version out the port
op_dcd sm (.clk(clk),
          .datai(datai),
          .irq_n(irq_n),
          .nmi_n(nmi_n),
          .res_n(res_n),
          .rdy(rdy),
          .sob_n(sob_n),
          .sync(sync),
          .vpa(vpa),
          //  internal control signals
.we_n(we_n),
          .dataenb(dataenb),
          .alu_ctl(alu_ctl),
          .alu_ld(alu_ld),
          .sreg_up(sreg_up),
          .sreg_cen(sreg_cen),
          .prog_ctl(pc_ctl),
          .reset(reset),
          .rg_load(rg_load),
          .adl_sel(adl_sel),
          .adh_sel(adh_sel),
          .domux_sel(domux_sel),
          .alu2op(alu2op),
          .psr(psrl),
          .opcde(opcde),
          // ----------Instantiate the ALU here-------------------------
.cycle(cycle));
m6502alu alu (.clk(clk),
          .datai(datai),
          .datao(dataol),
          .alu_ctl(alu_ctl),
          .alu_ld(alu_ld),
          .alu2op(alu2op),
          // ----------Instantiate the Accumulator here-------------------
.alu_out(alu_outl));
rg8l arg (.di(dataol),
          .ld(rg_load[0]),
          .do(aregl),
          // ----------Instantiate the D register here-------------------
.clk(clk));
rg8l2 drg (.dia(datai),
          .dib(dataol),
          .lda(rg_load[1]),
          .ldb(rg_load[2]),
          .do(dregl),
          // ----------Instantiate the S register here-------------------
.clk(clk));
s_reg srg (.datai(dataol),
          .datao(sregl),
          .load(rg_load[3]),
          .up(sreg_up),
          .cnt_enb(sreg_cen),
          .reset(reset),
          // ----------Instantiate the X register here-------------------
.clk(clk));
rg8l xrg (.di(dataol),
          .ld(rg_load[4]),
          .do(xregl),
          // ----------Instantiate the Y register here-------------------
.clk(clk));
rg8l yrg (.di(dataol),
          .ld(rg_load[5]),
          .do(yregl),
          // ----------Instantiate the Program Counter here--------------
.clk(clk));
prog_cnt pc (.clk(clk),
          .reset(reset),
          .alu(alu_outl),
          .cntoh(pchl),
          .cntol(pcll),
          .datai(datai),
          .datao(dataol),
          // ---------Instantiate the data out mux here------------------
.prog_ctl(pc_ctl));
mx81_8 domx (//  the a input needs to be fast
.a(alu_outl),
          //  since it is not directly from a register.
.b(aregl),
          //  add arrival time when synthesizing.
.c(psrl),
          .d(sregl),
          .e(xregl),
          .f(yregl),
          .g(pchl),
          .h(pcll),
          .s(domux_sel),
          // --------Instantiate the low address mux here---------------
.y(dataol));
adl_mux adlmx (.alu(alu_outl),
          .pcl(pcll),
          .dreg(dregl),
          .sreg(sregl),
          .clk(clk),
          .lreg_ld(rg_load[6]),
          .sel(adl_sel),
          // ---------Instantiate the high address mux here-------------
.y(addrl));
adh_mux adhmx (.alu(alu_outl),
          .pch(pchl),
          .dreg(dregl),
          .sel(adh_sel),
          .y(addrh));

endmodule // module m6502_org

