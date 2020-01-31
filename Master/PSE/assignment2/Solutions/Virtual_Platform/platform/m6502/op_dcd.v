// opcode decode state machine of the 6502 synthesizable model
//
//  Description:
//  	This is the opcode decode state machine of the 6502 synthesizable model.
// 
// 
// 
//  Signals ending in _n are active low.
// 
//
`timescale 1 ns / 1 ns // timescale for following modules
module op_dcd (clk,
   datai,
   irq_n,
   nmi_n,
   res_n,
   rdy,
   sob_n,
   sync,
   vpa,
   we_n,
   dataenb,
   alu_ctl,
   alu_ld,
   sreg_up,
   sreg_cen,
   prog_ctl,
   reset,
   rg_load,
   adl_sel,
   adh_sel,
   domux_sel,
   alu2op,
   psr,
   opcde,
   cycle);
input   clk; //  we use the IEEE standard 1164 logic types. everything clocks on rising edge

input   [7:0] datai; //  data bus in

input   irq_n; //  interrupt request (level sensitive)

input   nmi_n; //  Non-makable interrupt request (edge sens)

input   res_n; //  reset

input   rdy; //  ready 

input   sob_n; //  Set overflow bit

output  sync; //  indicates an opcode fetch

output  vpa; //  Vector Pull Address

output  we_n; //  1=read,0=write

output  dataenb; //  enable data bus drivers

output  [11:0] alu_ctl; //  ALU control (pipelined)

output  [2:0] alu_ld; //  ALU register loads

output  sreg_up; //  sreg count up/down_n

output  sreg_cen; //  sreg count enable

output  [6:0] prog_ctl; //  Program counter control

output  reset; //  synchronized active high

output  [6:0] rg_load; //  register loads

output  [1:0] adl_sel; //  adl mux select

output  [3:0] adh_sel; //  adh mux select

output  [2:0] domux_sel; //  datao mux select

input   [5:0] alu2op; //  ALU status to OP_DCD

output  [7:0] psr; //  Flags register

output  [7:0] opcde; //  current opcode

output  [8:1] cycle; //  current state vector

parameter BRK = 8'b 00000000; 
parameter ORAINX = 8'b 00000001; 
parameter TSBZPG = 8'b 00000100; 
parameter ORAZPG = 8'b 00000101; 
parameter ASLZPG = 8'b 00000110; 
parameter RMB0 = 8'b 00000111; 
parameter BBR0 = 8'b 00001111; 
parameter PHP = 8'b 00001000; 
parameter ORAIMM = 8'b 00001001; 
parameter ASLACC = 8'b 00001010; 
parameter TSBABS = 8'b 00001100; 
parameter ORAABS = 8'b 00001101; 
parameter ASLABS = 8'b 00001110; 
parameter BPL = 8'b 00010000; 
parameter ORAINY = 8'b 00010001; 
parameter ORAIND = 8'b 00010010; 
parameter TRBZPG = 8'b 00010100; 
parameter ORAZPX = 8'b 00010101; 
parameter ASLZPX = 8'b 00010110; 
parameter RMB1 = 8'b 00010111; 
parameter CLC = 8'b 00011000; 
parameter ORAABY = 8'b 00011001; 
parameter INCA = 8'b 00011010; 
parameter TRBABS = 8'b 00011100; 
parameter ORAABX = 8'b 00011101; 
parameter ASLABX = 8'b 00011110; 
parameter JSR = 8'b 00100000; 
parameter BITZPG = 8'b 00100100; 
parameter ROLZPG = 8'b 00100110; 
parameter RMB2 = 8'b 00100111; 
parameter PLP = 8'b 00101000; 
parameter ANDIMM = 8'b 00101001; 
parameter ROLACC = 8'b 00101010; 
parameter BITABS = 8'b 00101100; 
parameter BMI = 8'b 00110000; 
parameter BITZPX = 8'b 00110100; 
parameter ANDIND = 8'b 00110010; 
parameter RMB3 = 8'b 00110111; 
parameter SEC = 8'b 00111000; 
parameter DECA = 8'b 00111010; 
parameter BITABX = 8'b 00111100; 
parameter RTI = 8'b 01000000; 
parameter LSRZPG = 8'b 01000110; 
parameter RMB4 = 8'b 01000111; 
parameter LSRACC = 8'b 01001010; 
parameter PHA = 8'b 01001000; 
parameter EORIMM = 8'b 01001001; 
parameter JMP = 8'b 01001100; 
parameter BVC = 8'b 01010000; 
parameter EORIND = 8'b 01010010; 
parameter RMB5 = 8'b 01010111; 
parameter CLI = 8'b 01011000; 
parameter PHY = 8'b 01011010; 
parameter RTS = 8'b 01100000; 
parameter ADCINX = 8'b 01100001; 
parameter STZZPG = 8'b 01100100; 
parameter ADCZPG = 8'b 01100101; 
parameter RORZPG = 8'b 01100110; 
parameter RMB6 = 8'b 01100111; 
parameter RORACC = 8'b 01101010; 
parameter JMPIND = 8'b 01101100; 
parameter PLA = 8'b 01101000; 
parameter ADCIMM = 8'b 01101001; 
parameter BVS = 8'b 01110000; 
parameter ADCINY = 8'b 01110001; 
parameter ADCIND = 8'b 01110010; 
parameter STZZPX = 8'b 01110100; 
parameter RMB7 = 8'b 01110111; 
parameter SEI = 8'b 01111000; 
parameter PLY = 8'b 01111010; 
parameter JMPAIX = 8'b 01111100; 
parameter BRA = 8'b 10000000; 
parameter STAINX = 8'b 10000001; 
parameter STYZPG = 8'b 10000100; 
parameter STAZPG = 8'b 10000101; 
parameter STXZPG = 8'b 10000110; 
parameter SMB0 = 8'b 10000111; 
parameter DEY = 8'b 10001000; 
parameter BITIMM = 8'b 10001001; 
parameter TXA = 8'b 10001010; 
parameter STYABS = 8'b 10001100; 
parameter STAABS = 8'b 10001101; 
parameter STXABS = 8'b 10001110; 
parameter BCC = 8'b 10010000; 
parameter STAINY = 8'b 10010001; 
parameter STAIND = 8'b 10010010; 
parameter STYZPX = 8'b 10010100; 
parameter STAZPX = 8'b 10010101; 
parameter STXZPY = 8'b 10010110; 
parameter SMB1 = 8'b 10010111; 
parameter TYA = 8'b 10011000; 
parameter STAABY = 8'b 10011001; 
parameter TXS = 8'b 10011010; 
parameter STZABS = 8'b 10011100; 
parameter STAABX = 8'b 10011101; 
parameter STZABX = 8'b 10011110; 
parameter LDYIMM = 8'b 10100000; 
parameter LDXIMM = 8'b 10100010; 
parameter LDYZPG = 8'b 10100100; 
parameter LDXZPG = 8'b 10100110; 
parameter SMB2 = 8'b 10100111; 
parameter TAY = 8'b 10101000; 
parameter LDAIMM = 8'b 10101001; 
parameter TAX = 8'b 10101010; 
parameter LDYABS = 8'b 10101100; 
parameter LDXABS = 8'b 10101110; 
parameter BCS = 8'b 10110000; 
parameter LDAIND = 8'b 10110010; 
parameter LDYZPX = 8'b 10110100; 
parameter LDXZPY = 8'b 10110110; 
parameter SMB3 = 8'b 10110111; 
parameter CLV = 8'b 10111000; 
parameter TSX = 8'b 10111010; 
parameter LDYABX = 8'b 10111100; 
parameter LDXABY = 8'b 10111110; 
parameter CPYIMM = 8'b 11000000; 
parameter CPYZPG = 8'b 11000100; 
parameter DECZPG = 8'b 11000110; 
parameter SMB4 = 8'b 11000111; 
parameter INY = 8'b 11001000; 
parameter CMPIMM = 8'b 11001001; 
parameter DEX = 8'b 11001010; 
parameter CPYABS = 8'b 11001100; 
parameter DECABS = 8'b 11001110; 
parameter BNE = 8'b 11010000; 
parameter CMPIND = 8'b 11010010; 
parameter DECZPX = 8'b 11010110; 
parameter SMB5 = 8'b 11010111; 
parameter CLD = 8'b 11011000; 
parameter PHX = 8'b 11011010; 
parameter DECABX = 8'b 11011110; 
parameter CPXIMM = 8'b 11100000; 
parameter CPXZPG = 8'b 11100100; 
parameter INCZPG = 8'b 11100110; 
parameter SMB6 = 8'b 11100111; 
parameter CPXABS = 8'b 11101100; 
parameter INX = 8'b 11101000; 
parameter SBCIMM = 8'b 11101001; 
parameter NOP = 8'b 11101010; 
parameter INCABS = 8'b 11101110; 
parameter BEQ = 8'b 11110000; 
parameter SBCIND = 8'b 11110010; 
parameter INCZPX = 8'b 11110110; 
parameter SMB7 = 8'b 11110111; 
parameter SED = 8'b 11111000; 
parameter PLX = 8'b 11111010; 
// --------------------------------------------------------------------
parameter INCABX = 8'b 11111110; 
wire    sync; 
//  internal control signals
wire    vpa; 
wire    we_n; 
wire    dataenb; 
reg     [11:0] alu_ctl; 
wire    [2:0] alu_ld; 
wire    sreg_up; 
wire    sreg_cen; 
wire    [6:0] prog_ctl; 
wire    reset; 
wire    [6:0] rg_load; 
wire    [1:0] adl_sel; 
wire    [3:0] adh_sel; 
wire    [2:0] domux_sel; 
//  debugging signals
wire    [7:0] psr; 
wire    [7:0] opcde; 
wire    [8:1] cycle; 
wire    [7:0] opcode; //  current opcode 
wire    [7:0] opcode_in; //  next opcode 
wire    opcode_ld; //  opcode register load control
wire    [8:1] state; //  current state vector
wire    [8:1] state_in; //  next state vector
wire    syncl; //  local copy
reg     wel_n; //  local copy
wire    we_d_n; //  D input to WE_N flop
wire    pc_load; //  load the entire PC
wire    pc_h_load; //  load the H register
wire    pc_cen; //  increment the PC
wire    pc_sel_datai; //  select datai to load PC else datao
wire    [1:0] pc_vec_sel; //  select an interrupt vector to load PC
wire    pcl_alu_ld; //  load PCL from ALU
reg     [7:0] psrl; //  local copy
reg     sob_n_f; //  flopped version
wire    aregd_load; //  load A from datao
wire    dregi_load; //  load D from datai
wire    drego_load; //  load D from datao
wire    sreg_load; //  load S from datao
wire    xreg_load; //  load X from datao
wire    yreg_load; //  load Y from datao
wire    lreg_load; //  load L from ALU
wire    jregi_load; //  load J from datai
wire    jrego_load; //  load J from datao
wire    kregi_load; //  load K from datai
reg     z_flag_f; //  Flopped version of the Z flag from the ALU
reg     branch_carry_f; //  Flopped version
wire    adh_alu; //  adh_sel(3)
wire    adh_dreg; //  adh_sel(2)
wire    adh_zpg; //  adh_sel(1)
wire    adh_onepg; //  adh_sel(0)
wire    [2:0] domux_001; 
wire    [2:0] domux_010; 
wire    [2:0] domux_011; 
wire    [2:0] domux_100; 
wire    [2:0] domux_101; 
wire    [2:0] domux_110; 
wire    [2:0] domux_111; 
//  be sure to include the following synopsys command in your synthesis script
//  compile_preserve_sync_resets="true"
reg     resetl; //  synchronized, active high version of res_n
wire    interrupt; //  interrupt processing in progress
reg     reset_proc; //  rst interrupt processing in progress
reg     nmi_proc; //  nmi interrupt processing in progress
reg     irq_proc; //  irq interrupt processing in progress
reg     irq; //  flopped and inverted irq_n
wire    irq_pend; //  irq interrupt pending
reg     nmi_pend; //  NMI interrupt pending
reg     nmi1; //  NMI interrupt flopped 1
reg     nmi2; //  NMI interrupt flopped 2
reg     addr_carry; //  address carry
wire    imp2psr; //  implied addressing 2 cycle PSR update
wire    imp2tx; //  implied addressing 2 cycle reg transfer
wire    imp2inc; //  implied addressing 2 cycle reg INC/DEC
wire    imm_1_addr; //  immediate addressing
wire    rel_addr; //  relative addressing (branching)
wire    zpg_1_addr; //  zero page addressing
wire    zpx_1_addr; //  zero page indirect x addressing
wire    abs_1_addr; //  absolute addressing
wire    abx_1_addr; //  absolute X addressing
wire    aby_1_addr; //  absolute Y addressing
wire    inx_1_addr; //  indexed X addressing
wire    iny_1_addr; //  indirect Y addressing
wire    ind_1_addr; //  indirect addressing
wire    imm_3_addr; //  immediate addressing
wire    zpg_3_addr; //  zero page addressing
wire    zpx_3_addr; //  zero page indirect x addressing
wire    abs_3_addr; //  absolute addressing
wire    abx_3_addr; //  absolute X addressing
wire    acc_addr; //  accumulator addressing
wire    zpg_rmw_addr; //  zero page read/mod/write addressing
wire    zpx_rmw_addr; //  zero page X r/m/w addressing
wire    abs_rmw_addr; //  Absolute r/m/w addressing
wire    abx_rmw_addr; //  Absolute X r/m/w addressing
wire    type1_read; //  TYPE1 opcode data read
reg     type1_calc; //  TYPE1 opcode calculation in progress
wire    type2_read; //  read part of r/m/w
reg     type2_calc; //  modify part of r/m/w
reg     type2_write; //  write part of r/m/w
reg     type2_done; //  the cycle after write part of r/m/w
wire    type3_read; //  read part of type 3 opcodes
reg     type3_calc; //  calculation part of type 3s.
wire    branch_take; //  take the branch when 1
wire    adc_op; //  ADC opcode 
wire    lda_op; //  LDA opcode 
wire    cmp_op; //  CMP opcode 
wire    cpx_op; //  CPX opcode 
wire    cpy_op; //  CPY opcode 
wire    ora_op; //  ORA opcode 
wire    and_op; //  AND opcode 
wire    eor_op; //  EOR opcode 
wire    sta_op; //  STA opcode 
wire    sbc_op; //  SBC opcode 
wire    asl_op; //  ASL opcode 
wire    lsr_op; //  LSR opcode 
wire    rol_op; //  ROL opcode 
wire    ror_op; //  ROR opcode 
wire    inc_op; //  INC opcode 
wire    dec_op; //  DEC opcode 
wire    ldx_op; //  LDX opcode 
wire    ldy_op; //  LDY opcode 
wire    stx_op; //  STX opcode 
wire    sty_op; //  STY opcode 
wire    bit_op; //  BIT opcode 
wire    rmb_op; //  RMBx opcode 
wire    smb_op; //  SMBx opcode 
wire    bbx_op; //  BBRx or BBSx opcodes
wire    stz_op; //  STZ opcode 
wire    trb_op; //  TRB opcode 
wire    tsb_op; //  TSB opcode 
wire    [11:0] alu_ctl_d; //  d input to flops
wire    [1:0] alu_ctl_bsel; //  part of alu_ctl
wire    alu_ctl_carry; //  part of alu_ctl
wire    alu_ctl_bcd; //  part of alu_ctl
wire    [2:0] alu_ctl_mode; //  part of alu_ctl
wire    log_b_inv; //  part of alu_ctl
// -----------------Architecture synth-----------
assign psr = psrl; 
//  drive local copy out
//  to insure that WE_N is glitch-free, we compute it a cycle early and flop it.
assign sync = syncl; 
//  drive local copy out
// push P & PC on interrupt
//  push opcodes
//  Push PC
//  STA
//  STA
//  STA
//  STA
//  STA
//  STA
//  STA
//  STA
//  STX
//  STX
//  STX
//  STY
//  STY
//  STY
//  STZ
//  STZ
//  STZ
//  STZ
//  write part of RMW
assign we_d_n = opcode == BRK & reset_proc == 1'b 0 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1 | state[3] == 1'b 1) | 
		(opcode == PHA | opcode == PHP | 
		opcode == PHX | opcode == PHY) & 
		state[1] == 1'b 1 | opcode == JSR & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) | opcode == STAZPG & 
		state[1] == 1'b 1 | opcode == STAZPX & 
		state[2] == 1'b 1 | opcode == STAABS & 
		state[2] == 1'b 1 | opcode == STAABX & 
		state[2] == 1'b 1 | opcode == STAABY & 
		state[2] == 1'b 1 | opcode == STAIND & 
		state[3] == 1'b 1 | opcode == STAINX & 
		state[4] == 1'b 1 | opcode == STAINY & 
		state[3] == 1'b 1 | opcode == STXZPG & 
		state[1] == 1'b 1 | opcode == STXZPY & 
		state[2] == 1'b 1 | opcode == STXABS & 
		state[2] == 1'b 1 | opcode == STYZPG & 
		state[1] == 1'b 1 | opcode == STYZPX & 
		state[2] == 1'b 1 | opcode == STYABS & 
		state[2] == 1'b 1 | opcode == STZZPG & 
		state[1] == 1'b 1 | opcode == STZZPX & 
		state[2] == 1'b 1 | opcode == STZABS & 
		state[2] == 1'b 1 | opcode == STZABX & 
		state[3] == 1'b 1 | type2_calc == 1'b 1 ? 1'b 0 : 
	1'b 1; 
//  active low
assign we_n = wel_n; 
//  drive local signal out
assign dataenb = ~wel_n; 
//  enable tristate drivers on a write.
// -------------------Create the Processor Status Register (PSR)-------------
//  PSR = NVEBDIZC
assign reset = resetl; 
//  drive the port
always @(posedge clk)
   begin : elr
   if (resetl == 1'b 1)
//  N bit
      begin
      psrl[7] <= 1'b 0;
      end
   else
      begin
      if (rdy == 1'b 1 & (
		(opcode == PLP | opcode == RTI) & 
		state[2] == 1'b 1 | type3_read == 1'b 1 & 
		bit_op == 1'b 1))
//  BIT
         begin
         psrl[7] <= datai[7];
         end
      else if (rdy == 1'b 1 & (type1_calc == 1'b 1 & 
		(adc_op == 1'b 1 | sbc_op == 1'b 1 | 
		asl_op == 1'b 1 | lsr_op == 1'b 1 | 
		ror_op == 1'b 1 | rol_op == 1'b 1 | 
		cmp_op == 1'b 1 | eor_op == 1'b 1 | 
		and_op == 1'b 1 | ora_op == 1'b 1 | 
		lda_op == 1'b 1) | type3_calc == 1'b 1 & 
		(cpx_op == 1'b 1 | cpy_op == 1'b 1 | 
		ldx_op == 1'b 1 | ldy_op == 1'b 1) | 
		type2_write == 1'b 1 & (asl_op == 1'b 1 | 
		lsr_op == 1'b 1 | ror_op == 1'b 1 | 
		rol_op == 1'b 1 | dec_op == 1'b 1 | 
		inc_op == 1'b 1) | state[2] == 1'b 1 & (imp2inc == 1'b 1 | 
		imp2tx == 1'b 1 & ~(opcode == 
		TXS)) | state[3] == 1'b 1 & (opcode == PLA | 
		opcode == PLX | opcode == PLY)) )
//  PLA
         begin
         psrl[7] <= alu2op[5];
         end
      else
         begin
         psrl[7] <= psrl[7];
         end
      end
   if (resetl == 1'b 1)
//  V bit
      begin
      psrl[6] <= 1'b 0;
      end
   else
      begin
      if (sob_n == 1'b 0 & sob_n_f == 1'b 1)
//  set on falling edge
         begin
         psrl[6] <= 1'b 1;
         end
      else if (rdy == 1'b 1 & (
		(opcode == PLP | opcode == RTI) & 
		state[2] == 1'b 1 | type3_read == 1'b 1 & 
		bit_op == 1'b 1) )
//  BIT
         begin
         psrl[6] <= datai[6];
         end
      else if (rdy == 1'b 1 & opcode == CLV & 
		state[2] == 1'b 1 )
         begin
         psrl[6] <= 1'b 0;
         end
      else if (rdy == 1'b 1 & type1_calc == 1'b 1 & 
		(adc_op == 1'b 1 | sbc_op == 1'b 1) )
         begin
         psrl[6] <= alu2op[4];
         end
      else
         begin
         psrl[6] <= psrl[6];
         end
      end
   if (resetl == 1'b 1)
//  E bit
      begin
      psrl[5] <= 1'b 0;
      end
   else
      begin
      if (rdy == 1'b 1 & (opcode == PLP | 
		opcode == RTI) & state[2] == 1'b 1)
         begin
         psrl[5] <= datai[5];
         end
      else
         begin
         psrl[5] <= psrl[5];
         end
      end
   if (resetl == 1'b 1)
//  B bit
      begin
      psrl[4] <= 1'b 0;
      end
   else
      begin
      if (rdy == 1'b 1 & opcode == RTI & 
		state[2] == 1'b 1)
         begin
         psrl[4] <= 1'b 0;
         end
      else if (rdy == 1'b 1 & opcode == PLP & 
		state[2] == 1'b 1 )
         begin
         psrl[4] <= datai[4];
         end
      else if (rdy == 1'b 1 & opcode == BRK & 
		state[1] == 1'b 1 & interrupt == 1'b 0 )
         begin
         psrl[4] <= 1'b 1;
         end
      else
         begin
         psrl[4] <= psrl[4];
         end
      end
   if (resetl == 1'b 1)
//  D bit
      begin
      psrl[3] <= 1'b 0;
      end
   else
      begin
      if (rdy == 1'b 1 & (opcode == PLP | 
		opcode == RTI) & state[2] == 1'b 1)
         begin
         psrl[3] <= datai[3];
         end
      else if (rdy == 1'b 1 & opcode == CLD & 
		state[2] == 1'b 1 )
         begin
         psrl[3] <= 1'b 0;
         end
      else if (rdy == 1'b 1 & opcode == SED & 
		state[2] == 1'b 1 )
         begin
         psrl[3] <= 1'b 1;
         end
      else
         begin
         psrl[3] <= psrl[3];
         end
      end
   if (resetl == 1'b 1)
//  I bit
      begin
      psrl[2] <= 1'b 1;
      end
   else
      begin
      if (rdy == 1'b 1 & (opcode == PLP | 
		opcode == RTI) & state[2] == 1'b 1)
         begin
         psrl[2] <= datai[2];
         end
      else if (rdy == 1'b 1 & (state[5] == 1'b 1 & opcode == BRK | 
		opcode == SEI & state[2] == 1'b 1) )
         begin
         psrl[2] <= 1'b 1;
         end
      else if (rdy == 1'b 1 & opcode == CLI & 
		state[2] == 1'b 1 )
         begin
         psrl[2] <= 1'b 0;
         end
      else
         begin
         psrl[2] <= psrl[2];
         end
      end
   if (resetl == 1'b 1)
//  Z bit
      begin
      psrl[1] <= 1'b 0;
      end
   else
      begin
      if (rdy == 1'b 1 & (opcode == PLP | 
		opcode == RTI) & state[2] == 1'b 1)
         begin
         psrl[1] <= datai[1];
         end
      else if (rdy == 1'b 1 & (type1_calc == 1'b 1 & 
		(adc_op == 1'b 1 | sbc_op == 1'b 1 | 
		asl_op == 1'b 1 | lsr_op == 1'b 1 | 
		ror_op == 1'b 1 | rol_op == 1'b 1 | 
		cmp_op == 1'b 1 | eor_op == 1'b 1 | 
		and_op == 1'b 1 | ora_op == 1'b 1 | 
		lda_op == 1'b 1) | type3_calc == 1'b 1 & 
		(cpx_op == 1'b 1 | cpy_op == 1'b 1 | 
		ldx_op == 1'b 1 | ldy_op == 1'b 1) | 
		type2_write == 1'b 1 & (asl_op == 1'b 1 | 
		lsr_op == 1'b 1 | ror_op == 1'b 1 | 
		rol_op == 1'b 1 | dec_op == 1'b 1 | 
		inc_op == 1'b 1) | state[2] == 1'b 1 & (imp2inc == 1'b 1 | 
		imp2tx == 1'b 1 & ~(opcode == 
		TXS)) | type3_calc == 1'b 1 & bit_op == 
		1'b 1 | type2_done == 1'b 1 & (tsb_op == 
		1'b 1 | trb_op == 1'b 1) | state[3] == 1'b 1 & (opcode == PLA | 
		opcode == PLX | opcode == PLY)) )
//  PLA
         begin
         psrl[1] <= alu2op[1];
         end
      else
         begin
         psrl[1] <= psrl[1];
         end
      end
   if (resetl == 1'b 1)
//  C bit
      begin
      psrl[0] <= 1'b 0;
      end
   else
      begin
      if (rdy == 1'b 1 & opcode == CLC & 
		state[2] == 1'b 1)
         begin
         psrl[0] <= 1'b 0;
         end
      else if (rdy == 1'b 1 & opcode == SEC & 
		state[2] == 1'b 1 )
         begin
         psrl[0] <= 1'b 1;
         end
      else if (rdy == 1'b 1 & (opcode == PLP | 
		opcode == RTI) & state[2] == 1'b 1 )
         begin
         psrl[0] <= datai[0];
         end
      else if (rdy == 1'b 1 & (type1_calc == 1'b 1 & 
		(adc_op == 1'b 1 | sbc_op == 1'b 1 | 
		asl_op == 1'b 1 | lsr_op == 1'b 1 | 
		ror_op == 1'b 1 | rol_op == 1'b 1 | 
		cmp_op == 1'b 1) | type3_calc == 1'b 1 & 
		(cpx_op == 1'b 1 | cpy_op == 1'b 1) | 
		type2_write == 1'b 1 & (asl_op == 1'b 1 | 
		lsr_op == 1'b 1 | ror_op == 1'b 1 | 
		rol_op == 1'b 1)) )
         begin
         psrl[0] <= alu2op[0];
         end
      else
         begin
         psrl[0] <= psrl[0];
         end
      end
   end
// -------------End of PSR----------------------------------------------
assign cycle = state; 
//  drive outputs
// ----------create a variety of flops here-------------
assign opcde = opcode; 
//  drive outputs
always @(posedge clk)
   begin : misc
   if (resetl == 1'b 1)
      begin
      reset_proc <= 1'b 1;
      end
   else if (state[6] == 1'b 1 )
//  we are done processing a reset interrupt
      begin
      reset_proc <= 1'b 0;
      end
   if (irq_pend == 1'b 1 & syncl == 1'b 1 & 
		rdy == 1'b 1)
      begin
      irq_proc <= 1'b 1;
      end
   else if (state[6] == 1'b 1 | resetl == 1'b 1 )
//  we are done processing an irq interrupt
      begin
      irq_proc <= 1'b 0;
      end
   if (nmi_pend == 1'b 1 & syncl == 1'b 1 & 
		rdy == 1'b 1)
      begin
      nmi_proc <= 1'b 1;
      end
   else if (state[6] == 1'b 1 | resetl == 1'b 1 )
//  we are done processing an nmi interrupt
      begin
      nmi_proc <= 1'b 0;
      end
   resetl <= ~res_n;
//  create flop and invert
//  nmi is edge sensitive, we create the logic to recognize the edge here.
   irq <= ~irq_n;
//  synchronize the interrupt lines here.
   if (nmi2 == 1'b 0 & nmi1 == 1'b 1)
//  set nmi_pend on falling edge of NMI_N
      begin
      nmi_pend <= 1'b 1;
      end
   else if (nmi_proc == 1'b 1 | resetl == 1'b 1 )
      begin
      nmi_pend <= 1'b 0;
//  clear nmi_pend when NMI processing begun.
      end
   nmi2 <= nmi1;
//  we flop NMI twice to create the edge detector.
   nmi1 <= ~nmi_n;
//  synchronize NMI here.
   if (resetl == 1'b 1)
//  Address carry bit
      begin
      addr_carry <= 1'b 0;
      end
   else if (rdy == 1'b 1 & (opcode == JMPAIX & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[1] == 1'b 1) )
//  BAL+Y
      begin
      addr_carry <= alu2op[3];
      end
   else
      begin
      addr_carry <= addr_carry;
      end
   end
// --------------Create a variety of pipelined control signals---
always @(posedge clk)
   begin : pipe
   if (rdy == 1'b 1)
//  advance only when rdy is active.
      begin
      alu_ctl <= alu_ctl_d;
//  pipeline the ALU control so it's fast!
      wel_n <= we_d_n;
//  create the WE_N flop here.
      z_flag_f <= alu2op[1];
//  pipeline delay branch zero flag
      branch_carry_f <= alu2op[2];
//  pipeline delay branch zero flag
      type1_calc <= type1_read;
//  pipeline the end of cycle signal so it's fast
      type2_done <= type2_write;
//  pipeline the RMW control
      type2_write <= type2_calc;
//  pipeline the RMW control
      type2_calc <= type2_read;
//  pipeline the RMW alu control
      type3_calc <= type3_read;
//  pipeline the type 3 opcodes
      sob_n_f <= sob_n;
//  pipeline
      end
   end
rg8l opcd (.di(opcode_in),
          .ld(opcode_ld),
          .do(opcode),
          .clk(clk));
assign opcode_ld = syncl & rdy | resetl; 
// -------------Create the OPCODE register here-----------
//  force a BRK opcode on interrupt
assign opcode_in = resetl == 1'b 1 | nmi_pend == 1'b 1 | 
		irq_pend == 1'b 1 ? BRK : 
	datai; 
//  I bit is low and be sure to give NMI priority
// -------------Create the STATE register here-----------
assign irq_pend = irq & ~psrl[2] & ~nmi_pend; 
//  enable IRQ when 
rg8l st (//  this is the "one-hot" part of the state machine
.di(state_in),
          //  This register forms a shift register with a one
.ld(rdy),
          //  that starts at bit 1 after an opcode fetch and 
.do(state),
          .clk(clk));
assign state_in = opcode_ld == 1'b 1 ? 8'b 00000001 : 
	{state[7:1] , 1'b 0}; 
//  shifts up on each successive cycle.
//  reserved opcodes result in 8 cycle NOPs.
assign syncl = opcode == BRK & state[7] == 1'b 1 | opcode == RTI & 
		state[5] == 1'b 1 | opcode == RTS & 
		state[5] == 1'b 1 | opcode == JSR & 
		state[6] == 1'b 1 | opcode == JMPIND & 
		state[5] == 1'b 1 | opcode == JMPAIX & 
		state[6] == 1'b 1 | opcode == STZABX & 
		state[5] == 1'b 1 | state[4] == 1'b 1 & bbx_op == 1'b 1 & 
		branch_take == 1'b 0 | state[5] == 1'b 1 & bbx_op == 1'b 1 & 
		branch_carry_f == 1'b 0 | state[6] == 1'b 1 & bbx_op == 1'b 1 | 
		state[2] == 1'b 1 & rel_addr == 1'b 1 & 
		branch_take == 1'b 0 | state[3] == 1'b 1 & rel_addr == 1'b 1 & 
		branch_carry_f == 1'b 0 | state[4] == 1'b 1 & rel_addr == 1'b 1 | 
		state[3] == 1'b 1 & (opcode == JMP | 
		opcode == PLX | opcode == PLY | 
		opcode == PHX | opcode == PHY | 
		opcode == PLA | opcode == PLP | 
		opcode == PHA | opcode == PHP) | 
		state[2] == 1'b 1 & (opcode == NOP | 
		imp2psr == 1'b 1 | imp2tx == 1'b 1 | 
		imp2inc == 1'b 1) | type3_calc == 1'b 1 | 
		type2_done == 1'b 1 | type1_calc == 1'b 1 | 
		state[8] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  select A reg
assign domux_001 = opcode == TAY | opcode == TAX | 
		type1_read == 1'b 1 | acc_addr == 1'b 1 & 
		state[1] == 1'b 1 | 
		(tsb_op == 1'b 1 | trb_op == 1'b 1) & 
		type2_read == 1'b 1 | bit_op == 1'b 1 & 
		type3_read == 1'b 1 | 
		(opcode == INCA | opcode == DECA) & 
		state[1] == 1'b 1 | opcode == PHA & 
		state[2] == 1'b 1 ? 3'b 001 : 
	3'b 000; 
//  select PSR
assign domux_010 = opcode == PHP & state[2] == 1'b 1 | opcode == BRK & 
		state[4] == 1'b 1 ? 3'b 010 : 
	3'b 000; 
//  select S reg
assign domux_011 = opcode == TSX ? 3'b 011 : 
	3'b 000; 
//  select Y reg
//  Y to J instead of X.
assign domux_101 = opcode == PHY & state[2] == 1'b 1 | opcode == TYA | 
		cpy_op == 1'b 1 & type3_read == 1'b 1 | 
		sty_op == 1'b 1 & type3_read == 1'b 1 | 
		(opcode == INY | opcode == DEY) & 
		state[1] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | opcode == TYA | 
		opcode == STXZPY & state[1] == 1'b 1 | opcode == LDXZPY & 
		state[1] == 1'b 1 | opcode == LDXABY & 
		state[1] == 1'b 1 ? 3'b 101 : 
	3'b 000; 
//  select X reg
//  move X into J
assign domux_100 = opcode == PHX & state[2] == 1'b 1 | cpx_op == 1'b 1 & 
		type3_read == 1'b 1 | stx_op == 1'b 1 & 
		type3_read == 1'b 1 | opcode == TXA | 
		opcode == TXS | 
		(opcode == INX | opcode == DEX) & 
		state[1] == 1'b 1 | opcode == JMPAIX & 
		state[1] == 1'b 1 | opcode == STZABX & 
		state[1] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 ? 3'b 100 : 
	3'b 000; 
//  select PCH reg
assign domux_110 = opcode == BRK & state[2] == 1'b 1 | bbx_op == 1'b 1 & 
		state[4] == 1'b 1 | rel_addr == 1'b 1 & 
		state[2] == 1'b 1 | opcode == JSR & 
		state[3] == 1'b 1 ? 3'b 110 : 
	3'b 000; 
//  select PCL reg
assign domux_111 = opcode == BRK & state[3] == 1'b 1 | bbx_op == 1'b 1 & 
		state[3] == 1'b 1 | rel_addr == 1'b 1 & 
		state[1] == 1'b 1 | opcode == JSR & 
		state[4] == 1'b 1 ? 3'b 111 : 
	3'b 000; 
//  default is alu
assign domux_sel = domux_001 | domux_010 | domux_011 | domux_100 | 
		domux_101 | domux_110 | domux_111; 
//  default is the ALU - 000
//  output ALU
assign adh_alu = abx_3_addr == 1'b 1 & state[3] == 1'b 1 | 
		(abx_1_addr == 1'b 1 | aby_1_addr == 1'b 1) & 
		state[3] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[4] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  output Dreg
assign adh_dreg = abs_rmw_addr == 1'b 1 & (state[3] == 1'b 1 | state[4] == 1'b 1 | state[5] == 1'b 1) | abx_rmw_addr == 1'b 1 & 
		(state[4] == 1'b 1 | state[5] == 1'b 1 | state[6] == 1'b 1) | opcode == STZABX & 
		state[4] == 1'b 1 | abs_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | abs_3_addr == 1'b 1 & 
		state[3] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[4] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[5] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  output zero page
assign adh_zpg = zpg_rmw_addr == 1'b 1 & (state[2] == 1'b 1 | state[3] == 1'b 1 | state[4] == 1'b 1) | zpx_rmw_addr == 1'b 1 & 
		(state[3] == 1'b 1 | state[4] == 1'b 1 | state[5] == 1'b 1) | zpg_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpg_3_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[3] == 1'b 1 | bbx_op == 1'b 1 & 
		state[2] == 1'b 1 | ind_1_addr == 1'b 1 & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) | inx_1_addr == 1'b 1 & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) | iny_1_addr == 1'b 1 & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  output page one - stack page
assign adh_onepg = opcode == BRK & (state[2] == 1'b 1 | state[3] == 1'b 1 | state[4] == 1'b 1) | 
		(opcode == PHA | opcode == PHP | 
		opcode == PLA | opcode == PLP | 
		opcode == PLX | opcode == PHX | 
		opcode == PLY | opcode == PHY) & 
		state[2] == 1'b 1 | opcode == RTI & 
		~(state[5] == 1'b 1) | opcode == RTS & 
		~(state[5] == 1'b 1) | opcode == JSR & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
assign adh_sel = {{{adh_alu , adh_dreg} , adh_zpg} , adh_onepg}; 
//  default is PC
//  DREG
//  LREG
//  SREG
assign adl_sel = bbx_op == 1'b 1 & state[2] == 1'b 1 | zpg_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpg_3_addr == 1'b 1 & 
		state[2] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | 
		(type2_read == 1'b 1 | type2_calc == 1'b 1 | 
		type2_write == 1'b 1) & zpg_rmw_addr == 1'b 1 ? 2'b 01 : 
	opcode == BITABS & state[3] == 1'b 1 | opcode == STZABX & 
		state[4] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[3] == 1'b 1 | abs_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | abs_3_addr == 1'b 1 & 
		state[3] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | abx_3_addr == 1'b 1 & 
		state[3] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | ind_1_addr == 1'b 1 & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) | iny_1_addr == 1'b 1 & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) | inx_1_addr == 1'b 1 & 
		(state[3] == 1'b 1 | state[4] == 1'b 1 | state[5] == 1'b 1) | type2_read == 1'b 1 | 
		type2_calc == 1'b 1 | type2_write == 1'b 1 ? 2'b 11 : 
	opcode == BRK & (state[2] == 1'b 1 | state[3] == 1'b 1 | state[4] == 1'b 1) | 
		(opcode == PHA | opcode == PHP | 
		opcode == PLA | opcode == PLP | 
		opcode == PLX | opcode == PHX | 
		opcode == PLY | opcode == PHY) & 
		state[2] == 1'b 1 | opcode == RTI & 
		~(state[5] == 1'b 1) | opcode == RTS & 
		~(state[5] == 1'b 1) | opcode == JSR & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) ? 2'b 10 : 
	2'b 00; 
//  default is PCL
// BAL then BAL again
assign pc_cen = rdy == 1'b 1 & (syncl == 1'b 1 & 
		nmi_pend == 1'b 0 & irq_pend == 1'b 0 | 
		opcode == BRK & interrupt == 1'b 0 & 
		state[1] == 1'b 1 | opcode == BRK & 
		state[5] == 1'b 1 | imm_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | imm_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | bbx_op == 1'b 1 & 
		state[1] == 1'b 1 | bbx_op == 1'b 1 & 
		state[3] == 1'b 1 | rel_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpg_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpg_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpg_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | 
		(abs_1_addr == 1'b 1 | abx_1_addr == 1'b 1 | 
		aby_1_addr == 1'b 1 | abs_3_addr == 1'b 1 | 
		abx_3_addr == 1'b 1 | opcode == STZABX | 
		abs_rmw_addr == 1'b 1 | abx_rmw_addr == 1'b 1) & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | inx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | opcode == JMPAIX & 
		(state[1] == 1'b 1 | state[4] == 1'b 1) | opcode == JSR & 
		state[1] == 1'b 1 | opcode == RTS & 
		state[4] == 1'b 1 | opcode == JMP & 
		state[1] == 1'b 1 | opcode == JMPIND & 
		(state[1] == 1'b 1 | state[3] == 1'b 1)) ? 1'b 1 : 
	1'b 0; 
//  JMP indirect
assign pc_load = resetl == 1'b 1 | rdy == 1'b 1 & 
		(opcode == BRK & state[4] == 1'b 1 | opcode == BRK & 
		state[6] == 1'b 1 | bbx_op == 1'b 1 & 
		state[5] == 1'b 1 & branch_carry_f == 1'b 1 | 
		rel_addr == 1'b 1 & state[3] == 1'b 1 & branch_carry_f == 1'b 1 | 
		opcode == RTI & state[4] == 1'b 1 | opcode == RTS & 
		state[3] == 1'b 1 | opcode == JMP & 
		state[2] == 1'b 1 | opcode == JMPAIX & 
		state[3] == 1'b 1 | opcode == JMPAIX & 
		state[5] == 1'b 1 | opcode == JMPIND & 
		state[2] == 1'b 1 | opcode == JSR & 
		state[5] == 1'b 1 | opcode == JMPIND & 
		state[4] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  JMP indirect
assign pc_h_load = resetl == 1'b 1 | bbx_op == 1'b 1 & 
		state[4] == 1'b 1 | rel_addr == 1'b 1 & 
		state[2] == 1'b 1 | opcode == BRK & 
		state[5] == 1'b 1 | opcode == RTI & 
		state[3] == 1'b 1 | opcode == RTS & 
		state[2] == 1'b 1 | opcode == JMP & 
		state[1] == 1'b 1 | opcode == JMPIND & 
		state[1] == 1'b 1 | opcode == JMPAIX & 
		state[2] == 1'b 1 | opcode == JMPAIX & 
		state[4] == 1'b 1 | opcode == JSR & 
		state[1] == 1'b 1 | opcode == JMPIND & 
		state[3] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  note the polarity here...
//  end of JSR
assign pc_sel_datai = bbx_op == 1'b 1 & (state[4] == 1'b 1 | state[5] == 1'b 1) | rel_addr == 1'b 1 & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) | opcode == JMPAIX & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) | opcode == JSR & 
		state[5] == 1'b 1 ? 1'b 0 : 
	1'b 1; 
//  select data in by default.
//  load the PC with the interrupt vector
//  load the PC with the interrupt vector
//  load the PC with the interrupt vector
assign pc_vec_sel = resetl == 1'b 1 | opcode == BRK & 
		state[4] == 1'b 1 & reset_proc == 1'b 1 ? 2'b 10 : 
	opcode == BRK & state[4] == 1'b 1 & nmi_proc == 1'b 1 ? 2'b 01 : 
	opcode == BRK & state[4] == 1'b 1 ? 2'b 11 : 
	2'b 00; 
//  no change
assign vpa = opcode == BRK & (state[5] == 1'b 1 | state[6] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  take a branch to the same page.
assign pcl_alu_ld = bbx_op == 1'b 1 & branch_take == 1'b 1 & 
		alu2op[2] == 1'b 0 & state[4] == 1'b 1 | rel_addr == 1'b 1 & 
		branch_take == 1'b 1 & alu2op[2] == 1'b 0 & state[2] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
assign prog_ctl = {{{{{pc_vec_sel , pcl_alu_ld} , pc_sel_datai} , pc_load} , pc_h_load} , pc_cen}; 
//  combine into a bus...
//  stack operation
assign sreg_cen = rdy == 1'b 1 & (opcode == BRK & 
		state[2] == 1'b 1 | opcode == BRK & 
		state[3] == 1'b 1 | opcode == BRK & 
		state[4] == 1'b 1 | 
		(opcode == PHA | opcode == PHP | 
		opcode == PHX | opcode == PHY) & 
		state[2] == 1'b 1 | opcode == RTI & 
		(state[1] == 1'b 1 | state[2] == 1'b 1 | state[3] == 1'b 1) | opcode == RTS & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | opcode == JSR & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) | 
		(opcode == PLA | opcode == PLP | 
		opcode == PLX | opcode == PLY) & 
		state[1] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  stack operation
assign sreg_up = opcode == RTS | opcode == RTI | 
		(opcode == PLA | opcode == PLP | 
		opcode == PLX | opcode == PLY) & 
		state[1] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
assign interrupt = reset_proc | nmi_proc | irq_proc; 
//  interrupt processing
assign aregd_load = resetl == 1'b 1 | type1_calc == 1'b 1 & 
		(adc_op == 1'b 1 | ora_op == 1'b 1 | 
		eor_op == 1'b 1 | and_op == 1'b 1 | 
		sbc_op == 1'b 1 | lda_op == 1'b 1 | 
		acc_addr == 1'b 1) | 
		(opcode == DECA | opcode == INCA) & 
		state[2] == 1'b 1 | 
		(opcode == TXA | opcode == TYA) & 
		state[1] == 1'b 1 | opcode == PLA & 
		state[3] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  load IAL into D
assign dregi_load = rdy == 1'b 1 & (bbx_op == 1'b 1 & 
		state[1] == 1'b 1 | zpg_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpg_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | abs_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | abs_3_addr == 1'b 1 & 
		state[2] == 1'b 1 | abs_rmw_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpg_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[4] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[1] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  load IAL into D
assign drego_load = resetl == 1'b 1 | rdy == 1'b 1 & 
		(opcode == STZABX & state[3] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[3] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
assign sreg_load = opcode == TXS & state[1] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
assign xreg_load = resetl == 1'b 1 | type3_calc == 1'b 1 & 
		ldx_op == 1'b 1 | opcode == PLX & 
		state[3] == 1'b 1 | 
		(opcode == INX | opcode == DEX) & 
		state[2] == 1'b 1 | 
		(opcode == TAX | opcode == TSX) & 
		state[1] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
assign yreg_load = resetl == 1'b 1 | type3_calc == 1'b 1 & 
		ldy_op == 1'b 1 | 
		(opcode == INY | opcode == DEY) & 
		state[2] == 1'b 1 | opcode == PLY & 
		state[3] == 1'b 1 | opcode == TAY & 
		state[1] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  BAL into L
assign lreg_load = resetl == 1'b 1 | rdy == 1'b 1 & 
		(abs_1_addr == 1'b 1 & state[2] == 1'b 1 | abs_3_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[2] == 1'b 1 | abs_rmw_addr == 1'b 1 & 
		state[2] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[2] == 1'b 1 | 
		(abx_1_addr == 1'b 1 | aby_1_addr == 1'b 1 | 
		abx_3_addr == 1'b 1 | opcode == STZABX) & 
		state[2] == 1'b 1 | inx_1_addr == 1'b 1 & 
		(state[2] == 1'b 1 | state[3] == 1'b 1 | state[4] == 1'b 1) | iny_1_addr == 1'b 1 & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) | ind_1_addr == 1'b 1 & 
		(state[2] == 1'b 1 | state[3] == 1'b 1) | opcode == BITABS & 
		state[2] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[2] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
assign rg_load = {{{{{{lreg_load , yreg_load} , xreg_load} , sreg_load} , drego_load} , dregi_load} , aregd_load}; 
//  decode is from bits of opcode
//  alu mode
//  the order of these select values IS VERY IMPORTANT!
//  we override certain values in certain cases.
//  Future enhancement: remove the ELSE's and use ORs...
assign alu_ctl_d = {{{{{{log_b_inv , opcode[6:4]} , alu_ctl_bsel} , resetl} , alu_ctl_carry} , alu_ctl_bcd} , alu_ctl_mode}; 
//  !A AND B
//  Reset the memory bits
//  EOR
//  AND
//  Rotate A left
//  Rotate A right
//  subtract
//  add
assign alu_ctl_mode = trb_op == 1'b 1 & type2_calc == 1'b 1 ? 3'b 111 : 
	type1_read == 1'b 1 & eor_op == 1'b 1 ? 3'b 110 : 
	opcode == STZZPG & state[1] == 1'b 1 | opcode == STZZPX & 
		state[2] == 1'b 1 | opcode == STZABS & 
		state[2] == 1'b 1 | opcode == STZABX & 
		state[3] == 1'b 1 | bbx_op == 1'b 1 & 
		state[2] == 1'b 1 | type1_read == 1'b 1 & 
		and_op == 1'b 1 | bit_op == 1'b 1 & 
		type3_read == 1'b 1 | trb_op == 1'b 1 & 
		type2_write == 1'b 1 | tsb_op == 1'b 1 & 
		type2_write == 1'b 1 | rmb_op == 1'b 1 & 
		type2_calc == 1'b 1 ? 3'b 100 : 
	(type1_read == 1'b 1 | type2_read == 1'b 1 | 
		type2_calc == 1'b 1) & (asl_op == 1'b 1 | 
		rol_op == 1'b 1) ? 3'b 010 : 
	(type1_read == 1'b 1 | type2_read == 1'b 1 | 
		type2_calc == 1'b 1) & (lsr_op == 1'b 1 | 
		ror_op == 1'b 1) ? 3'b 011 : 
	(type2_read == 1'b 1 | type2_calc == 1'b 1) & 
		dec_op == 1'b 1 | 
		(opcode == DEX | opcode == DEY | 
		opcode == DECA) & state[1] == 1'b 1 | type1_read == 1'b 1 & 
		(sbc_op == 1'b 1 | cmp_op == 1'b 1) | 
		type3_read == 1'b 1 & (cpx_op == 1'b 1 | 
		cpy_op == 1'b 1) ? 3'b 001 : 
	bbx_op == 1'b 1 & (state[3] == 1'b 1 | state[4] == 1'b 1) | rel_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | 
		(opcode == INX | opcode == INY | 
		opcode == INCA) & state[1] == 1'b 1 | opcode == JMPAIX & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | zpx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | 
		(abx_1_addr == 1'b 1 | aby_1_addr == 1'b 1 | 
		abx_3_addr == 1'b 1 | opcode == STZABX) & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | ind_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1 | state[3] == 1'b 1) | zpx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | 
		(type2_read == 1'b 1 | type2_calc == 1'b 1) & 
		inc_op == 1'b 1 | type1_read == 1'b 1 & 
		adc_op == 1'b 1 ? 3'b 000 : 
	3'b 101; 
//  default to J OR 0 for flag updates
//  enable BCD mode If the D bit is set in the PSR
//  alu carry select
//  the order of these select values IS VERY IMPORTANT!
//  we override certain values in certain cases.
assign alu_ctl_bcd = psrl[3] == 1'b 1 & type1_read == 1'b 1 & 
		(adc_op == 1'b 1 | sbc_op == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  select 1
//  data carry in
//  address carry in
//  BAH+addr carry
//  alu B side select
assign alu_ctl_carry = (opcode == INX | opcode == INY | 
		opcode == INCA) & state[1] == 1'b 1 | bbx_op == 1'b 1 & 
		state[3] == 1'b 1 | rel_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | 
		(type2_read == 1'b 1 | type2_calc == 1'b 1) & 
		inc_op == 1'b 1 | type1_read == 1'b 1 & 
		cmp_op == 1'b 1 | type3_read == 1'b 1 & 
		(cpx_op == 1'b 1 | cpy_op == 1'b 1) ? 1'b 1 : 
	type1_read == 1'b 1 & (adc_op == 1'b 1 | 
		sbc_op == 1'b 1) | 
		(type2_read == 1'b 1 | type2_calc == 1'b 1 | 
		type1_read == 1'b 1) & (ror_op == 1'b 1 | 
		rol_op == 1'b 1) ? psrl[0] : 
	opcode == JMPAIX & state[2] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[2] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | 
		(abx_1_addr == 1'b 1 | aby_1_addr == 1'b 1 | 
		abx_3_addr == 1'b 1 | opcode == STZABX) & 
		state[2] == 1'b 1 ? alu2op[3] : 
	1'b 0; 
//  default to no carry (0)
//  select sign extend for the adder or DCD for logic
//  select decoder
//  K register
//  IAL+X
assign alu_ctl_bsel = bbx_op == 1'b 1 & state[4] == 1'b 1 | rel_addr == 1'b 1 & 
		state[2] == 1'b 1 | bbx_op == 1'b 1 & 
		state[2] == 1'b 1 | smb_op == 1'b 1 & 
		type2_calc == 1'b 1 | rmb_op == 1'b 1 & 
		type2_calc == 1'b 1 ? 2'b 01 : 
	type1_read == 1'b 1 & ~(lda_op == 
		1'b 1) | type3_read == 1'b 1 & (cpx_op == 
		1'b 1 | cpy_op == 1'b 1 | bit_op == 
		1'b 1) | opcode == JMPAIX & state[1] == 1'b 1 | opcode == STZABX & 
		state[1] == 1'b 1 | bbx_op == 1'b 1 & 
		state[3] == 1'b 1 | trb_op == 1'b 1 & 
		(type2_calc == 1'b 1 | type2_write == 1'b 1) | 
		tsb_op == 1'b 1 & (type2_calc == 1'b 1 | 
		type2_write == 1'b 1) | rel_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | abx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 ? 2'b 10 : 
	2'b 00; 
//  default to zero
//  invert the B input to the Logic unit when 1
//  invert decoder
assign log_b_inv = rmb_op == 1'b 1 & type2_calc == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  load J from datai
//  data
assign jregi_load = rdy == 1'b 1 & (type2_read == 1'b 1 & 
		~(tsb_op == 1'b 1 | trb_op == 
		1'b 1) | opcode == JMPAIX & state[2] == 1'b 1 | opcode == JSR & 
		state[2] == 1'b 1 | 
		(opcode == PLA | opcode == PLX | 
		opcode == PLY) & state[2] == 1'b 1 | opcode == STZABX & 
		state[2] == 1'b 1 | bbx_op == 1'b 1 & 
		state[2] == 1'b 1 | abs_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | abs_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | ind_1_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1) | iny_1_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[3] == 1'b 1) | 
		(abx_1_addr == 1'b 1 | aby_1_addr == 1'b 1) & 
		state[2] == 1'b 1 | abx_3_addr == 1'b 1 & 
		state[2] == 1'b 1 | abs_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[2] == 1'b 1 | lda_op == 1'b 1 & 
		type1_read == 1'b 1 | ldx_op == 1'b 1 & 
		type3_read == 1'b 1 | ldy_op == 1'b 1 & 
		type3_read == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  load J from datao
//  inc/dec X or Y
assign jrego_load = resetl == 1'b 1 | rdy == 1'b 1 & 
		(state[1] == 1'b 1 & (imp2inc == 1'b 1 | 
		imp2tx == 1'b 1) | opcode == STZABX & 
		state[1] == 1'b 1 | type1_read == 1'b 1 | 
		type3_read == 1'b 1 | type2_read == 1'b 1 & 
		(tsb_op == 1'b 1 | trb_op == 1'b 1) | 
		zpx_1_addr == 1'b 1 & state[1] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | opcode == JMPAIX & 
		state[1] == 1'b 1 | bbx_op == 1'b 1 & 
		(state[3] == 1'b 1 | state[4] == 1'b 1) | rel_addr == 1'b 1 & 
		(state[1] == 1'b 1 | state[2] == 1'b 1)) ? 1'b 1 : 
	1'b 0; 
//  load K from datai
//  IAL
assign kregi_load = resetl == 1'b 1 | rdy == 1'b 1 & 
		(type1_read == 1'b 1 | type3_read == 1'b 1 | 
		opcode == JMPAIX & state[1] == 1'b 1 | opcode == STZABX & 
		state[1] == 1'b 1 | bbx_op == 1'b 1 & 
		state[3] == 1'b 1 | type2_read == 1'b 1 & 
		(tsb_op == 1'b 1 | trb_op == 1'b 1) | 
		rel_addr == 1'b 1 & state[1] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | zpx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | abx_3_addr == 1'b 1 & 
		state[1] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[1] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[2] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[1] == 1'b 1) ? 1'b 1 : 
	1'b 0; 
//  The opcode decodes below group many common instructions together.
//  We could let the synthesizer do this for us but it makes the code 
//  easier to handle since many instructions are basically the same anyway.
assign alu_ld = {{kregi_load , jrego_load} , jregi_load}; 
//  implied addressing 2 cycle PSR update insts.
assign imp2psr = opcode == CLC | opcode == SEC | 
		opcode == CLI | opcode == SEI | 
		opcode == CLV | opcode == CLD | 
		opcode == SED ? 1'b 1 : 
	1'b 0; 
//  implied addressing 2 cycle transfer instructions
assign imp2tx = opcode == TXA | opcode == TXS | 
		opcode == TAX | opcode == TSX | 
		opcode == TYA | opcode == TAY ? 1'b 1 : 
	1'b 0; 
//  implied addressing 2 cycle inc/dec instructions.
//  imm_1_addr is active for type1 immediate addressing opcodes.
//  note that we have done the decoding for the synthesizer. We do this to
//  reduce the logic since we include some empty opcode locations.
assign imp2inc = opcode == DECA | opcode == INCA | 
		opcode == DEX | opcode == DEY | 
		opcode == INX | opcode == INY ? 1'b 1 : 
	1'b 0; 
//  rel_addr is active for ALL branch opcodes.
assign imm_1_addr = opcode[4:0] == 5'b 01001 ? 1'b 1 : 
	1'b 0; 
//  branch_take is active when a branch will be taken.
assign rel_addr = opcode[4:0] == BPL[4:0] | opcode == BRA ? 1'b 1 : 
	1'b 0; 
//  BBSx or BBRx
//  Zero page addressing mode
assign branch_take = opcode[3] == BPL[3] & (opcode[7:5] == BPL[7:5] & psrl[7] == 1'b 0 | opcode[7:5] == BMI[7:5] & psrl[7] == 1'b 1 | opcode[7:5] == BVC[7:5] & psrl[6] == 1'b 0 | opcode[7:5] == BVS[7:5] & psrl[6] == 1'b 1 | opcode[7:5] == BCC[7:5] & psrl[0] == 1'b 0 | opcode[7:5] == BCS[7:5] & psrl[0] == 1'b 1 | opcode[7:5] == BNE[7:5] & psrl[1] == 1'b 0 | opcode[7:5] == BEQ[7:5] & psrl[1] == 1'b 1 | opcode[7:4] == BRA[7:4]) | opcode[3] == BBR0[3] & ~z_flag_f == opcode[7] ? 1'b 1 : 
	1'b 0; 
//  Zero page Indirect X addressing mode
assign zpg_1_addr = opcode[4:0] == ADCZPG[4:0] ? 1'b 1 : 
	1'b 0; 
//  Absolute addressing mode
assign zpx_1_addr = opcode[4:0] == ORAZPX[4:0] ? 1'b 1 : 
	1'b 0; 
//  Absolute X addressing mode
assign abs_1_addr = opcode[4:0] == ORAABS[4:0] ? 1'b 1 : 
	1'b 0; 
//  Absolute Y addressing mode
assign abx_1_addr = opcode[4:0] == ORAABX[4:0] ? 1'b 1 : 
	1'b 0; 
//  Indexed X addressing mode
assign aby_1_addr = opcode[4:0] == ORAABY[4:0] ? 1'b 1 : 
	1'b 0; 
//  Indirect Y addressing mode
assign inx_1_addr = opcode[4:0] == ADCINX[4:0] ? 1'b 1 : 
	1'b 0; 
//  Indirect addressing mode
assign iny_1_addr = opcode[4:0] == ADCINY[4:0] ? 1'b 1 : 
	1'b 0; 
//  accumulator addressing mode
assign ind_1_addr = opcode[4:0] == ADCIND[4:0] ? 1'b 1 : 
	1'b 0; 
//  zero page read-modify-write addressing mode
assign acc_addr = opcode[7] == ASLACC[7] & opcode[4:0] == ASLACC[4:0] ? 1'b 1 : 
	1'b 0; 
//  zero page X read-modify-write addressing mode
assign zpg_rmw_addr = opcode[7] == ASLZPG[7] & opcode[4:0] == ASLZPG[4:0] | opcode == DECZPG | opcode == 
		INCZPG | rmb_op == 1'b 1 | smb_op == 
		1'b 1 | opcode == TRBZPG | opcode == 
		TSBZPG ? 1'b 1 : 
	1'b 0; 
//  Absolute read-modify-write addressing mode
assign zpx_rmw_addr = opcode[7] == ASLZPX[7] & opcode[4:0] == ASLZPX[4:0] | opcode == DECZPX | opcode == 
		INCZPX ? 1'b 1 : 
	1'b 0; 
//  Absolute X read-modify-write addressing mode
assign abs_rmw_addr = opcode[7] == ASLABS[7] & opcode[4:0] == ASLABS[4:0] | opcode == DECABS | opcode == 
		INCABS | opcode == TRBABS | opcode == 
		TSBABS ? 1'b 1 : 
	1'b 0; 
//  type 3 address mode decodes are not as clean as the other two...
assign abx_rmw_addr = opcode[7] == ASLABX[7] & opcode[4:0] == ASLABX[4:0] | opcode == DECABX | opcode == 
		INCABX ? 1'b 1 : 
	1'b 0; 
assign imm_3_addr = opcode == LDYIMM | opcode == LDXIMM | 
		opcode == CPXIMM | opcode == CPYIMM | 
		opcode == BITIMM ? 1'b 1 : 
	1'b 0; 
assign zpg_3_addr = opcode == BITZPG | opcode == STYZPG | 
		opcode == LDYZPG | opcode == CPYZPG | 
		opcode == CPXZPG | opcode == LDXZPG | 
		opcode == STXZPG | opcode == STZZPG ? 1'b 1 : 
	1'b 0; 
assign zpx_3_addr = opcode == LDXZPY | opcode == LDYZPX | 
		opcode == STXZPY | opcode == STYZPX | 
		opcode == BITZPX | opcode == STZZPX ? 1'b 1 : 
	1'b 0; 
assign abs_3_addr = opcode == STYABS | opcode == STXABS | 
		opcode == CPXABS | opcode == CPYABS | 
		opcode == BITABS | opcode == LDXABS | 
		opcode == LDYABS | opcode == STZABS ? 1'b 1 : 
	1'b 0; 
//  type1_read is active during the cycle that we fetch the operand data.
//  At this point the address to fetch data has been determined (it can
//  vary due to the address mode). This signal is also used to 
//  setup the ALU for the cycle that actually calculates the result.
assign abx_3_addr = opcode == LDYABX | opcode == LDXABY | 
		opcode == BITABX ? 1'b 1 : 
	1'b 0; 
//  type2_read is active during the read cycle of a read-modify-write opcode.
//  It is pipelined to generate type2_calc which is active when data
//  is valid on the ALU out bus. During the next cycle the data is written
//  back to memory. (thus, read=type2_read, modify=type2_calc,write=type2_write)
assign type1_read = imm_1_addr == 1'b 1 & state[1] == 1'b 1 | acc_addr == 1'b 1 & 
		state[1] == 1'b 1 | inx_1_addr == 1'b 1 & 
		state[5] == 1'b 1 | iny_1_addr == 1'b 1 & 
		state[4] == 1'b 1 | ind_1_addr == 1'b 1 & 
		state[4] == 1'b 1 | zpx_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | abs_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | abx_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | aby_1_addr == 1'b 1 & 
		state[3] == 1'b 1 | zpg_1_addr == 1'b 1 & 
		state[2] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  Type 3 is the same but for type 3 opcodes.
assign type2_read = zpg_rmw_addr == 1'b 1 & state[2] == 1'b 1 | zpx_rmw_addr == 1'b 1 & 
		state[3] == 1'b 1 | abs_rmw_addr == 1'b 1 & 
		state[3] == 1'b 1 | abx_rmw_addr == 1'b 1 & 
		state[4] == 1'b 1 ? 1'b 1 : 
	1'b 0; 
//  we group opcodes with many addressing modes together here.
//  we combine these with TYPE1 to generate the control signals.
assign type3_read = imm_3_addr & state[1] | zpg_3_addr & state[2] | zpx_3_addr & state[3] | abs_3_addr & state[3] | abx_3_addr & state[3]; 
assign adc_op = opcode[7:5] == ADCIMM[7:5] & opcode[1:0] == ADCIMM[1:0] | opcode == ADCIND ? 1'b 1 : 
	1'b 0; 
assign sbc_op = opcode[7:5] == SBCIMM[7:5] & opcode[1:0] == SBCIMM[1:0] | opcode == SBCIND ? 1'b 1 : 
	1'b 0; 
assign ora_op = opcode[7:5] == ORAIMM[7:5] & opcode[1:0] == ORAIMM[1:0] | opcode == ORAIND ? 1'b 1 : 
	1'b 0; 
assign and_op = opcode[7:5] == ANDIMM[7:5] & opcode[1:0] == ANDIMM[1:0] | opcode == ANDIND ? 1'b 1 : 
	1'b 0; 
assign eor_op = opcode[7:5] == EORIMM[7:5] & opcode[1:0] == EORIMM[1:0] | opcode == EORIND ? 1'b 1 : 
	1'b 0; 
assign sta_op = opcode[7:5] == STAZPG[7:5] & opcode[1:0] == STAZPG[1:0] | opcode == STAIND ? 1'b 1 : 
	1'b 0; 
assign lda_op = opcode[7:5] == LDAIMM[7:5] & opcode[1:0] == LDAIMM[1:0] | opcode == LDAIND ? 1'b 1 : 
	1'b 0; 
assign cmp_op = opcode[7:5] == CMPIMM[7:5] & opcode[1:0] == CMPIMM[1:0] | opcode == CMPIND ? 1'b 1 : 
	1'b 0; 
assign asl_op = opcode[7:5] == ASLZPG[7:5] & opcode[2:0] == ASLZPG[2:0] | opcode == ASLACC ? 1'b 1 : 
	1'b 0; 
assign lsr_op = opcode[7:5] == LSRZPG[7:5] & opcode[2:0] == LSRZPG[2:0] | opcode == LSRACC ? 1'b 1 : 
	1'b 0; 
assign ror_op = opcode[7:5] == RORZPG[7:5] & opcode[2:0] == RORZPG[2:0] | opcode == RORACC ? 1'b 1 : 
	1'b 0; 
assign rol_op = opcode[7:5] == ROLZPG[7:5] & opcode[2:0] == ROLZPG[2:0] | opcode == ROLACC ? 1'b 1 : 
	1'b 0; 
assign inc_op = opcode[7:5] == INCZPG[7:5] & opcode[2:0] == INCZPG[2:0] ? 1'b 1 : 
	1'b 0; 
assign dec_op = opcode[7:5] == DECZPG[7:5] & opcode[2:0] == DECZPG[2:0] ? 1'b 1 : 
	1'b 0; 
assign cpx_op = opcode == CPXIMM | opcode == CPXZPG | 
		opcode == CPXABS ? 1'b 1 : 
	1'b 0; 
assign cpy_op = opcode == CPYIMM | opcode == CPYZPG | 
		opcode == CPYABS ? 1'b 1 : 
	1'b 0; 
assign ldx_op = opcode == LDXIMM | opcode == LDXZPG | 
		opcode == LDXZPY | opcode == LDXABS | 
		opcode == LDXABY ? 1'b 1 : 
	1'b 0; 
assign ldy_op = opcode == LDYIMM | opcode == LDYZPG | 
		opcode == LDYZPX | opcode == LDYABS | 
		opcode == LDYABX ? 1'b 1 : 
	1'b 0; 
assign stx_op = opcode == STXZPG | opcode == STXZPY | 
		opcode == STXABS ? 1'b 1 : 
	1'b 0; 
assign sty_op = opcode == STYZPG | opcode == STYZPX | 
		opcode == STYABS ? 1'b 1 : 
	1'b 0; 
assign bit_op = opcode == BITZPG | opcode == BITABS | 
		opcode == BITIMM | opcode == BITZPX | 
		opcode == BITABX ? 1'b 1 : 
	1'b 0; 
assign rmb_op = opcode == RMB0 | opcode == RMB1 | 
		opcode == RMB2 | opcode == RMB3 | 
		opcode == RMB4 | opcode == RMB5 | 
		opcode == RMB6 | opcode == RMB7 ? 1'b 1 : 
	1'b 0; 
assign smb_op = opcode == SMB0 | opcode == SMB1 | 
		opcode == SMB2 | opcode == SMB3 | 
		opcode == SMB4 | opcode == SMB5 | 
		opcode == SMB6 | opcode == SMB7 ? 1'b 1 : 
	1'b 0; 
assign bbx_op = opcode[3:0] == BBR0[3:0] ? 1'b 1 : 
	1'b 0; 
assign stz_op = opcode == STZZPG | opcode == STZZPX | 
		opcode == STZABS | opcode == STZABX ? 1'b 1 : 
	1'b 0; 
assign trb_op = opcode == TRBZPG | opcode == TRBABS ? 1'b 1 : 
	1'b 0; 
assign tsb_op = opcode == TSBZPG | opcode == TSBABS ? 1'b 1 : 
	1'b 0; 

endmodule // module op_dcd

