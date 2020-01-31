// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Sun Dec 29 17:11:35 2019
// Host        : parallels-Parallels-Virtual-Platform running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/parallels/Desktop/elaborato_754/mutilplexer_ieee754/mutilplexer_ieee754.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : tl
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module mul_ieee754_verilog
   (\op1[25] ,
    \op2[24] ,
    \op2[30] ,
    \op1[28] ,
    D,
    \FSM_onehot_next_state_reg[1] ,
    clk_IBUF_BUFG,
    reset_IBUF,
    op2_IBUF,
    inrdy_IBUF,
    \state_reg[2]_0 ,
    \state[0]_i_3_0 ,
    \state[0]_i_3_1 ,
    op1_IBUF,
    s_reg_0,
    Q,
    \res_reg[31]_0 );
  output \op1[25] ;
  output \op2[24] ;
  output \op2[30] ;
  output \op1[28] ;
  output [1:0]D;
  output [31:0]\FSM_onehot_next_state_reg[1] ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [30:0]op2_IBUF;
  input [0:0]inrdy_IBUF;
  input \state_reg[2]_0 ;
  input \state[0]_i_3_0 ;
  input \state[0]_i_3_1 ;
  input [7:0]op1_IBUF;
  input s_reg_0;
  input [3:0]Q;
  input [31:0]\res_reg[31]_0 ;

  wire [1:0]D;
  wire [31:0]\FSM_onehot_next_state_reg[1] ;
  wire [3:0]Q;
  wire clk_IBUF_BUFG;
  wire [8:0]data0;
  wire [8:1]data1;
  wire [7:0]exp;
  wire \exp[0]_i_1__0_n_2 ;
  wire \exp[1]_i_1__0_n_2 ;
  wire \exp[2]_i_1__0_n_2 ;
  wire \exp[3]_i_1__0_n_2 ;
  wire \exp[4]_i_1__0_n_2 ;
  wire \exp[5]_i_1__0_n_2 ;
  wire \exp[6]_i_1__0_n_2 ;
  wire \exp[7]_i_1_n_2 ;
  wire \exp[7]_i_2_n_2 ;
  wire [0:0]inrdy_IBUF;
  wire [22:0]m;
  wire \m1[0]_i_1_n_2 ;
  wire \m1[10]_i_1_n_2 ;
  wire \m1[11]_i_1_n_2 ;
  wire \m1[12]_i_1_n_2 ;
  wire \m1[13]_i_1_n_2 ;
  wire \m1[14]_i_1_n_2 ;
  wire \m1[15]_i_1_n_2 ;
  wire \m1[16]_i_1_n_2 ;
  wire \m1[17]_i_1_n_2 ;
  wire \m1[18]_i_1_n_2 ;
  wire \m1[19]_i_1_n_2 ;
  wire \m1[1]_i_1_n_2 ;
  wire \m1[20]_i_1_n_2 ;
  wire \m1[21]_i_1_n_2 ;
  wire \m1[22]_i_1__0_n_2 ;
  wire \m1[22]_i_2_n_2 ;
  wire \m1[23]_i_1_n_2 ;
  wire \m1[2]_i_1_n_2 ;
  wire \m1[3]_i_1_n_2 ;
  wire \m1[4]_i_1_n_2 ;
  wire \m1[5]_i_1_n_2 ;
  wire \m1[6]_i_1_n_2 ;
  wire \m1[7]_i_1_n_2 ;
  wire \m1[8]_i_1_n_2 ;
  wire \m1[9]_i_1_n_2 ;
  wire \m1_reg_n_2_[0] ;
  wire \m1_reg_n_2_[10] ;
  wire \m1_reg_n_2_[11] ;
  wire \m1_reg_n_2_[12] ;
  wire \m1_reg_n_2_[13] ;
  wire \m1_reg_n_2_[14] ;
  wire \m1_reg_n_2_[15] ;
  wire \m1_reg_n_2_[16] ;
  wire \m1_reg_n_2_[17] ;
  wire \m1_reg_n_2_[18] ;
  wire \m1_reg_n_2_[19] ;
  wire \m1_reg_n_2_[1] ;
  wire \m1_reg_n_2_[20] ;
  wire \m1_reg_n_2_[21] ;
  wire \m1_reg_n_2_[22] ;
  wire \m1_reg_n_2_[23] ;
  wire \m1_reg_n_2_[2] ;
  wire \m1_reg_n_2_[3] ;
  wire \m1_reg_n_2_[4] ;
  wire \m1_reg_n_2_[5] ;
  wire \m1_reg_n_2_[6] ;
  wire \m1_reg_n_2_[7] ;
  wire \m1_reg_n_2_[8] ;
  wire \m1_reg_n_2_[9] ;
  wire \m2[23]_i_1__0_n_2 ;
  wire \m2_reg_n_2_[23] ;
  wire \m[0]_i_1_n_2 ;
  wire \m[10]_i_1_n_2 ;
  wire \m[11]_i_1_n_2 ;
  wire \m[12]_i_1_n_2 ;
  wire \m[13]_i_1_n_2 ;
  wire \m[14]_i_1_n_2 ;
  wire \m[15]_i_1_n_2 ;
  wire \m[16]_i_1_n_2 ;
  wire \m[17]_i_1_n_2 ;
  wire \m[18]_i_1_n_2 ;
  wire \m[19]_i_1_n_2 ;
  wire \m[1]_i_1_n_2 ;
  wire \m[20]_i_1_n_2 ;
  wire \m[21]_i_1_n_2 ;
  wire \m[22]_i_1__0_n_2 ;
  wire \m[22]_i_2__0_n_2 ;
  wire \m[2]_i_1_n_2 ;
  wire \m[3]_i_1_n_2 ;
  wire \m[4]_i_1_n_2 ;
  wire \m[5]_i_1_n_2 ;
  wire \m[6]_i_1_n_2 ;
  wire \m[7]_i_1_n_2 ;
  wire \m[8]_i_1_n_2 ;
  wire \m[9]_i_1_n_2 ;
  wire \op1[25] ;
  wire \op1[28] ;
  wire [7:0]op1_IBUF;
  wire \op2[24] ;
  wire \op2[30] ;
  wire [30:0]op2_IBUF;
  wire p_1_out_carry__0_i_1_n_2;
  wire p_1_out_carry__0_i_2_n_2;
  wire p_1_out_carry__0_i_3_n_2;
  wire p_1_out_carry__0_i_4_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__0_n_4;
  wire p_1_out_carry__0_n_5;
  wire p_1_out_carry_i_1_n_2;
  wire p_1_out_carry_i_2_n_2;
  wire p_1_out_carry_i_3_n_2;
  wire p_1_out_carry_i_4_n_2;
  wire p_1_out_carry_i_5_n_2;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire p_1_out_carry_n_4;
  wire p_1_out_carry_n_5;
  wire p_6_in;
  wire [1:0]p_7_in;
  wire \res[0]_i_1_n_2 ;
  wire \res[10]_i_1_n_2 ;
  wire \res[11]_i_1_n_2 ;
  wire \res[12]_i_1_n_2 ;
  wire \res[13]_i_1_n_2 ;
  wire \res[14]_i_1_n_2 ;
  wire \res[15]_i_1_n_2 ;
  wire \res[16]_i_1_n_2 ;
  wire \res[17]_i_1_n_2 ;
  wire \res[18]_i_1_n_2 ;
  wire \res[19]_i_1_n_2 ;
  wire \res[1]_i_1_n_2 ;
  wire \res[20]_i_1_n_2 ;
  wire \res[21]_i_1_n_2 ;
  wire \res[22]_i_1_n_2 ;
  wire \res[23]_i_1_n_2 ;
  wire \res[24]_i_1_n_2 ;
  wire \res[25]_i_1_n_2 ;
  wire \res[26]_i_1_n_2 ;
  wire \res[27]_i_1_n_2 ;
  wire \res[28]_i_1_n_2 ;
  wire \res[29]_i_1_n_2 ;
  wire \res[2]_i_1_n_2 ;
  wire \res[30]_i_1_n_2 ;
  wire \res[31]_i_1_n_2 ;
  wire \res[31]_i_2_n_2 ;
  wire \res[3]_i_1_n_2 ;
  wire \res[4]_i_1_n_2 ;
  wire \res[5]_i_1_n_2 ;
  wire \res[6]_i_1_n_2 ;
  wire \res[7]_i_1_n_2 ;
  wire \res[8]_i_1_n_2 ;
  wire \res[9]_i_1_n_2 ;
  wire [31:0]\res_reg[31]_0 ;
  wire [31:0]res_verilog;
  wire res_verilog_rdy;
  wire reset_IBUF;
  wire s;
  wire s_i_1_n_2;
  wire s_i_3_n_2;
  wire s_reg_0;
  wire [4:0]state;
  wire \state[0]_i_1_n_2 ;
  wire \state[0]_i_2_n_2 ;
  wire \state[0]_i_3_0 ;
  wire \state[0]_i_3_1 ;
  wire \state[0]_i_3_n_2 ;
  wire \state[0]_i_4_n_2 ;
  wire \state[0]_i_5_n_2 ;
  wire \state[0]_i_6_n_2 ;
  wire \state[0]_i_7_n_2 ;
  wire \state[0]_i_8_n_2 ;
  wire \state[1]_i_1_n_2 ;
  wire \state[1]_i_2_n_2 ;
  wire \state[1]_i_3_n_2 ;
  wire \state[1]_i_4_n_2 ;
  wire \state[1]_i_5_n_2 ;
  wire \state[1]_i_6_n_2 ;
  wire \state[1]_i_7_n_2 ;
  wire \state[1]_i_8_n_2 ;
  wire \state[1]_i_9_n_2 ;
  wire \state[2]_i_13__0_n_2 ;
  wire \state[2]_i_14__0_n_2 ;
  wire \state[2]_i_15__0_n_2 ;
  wire \state[2]_i_16__0_n_2 ;
  wire \state[2]_i_17__0_n_2 ;
  wire \state[2]_i_18__0_n_2 ;
  wire \state[2]_i_1_n_2 ;
  wire \state[2]_i_2_n_2 ;
  wire \state[2]_i_3__0_n_2 ;
  wire \state[2]_i_4__0_n_2 ;
  wire \state[2]_i_5__0_n_2 ;
  wire \state[2]_i_6_n_2 ;
  wire \state[2]_i_8__0_n_2 ;
  wire \state[3]_i_1_n_2 ;
  wire \state[3]_i_2_n_2 ;
  wire \state[3]_i_3_n_2 ;
  wire \state[3]_i_4_n_2 ;
  wire \state[4]_i_1_n_2 ;
  wire \state[4]_i_2_n_2 ;
  wire \state[4]_i_3_n_2 ;
  wire \state[4]_i_4_n_2 ;
  wire \state[4]_i_5_n_2 ;
  wire \state[4]_i_6_n_2 ;
  wire \state[4]_i_7_n_2 ;
  wire \state_reg[2]_0 ;
  wire \tmpexp[0]_i_1__0_n_2 ;
  wire \tmpexp[1]_i_1_n_2 ;
  wire \tmpexp[2]_i_1_n_2 ;
  wire \tmpexp[3]_i_1_n_2 ;
  wire \tmpexp[3]_i_3__0_n_2 ;
  wire \tmpexp[3]_i_4__0_n_2 ;
  wire \tmpexp[3]_i_5__0_n_2 ;
  wire \tmpexp[3]_i_6__0_n_2 ;
  wire \tmpexp[4]_i_1_n_2 ;
  wire \tmpexp[5]_i_1_n_2 ;
  wire \tmpexp[6]_i_1_n_2 ;
  wire \tmpexp[7]_i_1_n_2 ;
  wire \tmpexp[7]_i_3_n_2 ;
  wire \tmpexp[7]_i_4_n_2 ;
  wire \tmpexp[7]_i_5__0_n_2 ;
  wire \tmpexp[7]_i_6__0_n_2 ;
  wire \tmpexp[8]_i_1_n_2 ;
  wire \tmpexp[8]_i_2_n_2 ;
  wire \tmpexp[8]_i_4__0_n_2 ;
  wire \tmpexp_reg[3]_i_2_n_2 ;
  wire \tmpexp_reg[3]_i_2_n_3 ;
  wire \tmpexp_reg[3]_i_2_n_4 ;
  wire \tmpexp_reg[3]_i_2_n_5 ;
  wire \tmpexp_reg[7]_i_2_n_2 ;
  wire \tmpexp_reg[7]_i_2_n_3 ;
  wire \tmpexp_reg[7]_i_2_n_4 ;
  wire \tmpexp_reg[7]_i_2_n_5 ;
  wire \tmpexp_reg_n_2_[0] ;
  wire \tmpexp_reg_n_2_[1] ;
  wire \tmpexp_reg_n_2_[2] ;
  wire \tmpexp_reg_n_2_[3] ;
  wire \tmpexp_reg_n_2_[4] ;
  wire \tmpexp_reg_n_2_[5] ;
  wire \tmpexp_reg_n_2_[6] ;
  wire \tmpexp_reg_n_2_[7] ;
  wire tmpm0__0_n_100;
  wire tmpm0__0_n_101;
  wire tmpm0__0_n_102;
  wire tmpm0__0_n_103;
  wire tmpm0__0_n_104;
  wire tmpm0__0_n_105;
  wire tmpm0__0_n_106;
  wire tmpm0__0_n_107;
  wire tmpm0__0_n_77;
  wire tmpm0__0_n_78;
  wire tmpm0__0_n_79;
  wire tmpm0__0_n_80;
  wire tmpm0__0_n_81;
  wire tmpm0__0_n_82;
  wire tmpm0__0_n_83;
  wire tmpm0__0_n_84;
  wire tmpm0__0_n_85;
  wire tmpm0__0_n_86;
  wire tmpm0__0_n_87;
  wire tmpm0__0_n_88;
  wire tmpm0__0_n_89;
  wire tmpm0__0_n_90;
  wire tmpm0__0_n_91;
  wire tmpm0__0_n_92;
  wire tmpm0__0_n_93;
  wire tmpm0__0_n_94;
  wire tmpm0__0_n_95;
  wire tmpm0__0_n_96;
  wire tmpm0__0_n_97;
  wire tmpm0__0_n_98;
  wire tmpm0__0_n_99;
  wire [25:1]tmpm0__1;
  wire tmpm0_n_100;
  wire tmpm0_n_101;
  wire tmpm0_n_102;
  wire tmpm0_n_103;
  wire tmpm0_n_104;
  wire tmpm0_n_105;
  wire tmpm0_n_106;
  wire tmpm0_n_107;
  wire tmpm0_n_108;
  wire tmpm0_n_109;
  wire tmpm0_n_110;
  wire tmpm0_n_111;
  wire tmpm0_n_112;
  wire tmpm0_n_113;
  wire tmpm0_n_114;
  wire tmpm0_n_115;
  wire tmpm0_n_116;
  wire tmpm0_n_117;
  wire tmpm0_n_118;
  wire tmpm0_n_119;
  wire tmpm0_n_120;
  wire tmpm0_n_121;
  wire tmpm0_n_122;
  wire tmpm0_n_123;
  wire tmpm0_n_124;
  wire tmpm0_n_125;
  wire tmpm0_n_126;
  wire tmpm0_n_127;
  wire tmpm0_n_128;
  wire tmpm0_n_129;
  wire tmpm0_n_130;
  wire tmpm0_n_131;
  wire tmpm0_n_132;
  wire tmpm0_n_133;
  wire tmpm0_n_134;
  wire tmpm0_n_135;
  wire tmpm0_n_136;
  wire tmpm0_n_137;
  wire tmpm0_n_138;
  wire tmpm0_n_139;
  wire tmpm0_n_140;
  wire tmpm0_n_141;
  wire tmpm0_n_142;
  wire tmpm0_n_143;
  wire tmpm0_n_144;
  wire tmpm0_n_145;
  wire tmpm0_n_146;
  wire tmpm0_n_147;
  wire tmpm0_n_148;
  wire tmpm0_n_149;
  wire tmpm0_n_150;
  wire tmpm0_n_151;
  wire tmpm0_n_152;
  wire tmpm0_n_153;
  wire tmpm0_n_154;
  wire tmpm0_n_155;
  wire tmpm0_n_60;
  wire tmpm0_n_61;
  wire tmpm0_n_62;
  wire tmpm0_n_63;
  wire tmpm0_n_64;
  wire tmpm0_n_65;
  wire tmpm0_n_66;
  wire tmpm0_n_67;
  wire tmpm0_n_68;
  wire tmpm0_n_69;
  wire tmpm0_n_70;
  wire tmpm0_n_71;
  wire tmpm0_n_72;
  wire tmpm0_n_73;
  wire tmpm0_n_74;
  wire tmpm0_n_75;
  wire tmpm0_n_76;
  wire tmpm0_n_77;
  wire tmpm0_n_78;
  wire tmpm0_n_79;
  wire tmpm0_n_80;
  wire tmpm0_n_81;
  wire tmpm0_n_82;
  wire tmpm0_n_83;
  wire tmpm0_n_84;
  wire tmpm0_n_85;
  wire tmpm0_n_86;
  wire tmpm0_n_87;
  wire tmpm0_n_88;
  wire tmpm0_n_89;
  wire tmpm0_n_90;
  wire tmpm0_n_91;
  wire tmpm0_n_92;
  wire tmpm0_n_93;
  wire tmpm0_n_94;
  wire tmpm0_n_95;
  wire tmpm0_n_96;
  wire tmpm0_n_97;
  wire tmpm0_n_98;
  wire tmpm0_n_99;
  wire \tmpm[0]_i_1_n_2 ;
  wire \tmpm[10]_i_1_n_2 ;
  wire \tmpm[11]_i_1_n_2 ;
  wire \tmpm[12]_i_1_n_2 ;
  wire \tmpm[13]_i_1_n_2 ;
  wire \tmpm[14]_i_1_n_2 ;
  wire \tmpm[15]_i_1_n_2 ;
  wire \tmpm[16]_i_1_n_2 ;
  wire \tmpm[17]_i_1_n_2 ;
  wire \tmpm[18]_i_1_n_2 ;
  wire \tmpm[19]_i_1_n_2 ;
  wire \tmpm[1]_i_1_n_2 ;
  wire \tmpm[20]_i_1_n_2 ;
  wire \tmpm[21]_i_1_n_2 ;
  wire \tmpm[21]_i_2_n_2 ;
  wire \tmpm[22]_i_1_n_2 ;
  wire \tmpm[22]_i_2_n_2 ;
  wire \tmpm[23]_i_1_n_2 ;
  wire \tmpm[23]_i_2_n_2 ;
  wire \tmpm[24]_i_1_n_2 ;
  wire \tmpm[24]_i_2_n_2 ;
  wire \tmpm[25]_i_1_n_2 ;
  wire \tmpm[25]_i_2_n_2 ;
  wire \tmpm[26]_i_1_n_2 ;
  wire \tmpm[26]_i_3_n_2 ;
  wire \tmpm[27]_i_1_n_2 ;
  wire \tmpm[27]_i_2_n_2 ;
  wire \tmpm[28]_i_1_n_2 ;
  wire \tmpm[28]_i_2_n_2 ;
  wire \tmpm[29]_i_1_n_2 ;
  wire \tmpm[29]_i_2_n_2 ;
  wire \tmpm[2]_i_1_n_2 ;
  wire \tmpm[30]_i_1_n_2 ;
  wire \tmpm[30]_i_3_n_2 ;
  wire \tmpm[31]_i_1_n_2 ;
  wire \tmpm[31]_i_2_n_2 ;
  wire \tmpm[32]_i_1_n_2 ;
  wire \tmpm[32]_i_2_n_2 ;
  wire \tmpm[33]_i_1_n_2 ;
  wire \tmpm[33]_i_2_n_2 ;
  wire \tmpm[34]_i_1_n_2 ;
  wire \tmpm[34]_i_3_n_2 ;
  wire \tmpm[35]_i_1_n_2 ;
  wire \tmpm[35]_i_2_n_2 ;
  wire \tmpm[36]_i_1_n_2 ;
  wire \tmpm[36]_i_2_n_2 ;
  wire \tmpm[37]_i_1_n_2 ;
  wire \tmpm[37]_i_2_n_2 ;
  wire \tmpm[38]_i_1_n_2 ;
  wire \tmpm[38]_i_3_n_2 ;
  wire \tmpm[39]_i_1_n_2 ;
  wire \tmpm[39]_i_2_n_2 ;
  wire \tmpm[3]_i_1_n_2 ;
  wire \tmpm[40]_i_1_n_2 ;
  wire \tmpm[40]_i_2_n_2 ;
  wire \tmpm[41]_i_1_n_2 ;
  wire \tmpm[41]_i_2_n_2 ;
  wire \tmpm[42]_i_1_n_2 ;
  wire \tmpm[42]_i_3_n_2 ;
  wire \tmpm[43]_i_1_n_2 ;
  wire \tmpm[43]_i_2_n_2 ;
  wire \tmpm[44]_i_1_n_2 ;
  wire \tmpm[44]_i_2_n_2 ;
  wire \tmpm[45]_i_1_n_2 ;
  wire \tmpm[45]_i_2_n_2 ;
  wire \tmpm[46]_i_1_n_2 ;
  wire \tmpm[46]_i_3_n_2 ;
  wire \tmpm[47]_i_1__0_n_2 ;
  wire \tmpm[47]_i_2_n_2 ;
  wire \tmpm[47]_i_3_n_2 ;
  wire \tmpm[4]_i_1_n_2 ;
  wire \tmpm[5]_i_1_n_2 ;
  wire \tmpm[6]_i_1_n_2 ;
  wire \tmpm[7]_i_1_n_2 ;
  wire \tmpm[8]_i_1_n_2 ;
  wire \tmpm[9]_i_1_n_2 ;
  wire \tmpm_reg[26]_i_2_n_2 ;
  wire \tmpm_reg[26]_i_2_n_3 ;
  wire \tmpm_reg[26]_i_2_n_4 ;
  wire \tmpm_reg[26]_i_2_n_5 ;
  wire \tmpm_reg[30]_i_2_n_2 ;
  wire \tmpm_reg[30]_i_2_n_3 ;
  wire \tmpm_reg[30]_i_2_n_4 ;
  wire \tmpm_reg[30]_i_2_n_5 ;
  wire \tmpm_reg[34]_i_2_n_2 ;
  wire \tmpm_reg[34]_i_2_n_3 ;
  wire \tmpm_reg[34]_i_2_n_4 ;
  wire \tmpm_reg[34]_i_2_n_5 ;
  wire \tmpm_reg[38]_i_2_n_2 ;
  wire \tmpm_reg[38]_i_2_n_3 ;
  wire \tmpm_reg[38]_i_2_n_4 ;
  wire \tmpm_reg[38]_i_2_n_5 ;
  wire \tmpm_reg[42]_i_2_n_2 ;
  wire \tmpm_reg[42]_i_2_n_3 ;
  wire \tmpm_reg[42]_i_2_n_4 ;
  wire \tmpm_reg[42]_i_2_n_5 ;
  wire \tmpm_reg[46]_i_2_n_2 ;
  wire \tmpm_reg[46]_i_2_n_3 ;
  wire \tmpm_reg[46]_i_2_n_4 ;
  wire \tmpm_reg[46]_i_2_n_5 ;
  wire \tmpm_reg_n_2_[0] ;
  wire \tmpm_reg_n_2_[10] ;
  wire \tmpm_reg_n_2_[11] ;
  wire \tmpm_reg_n_2_[12] ;
  wire \tmpm_reg_n_2_[13] ;
  wire \tmpm_reg_n_2_[14] ;
  wire \tmpm_reg_n_2_[15] ;
  wire \tmpm_reg_n_2_[16] ;
  wire \tmpm_reg_n_2_[17] ;
  wire \tmpm_reg_n_2_[18] ;
  wire \tmpm_reg_n_2_[19] ;
  wire \tmpm_reg_n_2_[1] ;
  wire \tmpm_reg_n_2_[20] ;
  wire \tmpm_reg_n_2_[21] ;
  wire \tmpm_reg_n_2_[22] ;
  wire \tmpm_reg_n_2_[23] ;
  wire \tmpm_reg_n_2_[24] ;
  wire \tmpm_reg_n_2_[25] ;
  wire \tmpm_reg_n_2_[26] ;
  wire \tmpm_reg_n_2_[27] ;
  wire \tmpm_reg_n_2_[28] ;
  wire \tmpm_reg_n_2_[29] ;
  wire \tmpm_reg_n_2_[2] ;
  wire \tmpm_reg_n_2_[30] ;
  wire \tmpm_reg_n_2_[31] ;
  wire \tmpm_reg_n_2_[32] ;
  wire \tmpm_reg_n_2_[33] ;
  wire \tmpm_reg_n_2_[34] ;
  wire \tmpm_reg_n_2_[35] ;
  wire \tmpm_reg_n_2_[36] ;
  wire \tmpm_reg_n_2_[37] ;
  wire \tmpm_reg_n_2_[38] ;
  wire \tmpm_reg_n_2_[39] ;
  wire \tmpm_reg_n_2_[3] ;
  wire \tmpm_reg_n_2_[40] ;
  wire \tmpm_reg_n_2_[41] ;
  wire \tmpm_reg_n_2_[42] ;
  wire \tmpm_reg_n_2_[43] ;
  wire \tmpm_reg_n_2_[44] ;
  wire \tmpm_reg_n_2_[45] ;
  wire \tmpm_reg_n_2_[4] ;
  wire \tmpm_reg_n_2_[5] ;
  wire \tmpm_reg_n_2_[6] ;
  wire \tmpm_reg_n_2_[7] ;
  wire \tmpm_reg_n_2_[8] ;
  wire \tmpm_reg_n_2_[9] ;
  wire [3:3]NLW_p_1_out_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_tmpexp_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmpexp_reg[8]_i_3_O_UNCONNECTED ;
  wire NLW_tmpm0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmpm0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmpm0_OVERFLOW_UNCONNECTED;
  wire NLW_tmpm0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmpm0_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmpm0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmpm0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmpm0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmpm0_CARRYOUT_UNCONNECTED;
  wire NLW_tmpm0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmpm0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmpm0__0_OVERFLOW_UNCONNECTED;
  wire NLW_tmpm0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmpm0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmpm0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmpm0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmpm0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmpm0__0_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_tmpm0__0_P_UNCONNECTED;
  wire [47:0]NLW_tmpm0__0_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_tmpm_reg[47]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmpm_reg[47]_i_4_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \FSM_onehot_next_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(res_verilog_rdy),
        .I3(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[2]_i_1 
       (.I0(Q[1]),
        .I1(res_verilog_rdy),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[0]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[0] ),
        .O(\exp[0]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[1]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[1] ),
        .O(\exp[1]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[2]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[2] ),
        .O(\exp[2]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[3]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[3] ),
        .O(\exp[3]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[4]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[4] ),
        .O(\exp[4]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[5]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[5] ),
        .O(\exp[5]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[6]_i_1__0 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[6] ),
        .O(\exp[6]_i_1__0_n_2 ));
  LUT5 #(
    .INIT(32'h014C0009)) 
    \exp[7]_i_1 
       (.I0(\state[0]_i_2_n_2 ),
        .I1(\state[1]_i_2_n_2 ),
        .I2(\state[4]_i_1_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[2]_i_1_n_2 ),
        .O(\exp[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \exp[7]_i_2 
       (.I0(\state[2]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[1]_i_2_n_2 ),
        .I3(\tmpexp_reg_n_2_[7] ),
        .O(\exp[7]_i_2_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[0]_i_1__0_n_2 ),
        .Q(exp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[1]_i_1__0_n_2 ),
        .Q(exp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[2]_i_1__0_n_2 ),
        .Q(exp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[3]_i_1__0_n_2 ),
        .Q(exp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[4]_i_1__0_n_2 ),
        .Q(exp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[5]_i_1__0_n_2 ),
        .Q(exp[5]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[6]_i_1__0_n_2 ),
        .Q(exp[6]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\exp[7]_i_2_n_2 ),
        .Q(exp[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_14
       (.I0(op1_IBUF[5]),
        .I1(op1_IBUF[3]),
        .I2(op1_IBUF[6]),
        .I3(op1_IBUF[1]),
        .O(\op1[28] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_16
       (.I0(op2_IBUF[30]),
        .I1(op2_IBUF[29]),
        .I2(op2_IBUF[27]),
        .I3(op2_IBUF[28]),
        .O(\op2[30] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[0]_i_1 
       (.I0(op2_IBUF[0]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[10]_i_1 
       (.I0(op2_IBUF[10]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[10]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[11]_i_1 
       (.I0(op2_IBUF[11]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[11]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[12]_i_1 
       (.I0(op2_IBUF[12]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[12]_i_1_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m1[13]_i_1 
       (.I0(op2_IBUF[13]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[13]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[14]_i_1 
       (.I0(op2_IBUF[14]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[14]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[15]_i_1 
       (.I0(op2_IBUF[15]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[15]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[16]_i_1 
       (.I0(op2_IBUF[16]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[16]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[17]_i_1 
       (.I0(op2_IBUF[17]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[17]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[18]_i_1 
       (.I0(op2_IBUF[18]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[18]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[19]_i_1 
       (.I0(op2_IBUF[19]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[19]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[1]_i_1 
       (.I0(op2_IBUF[1]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[20]_i_1 
       (.I0(op2_IBUF[20]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[20]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[21]_i_1 
       (.I0(op2_IBUF[21]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[21]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \m1[22]_i_1__0 
       (.I0(\state[3]_i_1_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[0]_i_2_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .O(\m1[22]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[22]_i_2 
       (.I0(op2_IBUF[22]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[22]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hFFF7FEF700000200)) 
    \m1[23]_i_1 
       (.I0(\state[0]_i_2_n_2 ),
        .I1(\state[1]_i_2_n_2 ),
        .I2(\state[4]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[3]_i_1_n_2 ),
        .I5(\m1_reg_n_2_[23] ),
        .O(\m1[23]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[2]_i_1 
       (.I0(op2_IBUF[2]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[2]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[3]_i_1 
       (.I0(op2_IBUF[3]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[4]_i_1 
       (.I0(op2_IBUF[4]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[4]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[5]_i_1 
       (.I0(op2_IBUF[5]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[5]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[6]_i_1 
       (.I0(op2_IBUF[6]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[6]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[7]_i_1 
       (.I0(op2_IBUF[7]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[8]_i_1 
       (.I0(op2_IBUF[8]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[8]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m1[9]_i_1 
       (.I0(op2_IBUF[9]),
        .I1(\state[1]_i_2_n_2 ),
        .O(\m1[9]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[0]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[10]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[11]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[12]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[13]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[14]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[15]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[16]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[17]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[18]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[19]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[1]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[20]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[21]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[22]_i_2_n_2 ),
        .Q(\m1_reg_n_2_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\m1[23]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[2]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[3]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[4]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[5]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[6]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[7]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[8]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m1[9]_i_1_n_2 ),
        .Q(\m1_reg_n_2_[9] ));
  LUT6 #(
    .INIT(64'hFFFDFDEF00001000)) 
    \m2[23]_i_1__0 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[2]_i_1_n_2 ),
        .I3(\state[0]_i_2_n_2 ),
        .I4(\state[3]_i_1_n_2 ),
        .I5(\m2_reg_n_2_[23] ),
        .O(\m2[23]_i_1__0_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\m2[23]_i_1__0_n_2 ),
        .Q(\m2_reg_n_2_[23] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[0]_i_1 
       (.I0(\tmpm_reg_n_2_[23] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[10]_i_1 
       (.I0(\tmpm_reg_n_2_[33] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[10]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[11]_i_1 
       (.I0(\tmpm_reg_n_2_[34] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[11]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[12]_i_1 
       (.I0(\tmpm_reg_n_2_[35] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[12]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[13]_i_1 
       (.I0(\tmpm_reg_n_2_[36] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[13]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[14]_i_1 
       (.I0(\tmpm_reg_n_2_[37] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[14]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[15]_i_1 
       (.I0(\tmpm_reg_n_2_[38] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[15]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[16]_i_1 
       (.I0(\tmpm_reg_n_2_[39] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[16]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[17]_i_1 
       (.I0(\tmpm_reg_n_2_[40] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[17]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[18]_i_1 
       (.I0(\tmpm_reg_n_2_[41] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[18]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[19]_i_1 
       (.I0(\tmpm_reg_n_2_[42] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[19]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[1]_i_1 
       (.I0(\tmpm_reg_n_2_[24] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[20]_i_1 
       (.I0(\tmpm_reg_n_2_[43] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[20]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[21]_i_1 
       (.I0(\tmpm_reg_n_2_[44] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[21]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h04040441)) 
    \m[22]_i_1__0 
       (.I0(\state[3]_i_1_n_2 ),
        .I1(\state[1]_i_2_n_2 ),
        .I2(\state[4]_i_1_n_2 ),
        .I3(\state[0]_i_2_n_2 ),
        .I4(\state[2]_i_1_n_2 ),
        .O(\m[22]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5540)) 
    \m[22]_i_2__0 
       (.I0(\state[0]_i_2_n_2 ),
        .I1(\tmpm_reg_n_2_[45] ),
        .I2(\state[4]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .O(\m[22]_i_2__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[2]_i_1 
       (.I0(\tmpm_reg_n_2_[25] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[2]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[3]_i_1 
       (.I0(\tmpm_reg_n_2_[26] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[4]_i_1 
       (.I0(\tmpm_reg_n_2_[27] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[4]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[5]_i_1 
       (.I0(\tmpm_reg_n_2_[28] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[5]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[6]_i_1 
       (.I0(\tmpm_reg_n_2_[29] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[6]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[7]_i_1 
       (.I0(\tmpm_reg_n_2_[30] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[8]_i_1 
       (.I0(\tmpm_reg_n_2_[31] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[8]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[9]_i_1 
       (.I0(\tmpm_reg_n_2_[32] ),
        .I1(\state[4]_i_1_n_2 ),
        .O(\m[9]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[0]_i_1_n_2 ),
        .Q(m[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[10]_i_1_n_2 ),
        .Q(m[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[11]_i_1_n_2 ),
        .Q(m[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[12]_i_1_n_2 ),
        .Q(m[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[13]_i_1_n_2 ),
        .Q(m[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[14]_i_1_n_2 ),
        .Q(m[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[15]_i_1_n_2 ),
        .Q(m[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[16]_i_1_n_2 ),
        .Q(m[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[17]_i_1_n_2 ),
        .Q(m[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[18]_i_1_n_2 ),
        .Q(m[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[19]_i_1_n_2 ),
        .Q(m[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[1]_i_1_n_2 ),
        .Q(m[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[20]_i_1_n_2 ),
        .Q(m[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[21]_i_1_n_2 ),
        .Q(m[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[22]_i_2__0_n_2 ),
        .Q(m[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[2]_i_1_n_2 ),
        .Q(m[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[3]_i_1_n_2 ),
        .Q(m[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[4]_i_1_n_2 ),
        .Q(m[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[5]_i_1_n_2 ),
        .Q(m[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[6]_i_1_n_2 ),
        .Q(m[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[7]_i_1_n_2 ),
        .Q(m[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[8]_i_1_n_2 ),
        .Q(m[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\m[9]_i_1_n_2 ),
        .Q(m[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_2,p_1_out_carry_n_3,p_1_out_carry_n_4,p_1_out_carry_n_5}),
        .CYINIT(\tmpexp_reg_n_2_[0] ),
        .DI({\tmpexp_reg_n_2_[3] ,\tmpexp_reg_n_2_[2] ,\tmpexp_reg_n_2_[1] ,p_1_out_carry_i_1_n_2}),
        .O(data1[4:1]),
        .S({p_1_out_carry_i_2_n_2,p_1_out_carry_i_3_n_2,p_1_out_carry_i_4_n_2,p_1_out_carry_i_5_n_2}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_2),
        .CO({NLW_p_1_out_carry__0_CO_UNCONNECTED[3],p_1_out_carry__0_n_3,p_1_out_carry__0_n_4,p_1_out_carry__0_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,\tmpexp_reg_n_2_[6] ,\tmpexp_reg_n_2_[5] ,\tmpexp_reg_n_2_[4] }),
        .O(data1[8:5]),
        .S({p_1_out_carry__0_i_1_n_2,p_1_out_carry__0_i_2_n_2,p_1_out_carry__0_i_3_n_2,p_1_out_carry__0_i_4_n_2}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_1
       (.I0(\tmpexp_reg_n_2_[7] ),
        .I1(p_6_in),
        .O(p_1_out_carry__0_i_1_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2
       (.I0(\tmpexp_reg_n_2_[6] ),
        .I1(\tmpexp_reg_n_2_[7] ),
        .O(p_1_out_carry__0_i_2_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3
       (.I0(\tmpexp_reg_n_2_[5] ),
        .I1(\tmpexp_reg_n_2_[6] ),
        .O(p_1_out_carry__0_i_3_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4
       (.I0(\tmpexp_reg_n_2_[4] ),
        .I1(\tmpexp_reg_n_2_[5] ),
        .O(p_1_out_carry__0_i_4_n_2));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_carry_i_1
       (.I0(\tmpexp_reg_n_2_[1] ),
        .O(p_1_out_carry_i_1_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2
       (.I0(\tmpexp_reg_n_2_[3] ),
        .I1(\tmpexp_reg_n_2_[4] ),
        .O(p_1_out_carry_i_2_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3
       (.I0(\tmpexp_reg_n_2_[2] ),
        .I1(\tmpexp_reg_n_2_[3] ),
        .O(p_1_out_carry_i_3_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_4
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(\tmpexp_reg_n_2_[2] ),
        .O(p_1_out_carry_i_4_n_2));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_5
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(\state[2]_i_1_n_2 ),
        .O(p_1_out_carry_i_5_n_2));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[0]_i_1 
       (.I0(m[0]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[10]_i_1 
       (.I0(m[10]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[10]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[11]_i_1 
       (.I0(m[11]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[11]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[12]_i_1 
       (.I0(m[12]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[12]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[13]_i_1 
       (.I0(m[13]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[13]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[14]_i_1 
       (.I0(m[14]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[14]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[15]_i_1 
       (.I0(m[15]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[15]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[16]_i_1 
       (.I0(m[16]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[16]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[17]_i_1 
       (.I0(m[17]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[17]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[18]_i_1 
       (.I0(m[18]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[18]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[19]_i_1 
       (.I0(m[19]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[19]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[1]_i_1 
       (.I0(m[1]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[20]_i_1 
       (.I0(m[20]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[20]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[21]_i_1 
       (.I0(m[21]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[21]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[22]_i_1 
       (.I0(m[22]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[22]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[23]_i_1 
       (.I0(exp[0]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[23]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[24]_i_1 
       (.I0(exp[1]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[24]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[25]_i_1 
       (.I0(exp[2]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[25]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[26]_i_1 
       (.I0(exp[3]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[26]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[27]_i_1 
       (.I0(exp[4]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[27]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[28]_i_1 
       (.I0(exp[5]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[28]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[29]_i_1 
       (.I0(exp[6]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[29]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[2]_i_1 
       (.I0(m[2]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[2]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[30]_i_1 
       (.I0(exp[7]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[30]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00420000)) 
    \res[31]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\state[4]_i_1_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .O(\res[31]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[31]_i_2 
       (.I0(s),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[31]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[3]_i_1 
       (.I0(m[3]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[4]_i_1 
       (.I0(m[4]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[4]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[5]_i_1 
       (.I0(m[5]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[5]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[6]_i_1 
       (.I0(m[6]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[6]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[7]_i_1 
       (.I0(m[7]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[8]_i_1 
       (.I0(m[8]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[8]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[9]_i_1 
       (.I0(m[9]),
        .I1(\state[4]_i_1_n_2 ),
        .O(\res[9]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[0]_i_1_n_2 ),
        .Q(res_verilog[0]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [0]),
        .I3(Q[2]),
        .I4(res_verilog[0]),
        .O(\FSM_onehot_next_state_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[10]_i_1_n_2 ),
        .Q(res_verilog[10]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[10]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [10]),
        .I3(Q[2]),
        .I4(res_verilog[10]),
        .O(\FSM_onehot_next_state_reg[1] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[11]_i_1_n_2 ),
        .Q(res_verilog[11]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[11]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [11]),
        .I3(Q[2]),
        .I4(res_verilog[11]),
        .O(\FSM_onehot_next_state_reg[1] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[12]_i_1_n_2 ),
        .Q(res_verilog[12]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[12]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [12]),
        .I3(Q[2]),
        .I4(res_verilog[12]),
        .O(\FSM_onehot_next_state_reg[1] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[13]_i_1_n_2 ),
        .Q(res_verilog[13]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[13]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [13]),
        .I3(Q[2]),
        .I4(res_verilog[13]),
        .O(\FSM_onehot_next_state_reg[1] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[14]_i_1_n_2 ),
        .Q(res_verilog[14]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[14]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [14]),
        .I3(Q[2]),
        .I4(res_verilog[14]),
        .O(\FSM_onehot_next_state_reg[1] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[15]_i_1_n_2 ),
        .Q(res_verilog[15]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[15]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [15]),
        .I3(Q[2]),
        .I4(res_verilog[15]),
        .O(\FSM_onehot_next_state_reg[1] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[16]_i_1_n_2 ),
        .Q(res_verilog[16]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[16]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [16]),
        .I3(Q[2]),
        .I4(res_verilog[16]),
        .O(\FSM_onehot_next_state_reg[1] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[17]_i_1_n_2 ),
        .Q(res_verilog[17]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[17]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [17]),
        .I3(Q[2]),
        .I4(res_verilog[17]),
        .O(\FSM_onehot_next_state_reg[1] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[18]_i_1_n_2 ),
        .Q(res_verilog[18]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[18]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [18]),
        .I3(Q[2]),
        .I4(res_verilog[18]),
        .O(\FSM_onehot_next_state_reg[1] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[19]_i_1_n_2 ),
        .Q(res_verilog[19]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[19]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [19]),
        .I3(Q[2]),
        .I4(res_verilog[19]),
        .O(\FSM_onehot_next_state_reg[1] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[1]_i_1_n_2 ),
        .Q(res_verilog[1]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [1]),
        .I3(Q[2]),
        .I4(res_verilog[1]),
        .O(\FSM_onehot_next_state_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[20]_i_1_n_2 ),
        .Q(res_verilog[20]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[20]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [20]),
        .I3(Q[2]),
        .I4(res_verilog[20]),
        .O(\FSM_onehot_next_state_reg[1] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[21]_i_1_n_2 ),
        .Q(res_verilog[21]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[21]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [21]),
        .I3(Q[2]),
        .I4(res_verilog[21]),
        .O(\FSM_onehot_next_state_reg[1] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[22]_i_1_n_2 ),
        .Q(res_verilog[22]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[22]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [22]),
        .I3(Q[2]),
        .I4(res_verilog[22]),
        .O(\FSM_onehot_next_state_reg[1] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[23]_i_1_n_2 ),
        .Q(res_verilog[23]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[23]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [23]),
        .I3(Q[2]),
        .I4(res_verilog[23]),
        .O(\FSM_onehot_next_state_reg[1] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[24]_i_1_n_2 ),
        .Q(res_verilog[24]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[24]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [24]),
        .I3(Q[2]),
        .I4(res_verilog[24]),
        .O(\FSM_onehot_next_state_reg[1] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[25]_i_1_n_2 ),
        .Q(res_verilog[25]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[25]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [25]),
        .I3(Q[2]),
        .I4(res_verilog[25]),
        .O(\FSM_onehot_next_state_reg[1] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[26]_i_1_n_2 ),
        .Q(res_verilog[26]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[26]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [26]),
        .I3(Q[2]),
        .I4(res_verilog[26]),
        .O(\FSM_onehot_next_state_reg[1] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[27]_i_1_n_2 ),
        .Q(res_verilog[27]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[27]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [27]),
        .I3(Q[2]),
        .I4(res_verilog[27]),
        .O(\FSM_onehot_next_state_reg[1] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[28]_i_1_n_2 ),
        .Q(res_verilog[28]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[28]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [28]),
        .I3(Q[2]),
        .I4(res_verilog[28]),
        .O(\FSM_onehot_next_state_reg[1] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[29]_i_1_n_2 ),
        .Q(res_verilog[29]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[29]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [29]),
        .I3(Q[2]),
        .I4(res_verilog[29]),
        .O(\FSM_onehot_next_state_reg[1] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[2]_i_1_n_2 ),
        .Q(res_verilog[2]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [2]),
        .I3(Q[2]),
        .I4(res_verilog[2]),
        .O(\FSM_onehot_next_state_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[30]_i_1_n_2 ),
        .Q(res_verilog[30]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[30]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [30]),
        .I3(Q[2]),
        .I4(res_verilog[30]),
        .O(\FSM_onehot_next_state_reg[1] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[31]_i_2_n_2 ),
        .Q(res_verilog[31]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[31]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [31]),
        .I3(Q[2]),
        .I4(res_verilog[31]),
        .O(\FSM_onehot_next_state_reg[1] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[3]_i_1_n_2 ),
        .Q(res_verilog[3]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [3]),
        .I3(Q[2]),
        .I4(res_verilog[3]),
        .O(\FSM_onehot_next_state_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[4]_i_1_n_2 ),
        .Q(res_verilog[4]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [4]),
        .I3(Q[2]),
        .I4(res_verilog[4]),
        .O(\FSM_onehot_next_state_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[5]_i_1_n_2 ),
        .Q(res_verilog[5]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [5]),
        .I3(Q[2]),
        .I4(res_verilog[5]),
        .O(\FSM_onehot_next_state_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[6]_i_1_n_2 ),
        .Q(res_verilog[6]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [6]),
        .I3(Q[2]),
        .I4(res_verilog[6]),
        .O(\FSM_onehot_next_state_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[7]_i_1_n_2 ),
        .Q(res_verilog[7]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [7]),
        .I3(Q[2]),
        .I4(res_verilog[7]),
        .O(\FSM_onehot_next_state_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[8]_i_1_n_2 ),
        .Q(res_verilog[8]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [8]),
        .I3(Q[2]),
        .I4(res_verilog[8]),
        .O(\FSM_onehot_next_state_reg[1] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\res[9]_i_1_n_2 ),
        .Q(res_verilog[9]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \res_reg[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\res_reg[31]_0 [9]),
        .I3(Q[2]),
        .I4(res_verilog[9]),
        .O(\FSM_onehot_next_state_reg[1] [9]));
  FDCE #(
    .INIT(1'b0)) 
    resrdy_reg
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\state[4]_i_1_n_2 ),
        .Q(res_verilog_rdy));
  LUT6 #(
    .INIT(64'hF3FB3FFF00080000)) 
    s_i_1
       (.I0(s_reg_0),
        .I1(s_i_3_n_2),
        .I2(\state[2]_i_1_n_2 ),
        .I3(\state[1]_i_2_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(s),
        .O(s_i_1_n_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_i_3
       (.I0(\state[4]_i_1_n_2 ),
        .I1(\state[3]_i_1_n_2 ),
        .O(s_i_3_n_2));
  FDCE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(s_i_1_n_2),
        .Q(s));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_2 ),
        .O(\state[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h0000FF0E)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_3_n_2 ),
        .I1(state[2]),
        .I2(\state[0]_i_4_n_2 ),
        .I3(state[3]),
        .I4(\state[0]_i_5_n_2 ),
        .O(\state[0]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hFDFDDDDDFCFCCC00)) 
    \state[0]_i_3 
       (.I0(\state[0]_i_6_n_2 ),
        .I1(state[0]),
        .I2(\tmpm_reg_n_2_[22] ),
        .I3(inrdy_IBUF),
        .I4(state[4]),
        .I5(state[1]),
        .O(\state[0]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h00F400C000C400C0)) 
    \state[0]_i_4 
       (.I0(p_6_in),
        .I1(state[4]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\op2[24] ),
        .O(\state[0]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'h00000000FFE00FE0)) 
    \state[0]_i_5 
       (.I0(p_6_in),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\state[4]_i_6_n_2 ),
        .I5(\state[0]_i_7_n_2 ),
        .O(\state[0]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'hFFFF0CFCAEFEAEFE)) 
    \state[0]_i_6 
       (.I0(\op1[25] ),
        .I1(\op2[24] ),
        .I2(\m2_reg_n_2_[23] ),
        .I3(\state[0]_i_3_0 ),
        .I4(\state[0]_i_3_1 ),
        .I5(\state[2]_i_8__0_n_2 ),
        .O(\state[0]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'hFFF0FFE0FFF0FFFF)) 
    \state[0]_i_7 
       (.I0(state[1]),
        .I1(p_7_in[0]),
        .I2(state[0]),
        .I3(\state[0]_i_8_n_2 ),
        .I4(p_7_in[1]),
        .I5(state[2]),
        .O(\state[0]_i_7_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[0]_i_8 
       (.I0(state[4]),
        .I1(state[3]),
        .O(\state[0]_i_8_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .O(\state[1]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'h00000000F2F200F2)) 
    \state[1]_i_2 
       (.I0(\state[1]_i_3_n_2 ),
        .I1(\state[1]_i_4_n_2 ),
        .I2(state[3]),
        .I3(\state[1]_i_5_n_2 ),
        .I4(\state[1]_i_6_n_2 ),
        .I5(\state[1]_i_7_n_2 ),
        .O(\state[1]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'hFFFF0440)) 
    \state[1]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(\op1[25] ),
        .I3(\op2[24] ),
        .I4(\state[1]_i_8_n_2 ),
        .O(\state[1]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'h0000AEA0)) 
    \state[1]_i_4 
       (.I0(\state[1]_i_9_n_2 ),
        .I1(\state_reg[2]_0 ),
        .I2(state[4]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\state[1]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \state[1]_i_5 
       (.I0(\state[4]_i_6_n_2 ),
        .I1(p_7_in[1]),
        .I2(p_7_in[0]),
        .I3(state[2]),
        .O(\state[1]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'hFAFFFBFFFFFFF0FF)) 
    \state[1]_i_6 
       (.I0(state[0]),
        .I1(p_7_in[1]),
        .I2(state[4]),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[1]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'h0010011000000100)) 
    \state[1]_i_7 
       (.I0(state[1]),
        .I1(state[4]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(p_6_in),
        .I5(inrdy_IBUF),
        .O(\state[1]_i_7_n_2 ));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    \state[1]_i_8 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(p_6_in),
        .I3(state[4]),
        .I4(state[2]),
        .O(\state[1]_i_8_n_2 ));
  LUT6 #(
    .INIT(64'hF2F0F2F0FFF0F0F0)) 
    \state[1]_i_9 
       (.I0(p_7_in[0]),
        .I1(p_7_in[1]),
        .I2(state[0]),
        .I3(state[4]),
        .I4(\tmpm_reg_n_2_[22] ),
        .I5(state[1]),
        .O(\state[1]_i_9_n_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBAB)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_2 ),
        .I1(\state[2]_i_3__0_n_2 ),
        .I2(\state[2]_i_4__0_n_2 ),
        .I3(\state[2]_i_5__0_n_2 ),
        .I4(\state[2]_i_6_n_2 ),
        .I5(state[4]),
        .O(\state[2]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_13__0 
       (.I0(\m1_reg_n_2_[7] ),
        .I1(\m1_reg_n_2_[9] ),
        .I2(\m1_reg_n_2_[18] ),
        .I3(\m1_reg_n_2_[23] ),
        .O(\state[2]_i_13__0_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_14__0 
       (.I0(\m1_reg_n_2_[17] ),
        .I1(\m1_reg_n_2_[15] ),
        .I2(\m1_reg_n_2_[13] ),
        .I3(\m1_reg_n_2_[1] ),
        .O(\state[2]_i_14__0_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_15__0 
       (.I0(\m1_reg_n_2_[14] ),
        .I1(\m1_reg_n_2_[10] ),
        .I2(\m1_reg_n_2_[16] ),
        .I3(\m1_reg_n_2_[5] ),
        .O(\state[2]_i_15__0_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_16__0 
       (.I0(\m1_reg_n_2_[4] ),
        .I1(\m1_reg_n_2_[3] ),
        .I2(\m1_reg_n_2_[6] ),
        .I3(\m1_reg_n_2_[8] ),
        .O(\state[2]_i_16__0_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_17__0 
       (.I0(\m1_reg_n_2_[12] ),
        .I1(\m1_reg_n_2_[0] ),
        .I2(\m1_reg_n_2_[20] ),
        .I3(\m1_reg_n_2_[11] ),
        .O(\state[2]_i_17__0_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_18__0 
       (.I0(\m1_reg_n_2_[21] ),
        .I1(\m1_reg_n_2_[2] ),
        .I2(\m1_reg_n_2_[19] ),
        .I3(\m1_reg_n_2_[22] ),
        .O(\state[2]_i_18__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04140010)) 
    \state[2]_i_2 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[4]),
        .O(\state[2]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[2]_i_3__0 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\state[2]_i_3__0_n_2 ));
  LUT6 #(
    .INIT(64'hAEAAAEAAEEEEAEAA)) 
    \state[2]_i_4__0 
       (.I0(state[3]),
        .I1(\state_reg[2]_0 ),
        .I2(\m2_reg_n_2_[23] ),
        .I3(\op2[24] ),
        .I4(\op1[25] ),
        .I5(\state[2]_i_8__0_n_2 ),
        .O(\state[2]_i_4__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \state[2]_i_5__0 
       (.I0(state[0]),
        .I1(p_7_in[1]),
        .I2(state[3]),
        .O(\state[2]_i_5__0_n_2 ));
  LUT5 #(
    .INIT(32'h44444000)) 
    \state[2]_i_6 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\op1[25] ),
        .I3(\op2[24] ),
        .I4(state[3]),
        .O(\state[2]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_8__0 
       (.I0(\state[2]_i_13__0_n_2 ),
        .I1(\state[2]_i_14__0_n_2 ),
        .I2(\state[2]_i_15__0_n_2 ),
        .I3(\state[2]_i_16__0_n_2 ),
        .I4(\state[2]_i_17__0_n_2 ),
        .I5(\state[2]_i_18__0_n_2 ),
        .O(\state[2]_i_8__0_n_2 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_2 ),
        .I1(state[4]),
        .I2(\state[3]_i_3_n_2 ),
        .I3(\state[4]_i_3_n_2 ),
        .I4(\state[3]_i_4_n_2 ),
        .O(\state[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[3]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(p_6_in),
        .I4(state[0]),
        .O(\state[3]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hBAA8BA00FFFFFFFF)) 
    \state[3]_i_3 
       (.I0(state[0]),
        .I1(p_7_in[1]),
        .I2(p_7_in[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\state[3]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h0000F70000000000)) 
    \state[3]_i_4 
       (.I0(\op1[25] ),
        .I1(\op2[24] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[1]),
        .O(\state[3]_i_4_n_2 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[3]_i_5 
       (.I0(op1_IBUF[2]),
        .I1(op1_IBUF[0]),
        .I2(op1_IBUF[7]),
        .I3(op1_IBUF[4]),
        .I4(\op1[28] ),
        .O(\op1[25] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[3]_i_6 
       (.I0(op2_IBUF[24]),
        .I1(op2_IBUF[23]),
        .I2(op2_IBUF[26]),
        .I3(op2_IBUF[25]),
        .I4(\op2[30] ),
        .O(\op2[24] ));
  LUT3 #(
    .INIT(8'h0B)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_2_n_2 ),
        .I1(\state[4]_i_3_n_2 ),
        .I2(\state[4]_i_4_n_2 ),
        .O(\state[4]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F33103F)) 
    \state[4]_i_2 
       (.I0(\state[4]_i_5_n_2 ),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[4]),
        .I5(state[0]),
        .O(\state[4]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5557FFFF)) 
    \state[4]_i_3 
       (.I0(state[2]),
        .I1(p_7_in[0]),
        .I2(p_7_in[1]),
        .I3(\state[4]_i_6_n_2 ),
        .I4(state[1]),
        .O(\state[4]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hFF55AA02AA00AAFF)) 
    \state[4]_i_4 
       (.I0(state[3]),
        .I1(p_7_in[1]),
        .I2(p_7_in[0]),
        .I3(state[4]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\state[4]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[4]_i_5 
       (.I0(p_7_in[1]),
        .I1(p_7_in[0]),
        .O(\state[4]_i_5_n_2 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[4]_i_6 
       (.I0(\tmpexp_reg_n_2_[2] ),
        .I1(\tmpexp_reg_n_2_[6] ),
        .I2(\tmpexp_reg_n_2_[4] ),
        .I3(\state[4]_i_7_n_2 ),
        .O(\state[4]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[4]_i_7 
       (.I0(p_6_in),
        .I1(\tmpexp_reg_n_2_[7] ),
        .I2(\tmpexp_reg_n_2_[3] ),
        .I3(\tmpexp_reg_n_2_[5] ),
        .I4(\tmpexp_reg_n_2_[1] ),
        .I5(\tmpexp_reg_n_2_[0] ),
        .O(\state[4]_i_7_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[0]_i_1_n_2 ),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[1]_i_1_n_2 ),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[2]_i_1_n_2 ),
        .Q(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[3]_i_1_n_2 ),
        .Q(state[3]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[4]_i_1_n_2 ),
        .Q(state[4]));
  LUT6 #(
    .INIT(64'h32F2323232223232)) 
    \tmpexp[0]_i_1__0 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(\tmpexp_reg_n_2_[0] ),
        .I2(\state[3]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(data0[0]),
        .O(\tmpexp[0]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hFFAAFBAAAA00C800)) 
    \tmpexp[1]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(\state[0]_i_2_n_2 ),
        .I2(data0[1]),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[2]_i_1_n_2 ),
        .I5(data1[1]),
        .O(\tmpexp[1]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hC8F8C8C8C888C8C8)) 
    \tmpexp[2]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(data1[2]),
        .I2(\state[3]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(data0[2]),
        .O(\tmpexp[2]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hC8F8C8C8C888C8C8)) 
    \tmpexp[3]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(data1[3]),
        .I2(\state[3]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(data0[3]),
        .O(\tmpexp[3]_i_1_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_3__0 
       (.I0(op1_IBUF[3]),
        .I1(op2_IBUF[26]),
        .O(\tmpexp[3]_i_3__0_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_4__0 
       (.I0(op1_IBUF[2]),
        .I1(op2_IBUF[25]),
        .O(\tmpexp[3]_i_4__0_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_5__0 
       (.I0(op1_IBUF[1]),
        .I1(op2_IBUF[24]),
        .O(\tmpexp[3]_i_5__0_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_6__0 
       (.I0(op1_IBUF[0]),
        .I1(op2_IBUF[23]),
        .O(\tmpexp[3]_i_6__0_n_2 ));
  LUT6 #(
    .INIT(64'hC8F8C8C8C888C8C8)) 
    \tmpexp[4]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(data1[4]),
        .I2(\state[3]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(data0[4]),
        .O(\tmpexp[4]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hC8F8C8C8C888C8C8)) 
    \tmpexp[5]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(data1[5]),
        .I2(\state[3]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(data0[5]),
        .O(\tmpexp[5]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hFFAAFBAAAA00C800)) 
    \tmpexp[6]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(\state[0]_i_2_n_2 ),
        .I2(data0[6]),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[2]_i_1_n_2 ),
        .I5(data1[6]),
        .O(\tmpexp[6]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hC8F8C8C8C888C8C8)) 
    \tmpexp[7]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(data1[7]),
        .I2(\state[3]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(data0[7]),
        .O(\tmpexp[7]_i_1_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmpexp[7]_i_3 
       (.I0(op2_IBUF[30]),
        .I1(op1_IBUF[7]),
        .O(\tmpexp[7]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_4 
       (.I0(op1_IBUF[6]),
        .I1(op2_IBUF[29]),
        .O(\tmpexp[7]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_5__0 
       (.I0(op1_IBUF[5]),
        .I1(op2_IBUF[28]),
        .O(\tmpexp[7]_i_5__0_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_6__0 
       (.I0(op1_IBUF[4]),
        .I1(op2_IBUF[27]),
        .O(\tmpexp[7]_i_6__0_n_2 ));
  LUT5 #(
    .INIT(32'h50270204)) 
    \tmpexp[8]_i_1 
       (.I0(\state[0]_i_2_n_2 ),
        .I1(\state[4]_i_1_n_2 ),
        .I2(\state[2]_i_1_n_2 ),
        .I3(\state[1]_i_2_n_2 ),
        .I4(\state[3]_i_1_n_2 ),
        .O(\tmpexp[8]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hCCF88888CCCC8888)) 
    \tmpexp[8]_i_2 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(data1[8]),
        .I2(data0[8]),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[3]_i_1_n_2 ),
        .I5(\state[0]_i_2_n_2 ),
        .O(\tmpexp[8]_i_2_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmpexp[8]_i_4__0 
       (.I0(op2_IBUF[30]),
        .O(\tmpexp[8]_i_4__0_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[0]_i_1__0_n_2 ),
        .Q(\tmpexp_reg_n_2_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[1]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[2]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[3]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[3] ));
  CARRY4 \tmpexp_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\tmpexp_reg[3]_i_2_n_2 ,\tmpexp_reg[3]_i_2_n_3 ,\tmpexp_reg[3]_i_2_n_4 ,\tmpexp_reg[3]_i_2_n_5 }),
        .CYINIT(1'b1),
        .DI(op1_IBUF[3:0]),
        .O(data0[3:0]),
        .S({\tmpexp[3]_i_3__0_n_2 ,\tmpexp[3]_i_4__0_n_2 ,\tmpexp[3]_i_5__0_n_2 ,\tmpexp[3]_i_6__0_n_2 }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[4]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[5]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[6]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[7]_i_1_n_2 ),
        .Q(\tmpexp_reg_n_2_[7] ));
  CARRY4 \tmpexp_reg[7]_i_2 
       (.CI(\tmpexp_reg[3]_i_2_n_2 ),
        .CO({\tmpexp_reg[7]_i_2_n_2 ,\tmpexp_reg[7]_i_2_n_3 ,\tmpexp_reg[7]_i_2_n_4 ,\tmpexp_reg[7]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI(op1_IBUF[7:4]),
        .O(data0[7:4]),
        .S({\tmpexp[7]_i_3_n_2 ,\tmpexp[7]_i_4_n_2 ,\tmpexp[7]_i_5__0_n_2 ,\tmpexp[7]_i_6__0_n_2 }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[8]_i_2_n_2 ),
        .Q(p_6_in));
  CARRY4 \tmpexp_reg[8]_i_3 
       (.CI(\tmpexp_reg[7]_i_2_n_2 ),
        .CO(\NLW_tmpexp_reg[8]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmpexp_reg[8]_i_3_O_UNCONNECTED [3:1],data0[8]}),
        .S({1'b0,1'b0,1'b0,\tmpexp[8]_i_4__0_n_2 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmpm0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_2_[23] ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmpm0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\m1_reg_n_2_[16] ,\m1_reg_n_2_[15] ,\m1_reg_n_2_[14] ,\m1_reg_n_2_[13] ,\m1_reg_n_2_[12] ,\m1_reg_n_2_[11] ,\m1_reg_n_2_[10] ,\m1_reg_n_2_[9] ,\m1_reg_n_2_[8] ,\m1_reg_n_2_[7] ,\m1_reg_n_2_[6] ,\m1_reg_n_2_[5] ,\m1_reg_n_2_[4] ,\m1_reg_n_2_[3] ,\m1_reg_n_2_[2] ,\m1_reg_n_2_[1] ,\m1_reg_n_2_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmpm0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmpm0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmpm0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmpm0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmpm0_OVERFLOW_UNCONNECTED),
        .P({tmpm0_n_60,tmpm0_n_61,tmpm0_n_62,tmpm0_n_63,tmpm0_n_64,tmpm0_n_65,tmpm0_n_66,tmpm0_n_67,tmpm0_n_68,tmpm0_n_69,tmpm0_n_70,tmpm0_n_71,tmpm0_n_72,tmpm0_n_73,tmpm0_n_74,tmpm0_n_75,tmpm0_n_76,tmpm0_n_77,tmpm0_n_78,tmpm0_n_79,tmpm0_n_80,tmpm0_n_81,tmpm0_n_82,tmpm0_n_83,tmpm0_n_84,tmpm0_n_85,tmpm0_n_86,tmpm0_n_87,tmpm0_n_88,tmpm0_n_89,tmpm0_n_90,tmpm0_n_91,tmpm0_n_92,tmpm0_n_93,tmpm0_n_94,tmpm0_n_95,tmpm0_n_96,tmpm0_n_97,tmpm0_n_98,tmpm0_n_99,tmpm0_n_100,tmpm0_n_101,tmpm0_n_102,tmpm0_n_103,tmpm0_n_104,tmpm0_n_105,tmpm0_n_106,tmpm0_n_107}),
        .PATTERNBDETECT(NLW_tmpm0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmpm0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmpm0_n_108,tmpm0_n_109,tmpm0_n_110,tmpm0_n_111,tmpm0_n_112,tmpm0_n_113,tmpm0_n_114,tmpm0_n_115,tmpm0_n_116,tmpm0_n_117,tmpm0_n_118,tmpm0_n_119,tmpm0_n_120,tmpm0_n_121,tmpm0_n_122,tmpm0_n_123,tmpm0_n_124,tmpm0_n_125,tmpm0_n_126,tmpm0_n_127,tmpm0_n_128,tmpm0_n_129,tmpm0_n_130,tmpm0_n_131,tmpm0_n_132,tmpm0_n_133,tmpm0_n_134,tmpm0_n_135,tmpm0_n_136,tmpm0_n_137,tmpm0_n_138,tmpm0_n_139,tmpm0_n_140,tmpm0_n_141,tmpm0_n_142,tmpm0_n_143,tmpm0_n_144,tmpm0_n_145,tmpm0_n_146,tmpm0_n_147,tmpm0_n_148,tmpm0_n_149,tmpm0_n_150,tmpm0_n_151,tmpm0_n_152,tmpm0_n_153,tmpm0_n_154,tmpm0_n_155}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmpm0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    tmpm0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_2_[23] ,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmpm0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m1_reg_n_2_[23] ,\m1_reg_n_2_[22] ,\m1_reg_n_2_[21] ,\m1_reg_n_2_[20] ,\m1_reg_n_2_[19] ,\m1_reg_n_2_[18] ,\m1_reg_n_2_[17] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmpm0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmpm0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmpm0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmpm0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmpm0__0_OVERFLOW_UNCONNECTED),
        .P({NLW_tmpm0__0_P_UNCONNECTED[47:31],tmpm0__0_n_77,tmpm0__0_n_78,tmpm0__0_n_79,tmpm0__0_n_80,tmpm0__0_n_81,tmpm0__0_n_82,tmpm0__0_n_83,tmpm0__0_n_84,tmpm0__0_n_85,tmpm0__0_n_86,tmpm0__0_n_87,tmpm0__0_n_88,tmpm0__0_n_89,tmpm0__0_n_90,tmpm0__0_n_91,tmpm0__0_n_92,tmpm0__0_n_93,tmpm0__0_n_94,tmpm0__0_n_95,tmpm0__0_n_96,tmpm0__0_n_97,tmpm0__0_n_98,tmpm0__0_n_99,tmpm0__0_n_100,tmpm0__0_n_101,tmpm0__0_n_102,tmpm0__0_n_103,tmpm0__0_n_104,tmpm0__0_n_105,tmpm0__0_n_106,tmpm0__0_n_107}),
        .PATTERNBDETECT(NLW_tmpm0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmpm0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmpm0_n_108,tmpm0_n_109,tmpm0_n_110,tmpm0_n_111,tmpm0_n_112,tmpm0_n_113,tmpm0_n_114,tmpm0_n_115,tmpm0_n_116,tmpm0_n_117,tmpm0_n_118,tmpm0_n_119,tmpm0_n_120,tmpm0_n_121,tmpm0_n_122,tmpm0_n_123,tmpm0_n_124,tmpm0_n_125,tmpm0_n_126,tmpm0_n_127,tmpm0_n_128,tmpm0_n_129,tmpm0_n_130,tmpm0_n_131,tmpm0_n_132,tmpm0_n_133,tmpm0_n_134,tmpm0_n_135,tmpm0_n_136,tmpm0_n_137,tmpm0_n_138,tmpm0_n_139,tmpm0_n_140,tmpm0_n_141,tmpm0_n_142,tmpm0_n_143,tmpm0_n_144,tmpm0_n_145,tmpm0_n_146,tmpm0_n_147,tmpm0_n_148,tmpm0_n_149,tmpm0_n_150,tmpm0_n_151,tmpm0_n_152,tmpm0_n_153,tmpm0_n_154,tmpm0_n_155}),
        .PCOUT(NLW_tmpm0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmpm0__0_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h11100010)) 
    \tmpm[0]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[1] ),
        .I3(\state[0]_i_2_n_2 ),
        .I4(tmpm0_n_107),
        .O(\tmpm[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[10]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[9] ),
        .I3(tmpm0_n_97),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[11] ),
        .O(\tmpm[10]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[11]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[10] ),
        .I3(tmpm0_n_96),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[12] ),
        .O(\tmpm[11]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[12]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[11] ),
        .I3(tmpm0_n_95),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[13] ),
        .O(\tmpm[12]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[13]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[12] ),
        .I3(tmpm0_n_94),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[14] ),
        .O(\tmpm[13]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[14]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[13] ),
        .I3(tmpm0_n_93),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[15] ),
        .O(\tmpm[14]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[15]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[14] ),
        .I3(tmpm0_n_92),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[16] ),
        .O(\tmpm[15]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[16]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[15] ),
        .I3(tmpm0_n_91),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[17] ),
        .O(\tmpm[16]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[17]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[16] ),
        .I3(tmpm0__0_n_107),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[18] ),
        .O(\tmpm[17]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[18]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[17] ),
        .I3(tmpm0__0_n_106),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[19] ),
        .O(\tmpm[18]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[19]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[18] ),
        .I3(tmpm0__0_n_105),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[20] ),
        .O(\tmpm[19]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[1]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[0] ),
        .I3(tmpm0_n_106),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[2] ),
        .O(\tmpm[1]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[20]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[19] ),
        .I3(tmpm0__0_n_104),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[21] ),
        .O(\tmpm[20]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h01404404)) 
    \tmpm[21]_i_1 
       (.I0(\state[4]_i_1_n_2 ),
        .I1(\state[3]_i_1_n_2 ),
        .I2(\state[2]_i_1_n_2 ),
        .I3(\state[0]_i_2_n_2 ),
        .I4(\state[1]_i_2_n_2 ),
        .O(\tmpm[21]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[21]_i_2 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[20] ),
        .I3(tmpm0__0_n_103),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[22] ),
        .O(\tmpm[21]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h888F888088BF88B0)) 
    \tmpm[22]_i_1 
       (.I0(\tmpm[22]_i_2_n_2 ),
        .I1(\state[3]_i_1_n_2 ),
        .I2(\state[0]_i_2_n_2 ),
        .I3(\state[1]_i_2_n_2 ),
        .I4(\tmpm_reg_n_2_[23] ),
        .I5(\tmpm_reg_n_2_[22] ),
        .O(\tmpm[22]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[22]_i_2 
       (.I0(\tmpm_reg_n_2_[21] ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(tmpm0__0_n_102),
        .O(\tmpm[22]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[23]_i_1 
       (.I0(tmpm0__1[1]),
        .I1(\tmpm_reg_n_2_[24] ),
        .I2(\tmpm[23]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[23]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[23]_i_2 
       (.I0(tmpm0__0_n_101),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[22] ),
        .O(\tmpm[23]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[24]_i_1 
       (.I0(tmpm0__1[2]),
        .I1(\tmpm_reg_n_2_[25] ),
        .I2(\tmpm[24]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[24]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[24]_i_2 
       (.I0(tmpm0__0_n_100),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[23] ),
        .O(\tmpm[24]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[25]_i_1 
       (.I0(tmpm0__1[3]),
        .I1(\tmpm_reg_n_2_[26] ),
        .I2(\tmpm[25]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[25]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[25]_i_2 
       (.I0(tmpm0__0_n_99),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[24] ),
        .O(\tmpm[25]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[26]_i_1 
       (.I0(tmpm0__1[4]),
        .I1(\tmpm_reg_n_2_[27] ),
        .I2(\tmpm[26]_i_3_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[26]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[26]_i_3 
       (.I0(tmpm0__0_n_98),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[25] ),
        .O(\tmpm[26]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[27]_i_1 
       (.I0(tmpm0__1[5]),
        .I1(\tmpm_reg_n_2_[28] ),
        .I2(\tmpm[27]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[27]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[27]_i_2 
       (.I0(tmpm0__0_n_97),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[26] ),
        .O(\tmpm[27]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[28]_i_1 
       (.I0(tmpm0__1[6]),
        .I1(\tmpm_reg_n_2_[29] ),
        .I2(\tmpm[28]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[28]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[28]_i_2 
       (.I0(tmpm0__0_n_96),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[27] ),
        .O(\tmpm[28]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[29]_i_1 
       (.I0(tmpm0__1[7]),
        .I1(\tmpm_reg_n_2_[30] ),
        .I2(\tmpm[29]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[29]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[29]_i_2 
       (.I0(tmpm0__0_n_95),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[28] ),
        .O(\tmpm[29]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[2]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[1] ),
        .I3(tmpm0_n_105),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[3] ),
        .O(\tmpm[2]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[30]_i_1 
       (.I0(tmpm0__1[8]),
        .I1(\tmpm_reg_n_2_[31] ),
        .I2(\tmpm[30]_i_3_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[30]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[30]_i_3 
       (.I0(tmpm0__0_n_94),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[29] ),
        .O(\tmpm[30]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[31]_i_1 
       (.I0(tmpm0__1[9]),
        .I1(\tmpm_reg_n_2_[32] ),
        .I2(\tmpm[31]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[31]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[31]_i_2 
       (.I0(tmpm0__0_n_93),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[30] ),
        .O(\tmpm[31]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[32]_i_1 
       (.I0(tmpm0__1[10]),
        .I1(\tmpm_reg_n_2_[33] ),
        .I2(\tmpm[32]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[32]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[32]_i_2 
       (.I0(tmpm0__0_n_92),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[31] ),
        .O(\tmpm[32]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[33]_i_1 
       (.I0(tmpm0__1[11]),
        .I1(\tmpm_reg_n_2_[34] ),
        .I2(\tmpm[33]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[33]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[33]_i_2 
       (.I0(tmpm0__0_n_91),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[32] ),
        .O(\tmpm[33]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[34]_i_1 
       (.I0(tmpm0__1[12]),
        .I1(\tmpm_reg_n_2_[35] ),
        .I2(\tmpm[34]_i_3_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[34]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[34]_i_3 
       (.I0(tmpm0__0_n_90),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[33] ),
        .O(\tmpm[34]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[35]_i_1 
       (.I0(tmpm0__1[13]),
        .I1(\tmpm_reg_n_2_[36] ),
        .I2(\tmpm[35]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[35]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[35]_i_2 
       (.I0(tmpm0__0_n_89),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[34] ),
        .O(\tmpm[35]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[36]_i_1 
       (.I0(tmpm0__1[14]),
        .I1(\tmpm_reg_n_2_[37] ),
        .I2(\tmpm[36]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[36]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[36]_i_2 
       (.I0(tmpm0__0_n_88),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[35] ),
        .O(\tmpm[36]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[37]_i_1 
       (.I0(tmpm0__1[15]),
        .I1(\tmpm_reg_n_2_[38] ),
        .I2(\tmpm[37]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[37]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[37]_i_2 
       (.I0(tmpm0__0_n_87),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[36] ),
        .O(\tmpm[37]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[38]_i_1 
       (.I0(tmpm0__1[16]),
        .I1(\tmpm_reg_n_2_[39] ),
        .I2(\tmpm[38]_i_3_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[38]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[38]_i_3 
       (.I0(tmpm0__0_n_86),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[37] ),
        .O(\tmpm[38]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[39]_i_1 
       (.I0(tmpm0__1[17]),
        .I1(\tmpm_reg_n_2_[40] ),
        .I2(\tmpm[39]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[39]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[39]_i_2 
       (.I0(tmpm0__0_n_85),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[38] ),
        .O(\tmpm[39]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[3]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[2] ),
        .I3(tmpm0_n_104),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[4] ),
        .O(\tmpm[3]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[40]_i_1 
       (.I0(tmpm0__1[18]),
        .I1(\tmpm_reg_n_2_[41] ),
        .I2(\tmpm[40]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[40]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[40]_i_2 
       (.I0(tmpm0__0_n_84),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[39] ),
        .O(\tmpm[40]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[41]_i_1 
       (.I0(tmpm0__1[19]),
        .I1(\tmpm_reg_n_2_[42] ),
        .I2(\tmpm[41]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[41]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[41]_i_2 
       (.I0(tmpm0__0_n_83),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[40] ),
        .O(\tmpm[41]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[42]_i_1 
       (.I0(tmpm0__1[20]),
        .I1(\tmpm_reg_n_2_[43] ),
        .I2(\tmpm[42]_i_3_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[42]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[42]_i_3 
       (.I0(tmpm0__0_n_82),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[41] ),
        .O(\tmpm[42]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[43]_i_1 
       (.I0(tmpm0__1[21]),
        .I1(\tmpm_reg_n_2_[44] ),
        .I2(\tmpm[43]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[43]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[43]_i_2 
       (.I0(tmpm0__0_n_81),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[42] ),
        .O(\tmpm[43]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[44]_i_1 
       (.I0(tmpm0__1[22]),
        .I1(\tmpm_reg_n_2_[45] ),
        .I2(\tmpm[44]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[44]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[44]_i_2 
       (.I0(tmpm0__0_n_80),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[43] ),
        .O(\tmpm[44]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FCCAAAA)) 
    \tmpm[45]_i_1 
       (.I0(p_7_in[0]),
        .I1(tmpm0__1[23]),
        .I2(\tmpm[45]_i_2_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[45]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \tmpm[45]_i_2 
       (.I0(tmpm0__0_n_79),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[44] ),
        .O(\tmpm[45]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'h0F000F000FAACCCC)) 
    \tmpm[46]_i_1 
       (.I0(tmpm0__1[24]),
        .I1(p_7_in[1]),
        .I2(\tmpm[46]_i_3_n_2 ),
        .I3(\state[3]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\state[1]_i_2_n_2 ),
        .O(\tmpm[46]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h47)) 
    \tmpm[46]_i_3 
       (.I0(\tmpm_reg_n_2_[45] ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(tmpm0__0_n_78),
        .O(\tmpm[46]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'h44560844)) 
    \tmpm[47]_i_1__0 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[3]_i_1_n_2 ),
        .I2(\state[4]_i_1_n_2 ),
        .I3(\state[2]_i_1_n_2 ),
        .I4(\state[0]_i_2_n_2 ),
        .O(\tmpm[47]_i_1__0_n_2 ));
  LUT5 #(
    .INIT(32'h8888B800)) 
    \tmpm[47]_i_2 
       (.I0(p_7_in[0]),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm[47]_i_3_n_2 ),
        .I3(\state[0]_i_2_n_2 ),
        .I4(\state[1]_i_2_n_2 ),
        .O(\tmpm[47]_i_2_n_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[47]_i_3 
       (.I0(tmpm0__0_n_77),
        .I1(\state[3]_i_1_n_2 ),
        .I2(tmpm0__1[25]),
        .O(\tmpm[47]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[4]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[3] ),
        .I3(tmpm0_n_103),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[5] ),
        .O(\tmpm[4]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[5]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[4] ),
        .I3(tmpm0_n_102),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[6] ),
        .O(\tmpm[5]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[6]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[5] ),
        .I3(tmpm0_n_101),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[7] ),
        .O(\tmpm[6]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[7]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[6] ),
        .I3(tmpm0_n_100),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[8] ),
        .O(\tmpm[7]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[8]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[7] ),
        .I3(tmpm0_n_99),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[9] ),
        .O(\tmpm[8]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hD1C0D1D1D1C0C0C0)) 
    \tmpm[9]_i_1 
       (.I0(\state[1]_i_2_n_2 ),
        .I1(\state[2]_i_1_n_2 ),
        .I2(\tmpm_reg_n_2_[8] ),
        .I3(tmpm0_n_98),
        .I4(\state[0]_i_2_n_2 ),
        .I5(\tmpm_reg_n_2_[10] ),
        .O(\tmpm[9]_i_1_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[0]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[10]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[11]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[12]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[13]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[14]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[15]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[16]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[17]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[18]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[19]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[1]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[20]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[21]_i_2_n_2 ),
        .Q(\tmpm_reg_n_2_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[22]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[23]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[24]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[25]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[26]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[26] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[26]_i_2 
       (.CI(1'b0),
        .CO({\tmpm_reg[26]_i_2_n_2 ,\tmpm_reg[26]_i_2_n_3 ,\tmpm_reg[26]_i_2_n_4 ,\tmpm_reg[26]_i_2_n_5 }),
        .CYINIT(\tmpm_reg_n_2_[22] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[4:1]),
        .S({\tmpm_reg_n_2_[26] ,\tmpm_reg_n_2_[25] ,\tmpm_reg_n_2_[24] ,\tmpm_reg_n_2_[23] }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[27]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[28]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[29]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[2]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[30]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[30] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[30]_i_2 
       (.CI(\tmpm_reg[26]_i_2_n_2 ),
        .CO({\tmpm_reg[30]_i_2_n_2 ,\tmpm_reg[30]_i_2_n_3 ,\tmpm_reg[30]_i_2_n_4 ,\tmpm_reg[30]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[8:5]),
        .S({\tmpm_reg_n_2_[30] ,\tmpm_reg_n_2_[29] ,\tmpm_reg_n_2_[28] ,\tmpm_reg_n_2_[27] }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[31]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[32]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[33]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[34]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[34] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[34]_i_2 
       (.CI(\tmpm_reg[30]_i_2_n_2 ),
        .CO({\tmpm_reg[34]_i_2_n_2 ,\tmpm_reg[34]_i_2_n_3 ,\tmpm_reg[34]_i_2_n_4 ,\tmpm_reg[34]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[12:9]),
        .S({\tmpm_reg_n_2_[34] ,\tmpm_reg_n_2_[33] ,\tmpm_reg_n_2_[32] ,\tmpm_reg_n_2_[31] }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[35]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[36]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[37]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[38]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[38] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[38]_i_2 
       (.CI(\tmpm_reg[34]_i_2_n_2 ),
        .CO({\tmpm_reg[38]_i_2_n_2 ,\tmpm_reg[38]_i_2_n_3 ,\tmpm_reg[38]_i_2_n_4 ,\tmpm_reg[38]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[16:13]),
        .S({\tmpm_reg_n_2_[38] ,\tmpm_reg_n_2_[37] ,\tmpm_reg_n_2_[36] ,\tmpm_reg_n_2_[35] }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[39]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[3]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[40]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[41]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[42]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[42] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[42]_i_2 
       (.CI(\tmpm_reg[38]_i_2_n_2 ),
        .CO({\tmpm_reg[42]_i_2_n_2 ,\tmpm_reg[42]_i_2_n_3 ,\tmpm_reg[42]_i_2_n_4 ,\tmpm_reg[42]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[20:17]),
        .S({\tmpm_reg_n_2_[42] ,\tmpm_reg_n_2_[41] ,\tmpm_reg_n_2_[40] ,\tmpm_reg_n_2_[39] }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[43]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[44]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[44] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[45]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[46]_i_1_n_2 ),
        .Q(p_7_in[0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[46]_i_2 
       (.CI(\tmpm_reg[42]_i_2_n_2 ),
        .CO({\tmpm_reg[46]_i_2_n_2 ,\tmpm_reg[46]_i_2_n_3 ,\tmpm_reg[46]_i_2_n_4 ,\tmpm_reg[46]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[24:21]),
        .S({p_7_in[0],\tmpm_reg_n_2_[45] ,\tmpm_reg_n_2_[44] ,\tmpm_reg_n_2_[43] }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[47]_i_1__0_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[47]_i_2_n_2 ),
        .Q(p_7_in[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[47]_i_4 
       (.CI(\tmpm_reg[46]_i_2_n_2 ),
        .CO(\NLW_tmpm_reg[47]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmpm_reg[47]_i_4_O_UNCONNECTED [3:1],tmpm0__1[25]}),
        .S({1'b0,1'b0,1'b0,p_7_in[1]}));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[4]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[5]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[6]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[7]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[8]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpm[21]_i_1_n_2 ),
        .CLR(reset_IBUF),
        .D(\tmpm[9]_i_1_n_2 ),
        .Q(\tmpm_reg_n_2_[9] ));
endmodule

module mul_ieee754_vhdl
   (\op1[24] ,
    \op2[28] ,
    \state[2]_i_12_0 ,
    \op1[31] ,
    D,
    clk_IBUF_BUFG,
    op1_IBUF,
    op2_IBUF,
    reset_IBUF,
    \state_reg[2]_0 ,
    \state_reg[2]_1 ,
    g0_b0_i_1_0,
    g0_b0_i_1_1,
    inrdy_IBUF,
    Q);
  output \op1[24] ;
  output \op2[28] ;
  output \state[2]_i_12_0 ;
  output \op1[31] ;
  output [31:0]D;
  input clk_IBUF_BUFG;
  input [31:0]op1_IBUF;
  input [31:0]op2_IBUF;
  input reset_IBUF;
  input \state_reg[2]_0 ;
  input \state_reg[2]_1 ;
  input g0_b0_i_1_0;
  input g0_b0_i_1_1;
  input [0:0]inrdy_IBUF;
  input [0:0]Q;

  wire [31:0]D;
  wire [47:22]L;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [8:1]data0;
  wire [8:1]data1;
  wire [7:0]exp;
  wire exp0;
  wire \exp[0]_i_1_n_2 ;
  wire \exp[1]_i_1_n_2 ;
  wire \exp[2]_i_1_n_2 ;
  wire \exp[3]_i_1_n_2 ;
  wire \exp[4]_i_1_n_2 ;
  wire \exp[5]_i_1_n_2 ;
  wire \exp[6]_i_1_n_2 ;
  wire \exp[7]_i_1__0_n_2 ;
  wire g0_b0__0__0_n_2;
  wire g0_b0_i_10_n_2;
  wire g0_b0_i_11_n_2;
  wire g0_b0_i_12_n_2;
  wire g0_b0_i_13_n_2;
  wire g0_b0_i_15_n_2;
  wire g0_b0_i_17_n_2;
  wire g0_b0_i_18_n_2;
  wire g0_b0_i_19_n_2;
  wire g0_b0_i_1_0;
  wire g0_b0_i_1_1;
  wire g0_b0_i_1_n_2;
  wire g0_b0_i_2_n_2;
  wire g0_b0_i_3_n_2;
  wire g0_b0_i_4_n_2;
  wire g0_b0_i_5_n_2;
  wire g0_b0_i_6_n_2;
  wire g0_b0_i_7_n_2;
  wire g0_b0_i_8_n_2;
  wire g0_b0_i_9_n_2;
  wire [0:0]inrdy_IBUF;
  wire [22:0]m;
  wire m0;
  wire [23:0]m1;
  wire \m1[22]_i_1_n_2 ;
  wire \m1[23]_i_1__0_n_2 ;
  wire \m1[23]_i_2_n_2 ;
  wire [23:0]m2;
  wire [0:0]m20;
  wire \m2[23]_i_1_n_2 ;
  wire \m[21]_i_1__0_n_2 ;
  wire \m[22]_i_1_n_2 ;
  wire \m[22]_i_2_n_2 ;
  wire \m[22]_i_3_n_2 ;
  wire \m[22]_i_4_n_2 ;
  wire multOp__0_n_100;
  wire multOp__0_n_101;
  wire multOp__0_n_102;
  wire multOp__0_n_103;
  wire multOp__0_n_104;
  wire multOp__0_n_105;
  wire multOp__0_n_106;
  wire multOp__0_n_107;
  wire multOp__0_n_77;
  wire multOp__0_n_78;
  wire multOp__0_n_79;
  wire multOp__0_n_80;
  wire multOp__0_n_81;
  wire multOp__0_n_82;
  wire multOp__0_n_83;
  wire multOp__0_n_84;
  wire multOp__0_n_85;
  wire multOp__0_n_86;
  wire multOp__0_n_87;
  wire multOp__0_n_88;
  wire multOp__0_n_89;
  wire multOp__0_n_90;
  wire multOp__0_n_91;
  wire multOp__0_n_92;
  wire multOp__0_n_93;
  wire multOp__0_n_94;
  wire multOp__0_n_95;
  wire multOp__0_n_96;
  wire multOp__0_n_97;
  wire multOp__0_n_98;
  wire multOp__0_n_99;
  wire multOp_i_10_n_2;
  wire multOp_i_11_n_2;
  wire multOp_i_12_n_2;
  wire multOp_i_13_n_2;
  wire multOp_i_14_n_2;
  wire multOp_i_15_n_2;
  wire multOp_i_16_n_2;
  wire multOp_i_17_n_2;
  wire multOp_i_1_n_2;
  wire multOp_i_2_n_2;
  wire multOp_i_3_n_2;
  wire multOp_i_4_n_2;
  wire multOp_i_5_n_2;
  wire multOp_i_6_n_2;
  wire multOp_i_7_n_2;
  wire multOp_i_8_n_2;
  wire multOp_i_9_n_2;
  wire multOp_n_100;
  wire multOp_n_101;
  wire multOp_n_102;
  wire multOp_n_103;
  wire multOp_n_104;
  wire multOp_n_105;
  wire multOp_n_106;
  wire multOp_n_107;
  wire multOp_n_108;
  wire multOp_n_109;
  wire multOp_n_110;
  wire multOp_n_111;
  wire multOp_n_112;
  wire multOp_n_113;
  wire multOp_n_114;
  wire multOp_n_115;
  wire multOp_n_116;
  wire multOp_n_117;
  wire multOp_n_118;
  wire multOp_n_119;
  wire multOp_n_120;
  wire multOp_n_121;
  wire multOp_n_122;
  wire multOp_n_123;
  wire multOp_n_124;
  wire multOp_n_125;
  wire multOp_n_126;
  wire multOp_n_127;
  wire multOp_n_128;
  wire multOp_n_129;
  wire multOp_n_130;
  wire multOp_n_131;
  wire multOp_n_132;
  wire multOp_n_133;
  wire multOp_n_134;
  wire multOp_n_135;
  wire multOp_n_136;
  wire multOp_n_137;
  wire multOp_n_138;
  wire multOp_n_139;
  wire multOp_n_140;
  wire multOp_n_141;
  wire multOp_n_142;
  wire multOp_n_143;
  wire multOp_n_144;
  wire multOp_n_145;
  wire multOp_n_146;
  wire multOp_n_147;
  wire multOp_n_148;
  wire multOp_n_149;
  wire multOp_n_150;
  wire multOp_n_151;
  wire multOp_n_152;
  wire multOp_n_153;
  wire multOp_n_154;
  wire multOp_n_155;
  wire multOp_n_60;
  wire multOp_n_61;
  wire multOp_n_62;
  wire multOp_n_63;
  wire multOp_n_64;
  wire multOp_n_65;
  wire multOp_n_66;
  wire multOp_n_67;
  wire multOp_n_68;
  wire multOp_n_69;
  wire multOp_n_70;
  wire multOp_n_71;
  wire multOp_n_72;
  wire multOp_n_73;
  wire multOp_n_74;
  wire multOp_n_75;
  wire multOp_n_76;
  wire multOp_n_77;
  wire multOp_n_78;
  wire multOp_n_79;
  wire multOp_n_80;
  wire multOp_n_81;
  wire multOp_n_82;
  wire multOp_n_83;
  wire multOp_n_84;
  wire multOp_n_85;
  wire multOp_n_86;
  wire multOp_n_87;
  wire multOp_n_88;
  wire multOp_n_89;
  wire multOp_n_90;
  wire multOp_n_91;
  wire multOp_n_92;
  wire multOp_n_93;
  wire multOp_n_94;
  wire multOp_n_95;
  wire multOp_n_96;
  wire multOp_n_97;
  wire multOp_n_98;
  wire multOp_n_99;
  wire [4:0]next_state;
  wire \op1[24] ;
  wire \op1[31] ;
  wire [31:0]op1_IBUF;
  wire \op2[28] ;
  wire [31:0]op2_IBUF;
  wire p_1_out_carry__0_i_1__0_n_2;
  wire p_1_out_carry__0_i_2__0_n_2;
  wire p_1_out_carry__0_i_3__0_n_2;
  wire p_1_out_carry__0_i_4__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__0_n_4;
  wire p_1_out_carry__0_n_5;
  wire p_1_out_carry_i_1__0_n_2;
  wire p_1_out_carry_i_2__0_n_2;
  wire p_1_out_carry_i_3__0_n_2;
  wire p_1_out_carry_i_4__0_n_2;
  wire p_1_out_carry_i_5__0_n_2;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire p_1_out_carry_n_4;
  wire p_1_out_carry_n_5;
  wire [47:23]plusOp;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__2_n_4;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__3_n_4;
  wire plusOp_carry__3_n_5;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__4_n_4;
  wire plusOp_carry__4_n_5;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire \res[31]_i_1__0_n_2 ;
  wire [31:0]res_vhdl;
  wire reset_IBUF;
  wire s__0;
  wire s_i_1__0_n_2;
  wire s_i_2_n_2;
  wire [4:0]state;
  wire \state[0]_i_2__0_n_2 ;
  wire \state[0]_i_3__0_n_2 ;
  wire \state[0]_i_4__0_n_2 ;
  wire \state[0]_i_5__0_n_2 ;
  wire \state[0]_i_6__0_n_2 ;
  wire \state[0]_i_7__0_n_2 ;
  wire \state[0]_i_8__0_n_2 ;
  wire \state[0]_i_9_n_2 ;
  wire \state[2]_i_10__0_n_2 ;
  wire \state[2]_i_10_n_2 ;
  wire \state[2]_i_11__0_n_2 ;
  wire \state[2]_i_11_n_2 ;
  wire \state[2]_i_12_0 ;
  wire \state[2]_i_12__0_n_2 ;
  wire \state[2]_i_12_n_2 ;
  wire \state[2]_i_13_n_2 ;
  wire \state[2]_i_14_n_2 ;
  wire \state[2]_i_15_n_2 ;
  wire \state[2]_i_16_n_2 ;
  wire \state[2]_i_17_n_2 ;
  wire \state[2]_i_18_n_2 ;
  wire \state[2]_i_19_n_2 ;
  wire \state[2]_i_20_n_2 ;
  wire \state[2]_i_2__0_n_2 ;
  wire \state[2]_i_3_n_2 ;
  wire \state[2]_i_4_n_2 ;
  wire \state[2]_i_5_n_2 ;
  wire \state[2]_i_6__0_n_2 ;
  wire \state[2]_i_7__0_n_2 ;
  wire \state[2]_i_8_n_2 ;
  wire \state[2]_i_9__0_n_2 ;
  wire \state[2]_i_9_n_2 ;
  wire \state[4]_i_2__0_n_2 ;
  wire \state[4]_i_3__0_n_2 ;
  wire \state[4]_i_4__0_n_2 ;
  wire \state[4]_i_5__0_n_2 ;
  wire \state[4]_i_6__0_n_2 ;
  wire \state[4]_i_7__0_n_2 ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire [8:0]tmpexp;
  wire tmpexp0;
  wire \tmpexp[0]_i_2_n_2 ;
  wire \tmpexp[3]_i_3_n_2 ;
  wire \tmpexp[3]_i_4_n_2 ;
  wire \tmpexp[3]_i_5_n_2 ;
  wire \tmpexp[3]_i_6_n_2 ;
  wire \tmpexp[7]_i_2_n_2 ;
  wire \tmpexp[7]_i_4__0_n_2 ;
  wire \tmpexp[7]_i_5_n_2 ;
  wire \tmpexp[7]_i_6_n_2 ;
  wire \tmpexp[7]_i_7_n_2 ;
  wire \tmpexp[8]_i_2__0_n_2 ;
  wire \tmpexp[8]_i_3_n_2 ;
  wire \tmpexp[8]_i_4_n_2 ;
  wire \tmpexp[8]_i_6_n_2 ;
  wire \tmpexp_reg[3]_i_2__0_n_2 ;
  wire \tmpexp_reg[3]_i_2__0_n_3 ;
  wire \tmpexp_reg[3]_i_2__0_n_4 ;
  wire \tmpexp_reg[3]_i_2__0_n_5 ;
  wire \tmpexp_reg[7]_i_3_n_2 ;
  wire \tmpexp_reg[7]_i_3_n_3 ;
  wire \tmpexp_reg[7]_i_3_n_4 ;
  wire \tmpexp_reg[7]_i_3_n_5 ;
  wire \tmpexp_reg_n_2_[0] ;
  wire \tmpexp_reg_n_2_[1] ;
  wire \tmpexp_reg_n_2_[2] ;
  wire \tmpexp_reg_n_2_[3] ;
  wire \tmpexp_reg_n_2_[4] ;
  wire \tmpexp_reg_n_2_[5] ;
  wire \tmpexp_reg_n_2_[6] ;
  wire \tmpexp_reg_n_2_[7] ;
  wire \tmpexp_reg_n_2_[8] ;
  wire [46:46]tmpm0;
  wire \tmpm[22]_i_1__0_n_2 ;
  wire \tmpm[23]_i_1__0_n_2 ;
  wire \tmpm[24]_i_1__0_n_2 ;
  wire \tmpm[25]_i_1__0_n_2 ;
  wire \tmpm[26]_i_1__0_n_2 ;
  wire \tmpm[27]_i_1__0_n_2 ;
  wire \tmpm[28]_i_1__0_n_2 ;
  wire \tmpm[29]_i_1__0_n_2 ;
  wire \tmpm[30]_i_1__0_n_2 ;
  wire \tmpm[31]_i_1__0_n_2 ;
  wire \tmpm[32]_i_1__0_n_2 ;
  wire \tmpm[33]_i_1__0_n_2 ;
  wire \tmpm[34]_i_1__0_n_2 ;
  wire \tmpm[35]_i_1__0_n_2 ;
  wire \tmpm[36]_i_1__0_n_2 ;
  wire \tmpm[37]_i_1__0_n_2 ;
  wire \tmpm[38]_i_1__0_n_2 ;
  wire \tmpm[39]_i_1__0_n_2 ;
  wire \tmpm[40]_i_1__0_n_2 ;
  wire \tmpm[41]_i_1__0_n_2 ;
  wire \tmpm[42]_i_1__0_n_2 ;
  wire \tmpm[43]_i_1__0_n_2 ;
  wire \tmpm[44]_i_1__0_n_2 ;
  wire \tmpm[45]_i_1__0_n_2 ;
  wire \tmpm[46]_i_2_n_2 ;
  wire \tmpm[47]_i_1_n_2 ;
  wire \tmpm[47]_i_2__0_n_2 ;
  wire \tmpm[47]_i_3__0_n_2 ;
  wire \tmpm[47]_i_4_n_2 ;
  wire \tmpm[47]_i_5_n_2 ;
  wire NLW_multOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp_OVERFLOW_UNCONNECTED;
  wire NLW_multOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp_CARRYOUT_UNCONNECTED;
  wire NLW_multOp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp__0_OVERFLOW_UNCONNECTED;
  wire NLW_multOp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp__0_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_multOp__0_P_UNCONNECTED;
  wire [47:0]NLW_multOp__0_PCOUT_UNCONNECTED;
  wire [3:3]NLW_p_1_out_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__5_O_UNCONNECTED;
  wire [0:0]\NLW_tmpexp_reg[3]_i_2__0_O_UNCONNECTED ;
  wire [3:0]\NLW_tmpexp_reg[8]_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmpexp_reg[8]_i_5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[0]_i_1 
       (.I0(\tmpexp_reg_n_2_[0] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[1]_i_1 
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[1]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[2]_i_1 
       (.I0(\tmpexp_reg_n_2_[2] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[2]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[3]_i_1 
       (.I0(\tmpexp_reg_n_2_[3] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[3]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[4]_i_1 
       (.I0(\tmpexp_reg_n_2_[4] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[4]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[5]_i_1 
       (.I0(\tmpexp_reg_n_2_[5] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[5]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[6]_i_1 
       (.I0(\tmpexp_reg_n_2_[6] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[6]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \exp[7]_i_1__0 
       (.I0(\tmpexp_reg_n_2_[7] ),
        .I1(g0_b0_i_2_n_2),
        .O(\exp[7]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[0]_i_1_n_2 ),
        .Q(exp[0]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[1]_i_1_n_2 ),
        .Q(exp[1]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[2]_i_1_n_2 ),
        .Q(exp[2]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[3]_i_1_n_2 ),
        .Q(exp[3]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[4]_i_1_n_2 ),
        .Q(exp[4]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[5]_i_1_n_2 ),
        .Q(exp[5]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[6]_i_1_n_2 ),
        .Q(exp[6]),
        .R(g0_b0__0__0_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[7]_i_1__0_n_2 ),
        .Q(exp[7]),
        .R(g0_b0__0__0_n_2));
  LUT6 #(
    .INIT(64'h0000000000204119)) 
    g0_b0
       (.I0(g0_b0_i_1_n_2),
        .I1(g0_b0_i_2_n_2),
        .I2(next_state[0]),
        .I3(next_state[2]),
        .I4(next_state[4]),
        .I5(reset_IBUF),
        .O(tmpexp0));
  LUT6 #(
    .INIT(64'h0000000080009828)) 
    g0_b0__0
       (.I0(g0_b0_i_1_n_2),
        .I1(g0_b0_i_2_n_2),
        .I2(next_state[0]),
        .I3(next_state[2]),
        .I4(next_state[4]),
        .I5(reset_IBUF),
        .O(exp0));
  LUT6 #(
    .INIT(64'h0000000080000028)) 
    g0_b0__0__0
       (.I0(g0_b0_i_1_n_2),
        .I1(g0_b0_i_2_n_2),
        .I2(next_state[0]),
        .I3(next_state[2]),
        .I4(next_state[4]),
        .I5(reset_IBUF),
        .O(g0_b0__0__0_n_2));
  LUT6 #(
    .INIT(64'h00000000EEEE00E0)) 
    g0_b0_i_1
       (.I0(g0_b0_i_3_n_2),
        .I1(g0_b0_i_4_n_2),
        .I2(g0_b0_i_5_n_2),
        .I3(state[0]),
        .I4(g0_b0_i_6_n_2),
        .I5(g0_b0_i_7_n_2),
        .O(g0_b0_i_1_n_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFE4E6FFFF)) 
    g0_b0_i_10
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(L[47]),
        .I4(state[3]),
        .I5(state[4]),
        .O(g0_b0_i_10_n_2));
  LUT6 #(
    .INIT(64'h0011010000000100)) 
    g0_b0_i_11
       (.I0(state[1]),
        .I1(state[4]),
        .I2(\tmpexp_reg_n_2_[8] ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(inrdy_IBUF),
        .O(g0_b0_i_11_n_2));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    g0_b0_i_12
       (.I0(state[4]),
        .I1(state[3]),
        .O(g0_b0_i_12_n_2));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h01)) 
    g0_b0_i_13
       (.I0(\tmpexp_reg_n_2_[3] ),
        .I1(\tmpexp_reg_n_2_[4] ),
        .I2(\tmpexp_reg_n_2_[1] ),
        .O(g0_b0_i_13_n_2));
  LUT4 #(
    .INIT(16'h0001)) 
    g0_b0_i_15
       (.I0(op1_IBUF[27]),
        .I1(op1_IBUF[30]),
        .I2(op1_IBUF[23]),
        .I3(op1_IBUF[25]),
        .O(g0_b0_i_15_n_2));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    g0_b0_i_17
       (.I0(op2_IBUF[25]),
        .I1(op2_IBUF[26]),
        .I2(op2_IBUF[23]),
        .I3(op2_IBUF[24]),
        .O(g0_b0_i_17_n_2));
  LUT6 #(
    .INIT(64'hF2FFF0F0F2F0F0F0)) 
    g0_b0_i_18
       (.I0(L[46]),
        .I1(L[47]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[4]),
        .I5(L[23]),
        .O(g0_b0_i_18_n_2));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    g0_b0_i_19
       (.I0(state[0]),
        .I1(\tmpexp_reg_n_2_[8] ),
        .I2(state[1]),
        .I3(state[4]),
        .I4(state[2]),
        .O(g0_b0_i_19_n_2));
  LUT6 #(
    .INIT(64'h00000000F2F200F2)) 
    g0_b0_i_2
       (.I0(g0_b0_i_8_n_2),
        .I1(g0_b0_i_9_n_2),
        .I2(state[3]),
        .I3(\state[4]_i_3__0_n_2 ),
        .I4(g0_b0_i_10_n_2),
        .I5(g0_b0_i_11_n_2),
        .O(g0_b0_i_2_n_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFC8EAC888)) 
    g0_b0_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(L[47]),
        .I4(L[46]),
        .I5(g0_b0_i_12_n_2),
        .O(g0_b0_i_3_n_2));
  LUT6 #(
    .INIT(64'h8880888888808880)) 
    g0_b0_i_4
       (.I0(state[1]),
        .I1(state[2]),
        .I2(L[46]),
        .I3(L[47]),
        .I4(\state[4]_i_6__0_n_2 ),
        .I5(g0_b0_i_13_n_2),
        .O(g0_b0_i_4_n_2));
  LUT4 #(
    .INIT(16'h0400)) 
    g0_b0_i_5
       (.I0(g0_b0_i_1_0),
        .I1(g0_b0_i_15_n_2),
        .I2(g0_b0_i_1_1),
        .I3(g0_b0_i_17_n_2),
        .O(g0_b0_i_5_n_2));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    g0_b0_i_6
       (.I0(state[1]),
        .I1(state[4]),
        .I2(state[3]),
        .I3(state[2]),
        .O(g0_b0_i_6_n_2));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    g0_b0_i_7
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\tmpexp_reg_n_2_[8] ),
        .I3(state[1]),
        .I4(state[4]),
        .I5(state[3]),
        .O(g0_b0_i_7_n_2));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFF515F)) 
    g0_b0_i_8
       (.I0(g0_b0_i_18_n_2),
        .I1(\state[2]_i_12_0 ),
        .I2(state[4]),
        .I3(state[1]),
        .I4(state[2]),
        .O(g0_b0_i_8_n_2));
  LUT5 #(
    .INIT(32'h0000F9FF)) 
    g0_b0_i_9
       (.I0(\state_reg[2]_0 ),
        .I1(\state_reg[2]_1 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(g0_b0_i_19_n_2),
        .O(g0_b0_i_9_n_2));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \m1[22]_i_1 
       (.I0(g0_b0_i_2_n_2),
        .I1(next_state[4]),
        .I2(g0_b0_i_1_n_2),
        .I3(reset_IBUF),
        .I4(next_state[2]),
        .I5(next_state[0]),
        .O(\m1[22]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \m1[22]_i_2__0 
       (.I0(next_state[0]),
        .I1(next_state[2]),
        .I2(reset_IBUF),
        .I3(g0_b0_i_1_n_2),
        .I4(next_state[4]),
        .O(m20));
  LUT6 #(
    .INIT(64'hFFFF22F200002202)) 
    \m1[23]_i_1__0 
       (.I0(next_state[2]),
        .I1(next_state[0]),
        .I2(g0_b0_i_2_n_2),
        .I3(\tmpexp[7]_i_2_n_2 ),
        .I4(\m1[23]_i_2_n_2 ),
        .I5(m1[23]),
        .O(\m1[23]_i_1__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFEDFD)) 
    \m1[23]_i_2 
       (.I0(g0_b0_i_2_n_2),
        .I1(next_state[4]),
        .I2(next_state[2]),
        .I3(g0_b0_i_1_n_2),
        .I4(reset_IBUF),
        .O(\m1[23]_i_2_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[0]),
        .Q(m1[0]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[10]),
        .Q(m1[10]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[11]),
        .Q(m1[11]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[12]),
        .Q(m1[12]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[13]),
        .Q(m1[13]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[14]),
        .Q(m1[14]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[15]),
        .Q(m1[15]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[16]),
        .Q(m1[16]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[17]),
        .Q(m1[17]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[18]),
        .Q(m1[18]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[19]),
        .Q(m1[19]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[1]),
        .Q(m1[1]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[20]),
        .Q(m1[20]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[21]),
        .Q(m1[21]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[22]),
        .Q(m1[22]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\m1[23]_i_1__0_n_2 ),
        .Q(m1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[2]),
        .Q(m1[2]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[3]),
        .Q(m1[3]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[4]),
        .Q(m1[4]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[5]),
        .Q(m1[5]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[6]),
        .Q(m1[6]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[7]),
        .Q(m1[7]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[8]),
        .Q(m1[8]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op1_IBUF[9]),
        .Q(m1[9]),
        .R(\m1[22]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFCA0E00000A02)) 
    \m2[23]_i_1 
       (.I0(next_state[2]),
        .I1(g0_b0_i_2_n_2),
        .I2(next_state[0]),
        .I3(g0_b0_i_1_n_2),
        .I4(\m1[23]_i_2_n_2 ),
        .I5(m2[23]),
        .O(\m2[23]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[0]),
        .Q(m2[0]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[10]),
        .Q(m2[10]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[11]),
        .Q(m2[11]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[12]),
        .Q(m2[12]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[13]),
        .Q(m2[13]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[14]),
        .Q(m2[14]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[15]),
        .Q(m2[15]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[16]),
        .Q(m2[16]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[17]),
        .Q(m2[17]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[18]),
        .Q(m2[18]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[19]),
        .Q(m2[19]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[1]),
        .Q(m2[1]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[20]),
        .Q(m2[20]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[21]),
        .Q(m2[21]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[22]),
        .Q(m2[22]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\m2[23]_i_1_n_2 ),
        .Q(m2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[2]),
        .Q(m2[2]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[3]),
        .Q(m2[3]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[4]),
        .Q(m2[4]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[5]),
        .Q(m2[5]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[6]),
        .Q(m2[6]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[7]),
        .Q(m2[7]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[8]),
        .Q(m2[8]),
        .R(\m1[22]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(m20),
        .D(op2_IBUF[9]),
        .Q(m2[9]),
        .R(\m1[22]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'h0000000020202002)) 
    \m[21]_i_1__0 
       (.I0(g0_b0_i_1_n_2),
        .I1(reset_IBUF),
        .I2(g0_b0_i_2_n_2),
        .I3(next_state[2]),
        .I4(\tmpexp[7]_i_2_n_2 ),
        .I5(next_state[4]),
        .O(\m[21]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'h00001E0100000000)) 
    \m[21]_i_2 
       (.I0(\tmpexp[7]_i_2_n_2 ),
        .I1(next_state[2]),
        .I2(next_state[4]),
        .I3(g0_b0_i_2_n_2),
        .I4(reset_IBUF),
        .I5(g0_b0_i_1_n_2),
        .O(m0));
  LUT6 #(
    .INIT(64'hFFFFBEFB00008208)) 
    \m[22]_i_1 
       (.I0(\m[22]_i_2_n_2 ),
        .I1(\m[22]_i_3_n_2 ),
        .I2(next_state[4]),
        .I3(g0_b0_i_2_n_2),
        .I4(\m[22]_i_4_n_2 ),
        .I5(m[22]),
        .O(\m[22]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hE2E2E2E2E2000000)) 
    \m[22]_i_2 
       (.I0(\state[0]_i_3__0_n_2 ),
        .I1(state[3]),
        .I2(\state[0]_i_2__0_n_2 ),
        .I3(L[45]),
        .I4(next_state[4]),
        .I5(next_state[2]),
        .O(\m[22]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h5404)) 
    \m[22]_i_3 
       (.I0(next_state[2]),
        .I1(\state[0]_i_3__0_n_2 ),
        .I2(state[3]),
        .I3(\state[0]_i_2__0_n_2 ),
        .O(\m[22]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m[22]_i_4 
       (.I0(reset_IBUF),
        .I1(g0_b0_i_1_n_2),
        .O(\m[22]_i_4_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[23]),
        .Q(m[0]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[33]),
        .Q(m[10]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[34]),
        .Q(m[11]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[35]),
        .Q(m[12]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[36]),
        .Q(m[13]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[37]),
        .Q(m[14]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[38]),
        .Q(m[15]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[39]),
        .Q(m[16]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[40]),
        .Q(m[17]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[41]),
        .Q(m[18]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[42]),
        .Q(m[19]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[24]),
        .Q(m[1]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[43]),
        .Q(m[20]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[44]),
        .Q(m[21]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\m[22]_i_1_n_2 ),
        .Q(m[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[25]),
        .Q(m[2]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[26]),
        .Q(m[3]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[27]),
        .Q(m[4]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[28]),
        .Q(m[5]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[29]),
        .Q(m[6]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[30]),
        .Q(m[7]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[31]),
        .Q(m[8]),
        .R(\m[21]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[32]),
        .Q(m[9]),
        .R(\m[21]_i_1__0_n_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,multOp_i_1_n_2,multOp_i_2_n_2,multOp_i_3_n_2,multOp_i_4_n_2,multOp_i_5_n_2,multOp_i_6_n_2,multOp_i_7_n_2,multOp_i_8_n_2,multOp_i_9_n_2,multOp_i_10_n_2,multOp_i_11_n_2,multOp_i_12_n_2,multOp_i_13_n_2,multOp_i_14_n_2,multOp_i_15_n_2,multOp_i_16_n_2,multOp_i_17_n_2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(m20),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp_OVERFLOW_UNCONNECTED),
        .P({multOp_n_60,multOp_n_61,multOp_n_62,multOp_n_63,multOp_n_64,multOp_n_65,multOp_n_66,multOp_n_67,multOp_n_68,multOp_n_69,multOp_n_70,multOp_n_71,multOp_n_72,multOp_n_73,multOp_n_74,multOp_n_75,multOp_n_76,multOp_n_77,multOp_n_78,multOp_n_79,multOp_n_80,multOp_n_81,multOp_n_82,multOp_n_83,multOp_n_84,multOp_n_85,multOp_n_86,multOp_n_87,multOp_n_88,multOp_n_89,multOp_n_90,multOp_n_91,multOp_n_92,multOp_n_93,multOp_n_94,multOp_n_95,multOp_n_96,multOp_n_97,multOp_n_98,multOp_n_99,multOp_n_100,multOp_n_101,multOp_n_102,multOp_n_103,multOp_n_104,multOp_n_105,multOp_n_106,multOp_n_107}),
        .PATTERNBDETECT(NLW_multOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153,multOp_n_154,multOp_n_155}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    multOp__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m1[23:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_multOp__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_multOp__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_multOp__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_multOp__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_multOp__0_OVERFLOW_UNCONNECTED),
        .P({NLW_multOp__0_P_UNCONNECTED[47:31],multOp__0_n_77,multOp__0_n_78,multOp__0_n_79,multOp__0_n_80,multOp__0_n_81,multOp__0_n_82,multOp__0_n_83,multOp__0_n_84,multOp__0_n_85,multOp__0_n_86,multOp__0_n_87,multOp__0_n_88,multOp__0_n_89,multOp__0_n_90,multOp__0_n_91,multOp__0_n_92,multOp__0_n_93,multOp__0_n_94,multOp__0_n_95,multOp__0_n_96,multOp__0_n_97,multOp__0_n_98,multOp__0_n_99,multOp__0_n_100,multOp__0_n_101,multOp__0_n_102,multOp__0_n_103,multOp__0_n_104,multOp__0_n_105,multOp__0_n_106,multOp__0_n_107}),
        .PATTERNBDETECT(NLW_multOp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153,multOp_n_154,multOp_n_155}),
        .PCOUT(NLW_multOp__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_multOp__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_1
       (.I0(op1_IBUF[16]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_1_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_10
       (.I0(op1_IBUF[7]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_10_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_11
       (.I0(op1_IBUF[6]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_11_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_12
       (.I0(op1_IBUF[5]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_12_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_13
       (.I0(op1_IBUF[4]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_13_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_14
       (.I0(op1_IBUF[3]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_14_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_15
       (.I0(op1_IBUF[2]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_15_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_16
       (.I0(op1_IBUF[1]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_16_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_17
       (.I0(op1_IBUF[0]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_17_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_2
       (.I0(op1_IBUF[15]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_2_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_3
       (.I0(op1_IBUF[14]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_3_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_4
       (.I0(op1_IBUF[13]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_4_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_5
       (.I0(op1_IBUF[12]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_5_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_6
       (.I0(op1_IBUF[11]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_6_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_7
       (.I0(op1_IBUF[10]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_7_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_8
       (.I0(op1_IBUF[9]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_8_n_2));
  LUT2 #(
    .INIT(4'h2)) 
    multOp_i_9
       (.I0(op1_IBUF[8]),
        .I1(g0_b0_i_2_n_2),
        .O(multOp_i_9_n_2));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_2,p_1_out_carry_n_3,p_1_out_carry_n_4,p_1_out_carry_n_5}),
        .CYINIT(\tmpexp_reg_n_2_[0] ),
        .DI({\tmpexp_reg_n_2_[3] ,\tmpexp_reg_n_2_[2] ,\tmpexp_reg_n_2_[1] ,p_1_out_carry_i_1__0_n_2}),
        .O(data1[4:1]),
        .S({p_1_out_carry_i_2__0_n_2,p_1_out_carry_i_3__0_n_2,p_1_out_carry_i_4__0_n_2,p_1_out_carry_i_5__0_n_2}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_2),
        .CO({NLW_p_1_out_carry__0_CO_UNCONNECTED[3],p_1_out_carry__0_n_3,p_1_out_carry__0_n_4,p_1_out_carry__0_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,\tmpexp_reg_n_2_[6] ,\tmpexp_reg_n_2_[5] ,\tmpexp_reg_n_2_[4] }),
        .O(data1[8:5]),
        .S({p_1_out_carry__0_i_1__0_n_2,p_1_out_carry__0_i_2__0_n_2,p_1_out_carry__0_i_3__0_n_2,p_1_out_carry__0_i_4__0_n_2}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_1__0
       (.I0(\tmpexp_reg_n_2_[7] ),
        .I1(\tmpexp_reg_n_2_[8] ),
        .O(p_1_out_carry__0_i_1__0_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2__0
       (.I0(\tmpexp_reg_n_2_[6] ),
        .I1(\tmpexp_reg_n_2_[7] ),
        .O(p_1_out_carry__0_i_2__0_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3__0
       (.I0(\tmpexp_reg_n_2_[5] ),
        .I1(\tmpexp_reg_n_2_[6] ),
        .O(p_1_out_carry__0_i_3__0_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4__0
       (.I0(\tmpexp_reg_n_2_[4] ),
        .I1(\tmpexp_reg_n_2_[5] ),
        .O(p_1_out_carry__0_i_4__0_n_2));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_carry_i_1__0
       (.I0(\tmpexp_reg_n_2_[1] ),
        .O(p_1_out_carry_i_1__0_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2__0
       (.I0(\tmpexp_reg_n_2_[3] ),
        .I1(\tmpexp_reg_n_2_[4] ),
        .O(p_1_out_carry_i_2__0_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3__0
       (.I0(\tmpexp_reg_n_2_[2] ),
        .I1(\tmpexp_reg_n_2_[3] ),
        .O(p_1_out_carry_i_3__0_n_2));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_4__0
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(\tmpexp_reg_n_2_[2] ),
        .O(p_1_out_carry_i_4__0_n_2));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_5__0
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(next_state[2]),
        .O(p_1_out_carry_i_5__0_n_2));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5}),
        .CYINIT(L[22]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[26:23]),
        .S(L[26:23]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_2),
        .CO({plusOp_carry__0_n_2,plusOp_carry__0_n_3,plusOp_carry__0_n_4,plusOp_carry__0_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[30:27]),
        .S(L[30:27]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_2),
        .CO({plusOp_carry__1_n_2,plusOp_carry__1_n_3,plusOp_carry__1_n_4,plusOp_carry__1_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[34:31]),
        .S(L[34:31]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_2),
        .CO({plusOp_carry__2_n_2,plusOp_carry__2_n_3,plusOp_carry__2_n_4,plusOp_carry__2_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[38:35]),
        .S(L[38:35]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_2),
        .CO({plusOp_carry__3_n_2,plusOp_carry__3_n_3,plusOp_carry__3_n_4,plusOp_carry__3_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[42:39]),
        .S(L[42:39]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_2),
        .CO({plusOp_carry__4_n_2,plusOp_carry__4_n_3,plusOp_carry__4_n_4,plusOp_carry__4_n_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[46:43]),
        .S(L[46:43]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_2),
        .CO(NLW_plusOp_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__5_O_UNCONNECTED[3:1],plusOp[47]}),
        .S({1'b0,1'b0,1'b0,L[47]}));
  LUT5 #(
    .INIT(32'h00020000)) 
    \res[31]_i_1__0 
       (.I0(next_state[2]),
        .I1(g0_b0_i_2_n_2),
        .I2(reset_IBUF),
        .I3(next_state[0]),
        .I4(next_state[4]),
        .O(\res[31]_i_1__0_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[0]),
        .Q(res_vhdl[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[10]),
        .Q(res_vhdl[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[11]),
        .Q(res_vhdl[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[12]),
        .Q(res_vhdl[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[13]),
        .Q(res_vhdl[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[14]),
        .Q(res_vhdl[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[15]),
        .Q(res_vhdl[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[16]),
        .Q(res_vhdl[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[17]),
        .Q(res_vhdl[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[18]),
        .Q(res_vhdl[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[19]),
        .Q(res_vhdl[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[1]),
        .Q(res_vhdl[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[20]),
        .Q(res_vhdl[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[21]),
        .Q(res_vhdl[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[22]),
        .Q(res_vhdl[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[0]),
        .Q(res_vhdl[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[1]),
        .Q(res_vhdl[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[2]),
        .Q(res_vhdl[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[3]),
        .Q(res_vhdl[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[4]),
        .Q(res_vhdl[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[5]),
        .Q(res_vhdl[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[6]),
        .Q(res_vhdl[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[2]),
        .Q(res_vhdl[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(exp[7]),
        .Q(res_vhdl[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(s__0),
        .Q(res_vhdl[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[3]),
        .Q(res_vhdl[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[4]),
        .Q(res_vhdl[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[5]),
        .Q(res_vhdl[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[6]),
        .Q(res_vhdl[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[7]),
        .Q(res_vhdl[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[8]),
        .Q(res_vhdl[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1__0_n_2 ),
        .D(m[9]),
        .Q(res_vhdl[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFCF3FFFB00000008)) 
    s_i_1__0
       (.I0(\op1[31] ),
        .I1(\tmpexp[7]_i_2_n_2 ),
        .I2(s_i_2_n_2),
        .I3(next_state[2]),
        .I4(g0_b0_i_2_n_2),
        .I5(s__0),
        .O(s_i_1__0_n_2));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    s_i_2
       (.I0(next_state[4]),
        .I1(g0_b0_i_1_n_2),
        .I2(reset_IBUF),
        .O(s_i_2_n_2));
  LUT2 #(
    .INIT(4'h6)) 
    s_i_2__0
       (.I0(op1_IBUF[31]),
        .I1(op2_IBUF[31]),
        .O(\op1[31] ));
  FDRE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_i_1__0_n_2),
        .Q(s__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \state[0]_i_10 
       (.I0(op1_IBUF[24]),
        .I1(op1_IBUF[23]),
        .I2(op1_IBUF[26]),
        .I3(op1_IBUF[25]),
        .I4(\state[2]_i_11_n_2 ),
        .O(\op1[24] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \state[0]_i_11 
       (.I0(op2_IBUF[28]),
        .I1(op2_IBUF[27]),
        .I2(op2_IBUF[29]),
        .I3(op2_IBUF[30]),
        .I4(\state[2]_i_9_n_2 ),
        .O(\op2[28] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \state[0]_i_1__0 
       (.I0(\state[0]_i_2__0_n_2 ),
        .I1(state[3]),
        .I2(\state[0]_i_3__0_n_2 ),
        .O(next_state[0]));
  LUT4 #(
    .INIT(16'h00A8)) 
    \state[0]_i_2__0 
       (.I0(\state[0]_i_4__0_n_2 ),
        .I1(L[47]),
        .I2(state[2]),
        .I3(state[4]),
        .O(\state[0]_i_2__0_n_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFAAFB)) 
    \state[0]_i_3__0 
       (.I0(\state[0]_i_5__0_n_2 ),
        .I1(state[1]),
        .I2(\state[0]_i_6__0_n_2 ),
        .I3(\state[0]_i_7__0_n_2 ),
        .I4(\state[0]_i_8__0_n_2 ),
        .I5(state[2]),
        .O(\state[0]_i_3__0_n_2 ));
  LUT6 #(
    .INIT(64'h30BB308833003300)) 
    \state[0]_i_4__0 
       (.I0(\state[4]_i_7__0_n_2 ),
        .I1(state[0]),
        .I2(\state[0]_i_9_n_2 ),
        .I3(state[1]),
        .I4(\tmpexp_reg_n_2_[8] ),
        .I5(state[2]),
        .O(\state[0]_i_4__0_n_2 ));
  LUT6 #(
    .INIT(64'h00FC004000CC0040)) 
    \state[0]_i_5__0 
       (.I0(\tmpexp_reg_n_2_[8] ),
        .I1(state[4]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[1]),
        .I5(\state_reg[2]_1 ),
        .O(\state[0]_i_5__0_n_2 ));
  LUT6 #(
    .INIT(64'hBFB3BFB3FFFFAFA0)) 
    \state[0]_i_6__0 
       (.I0(\op1[24] ),
        .I1(\op2[28] ),
        .I2(\state[2]_i_8_n_2 ),
        .I3(\state_reg[2]_0 ),
        .I4(\state_reg[2]_1 ),
        .I5(\state[2]_i_7__0_n_2 ),
        .O(\state[0]_i_6__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \state[0]_i_7__0 
       (.I0(state[0]),
        .I1(state[4]),
        .I2(L[23]),
        .O(\state[0]_i_7__0_n_2 ));
  LUT3 #(
    .INIT(8'h01)) 
    \state[0]_i_8__0 
       (.I0(state[1]),
        .I1(state[4]),
        .I2(inrdy_IBUF),
        .O(\state[0]_i_8__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state[0]_i_9 
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(\tmpexp_reg_n_2_[4] ),
        .I2(\tmpexp_reg_n_2_[3] ),
        .I3(\state[4]_i_6__0_n_2 ),
        .O(\state[0]_i_9_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[1]_i_1__0 
       (.I0(g0_b0_i_2_n_2),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[2]_i_10 
       (.I0(op2_IBUF[30]),
        .I1(op2_IBUF[29]),
        .I2(op2_IBUF[27]),
        .I3(op2_IBUF[28]),
        .O(\state[2]_i_10_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_10__0 
       (.I0(m2[6]),
        .I1(m2[4]),
        .I2(m2[7]),
        .I3(m2[1]),
        .O(\state[2]_i_10__0_n_2 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[2]_i_11 
       (.I0(op1_IBUF[30]),
        .I1(op1_IBUF[29]),
        .I2(op1_IBUF[27]),
        .I3(op1_IBUF[28]),
        .O(\state[2]_i_11_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_11__0 
       (.I0(m2[14]),
        .I1(m2[13]),
        .I2(m2[2]),
        .I3(m2[0]),
        .O(\state[2]_i_11__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[2]_i_12 
       (.I0(op1_IBUF[25]),
        .I1(op1_IBUF[26]),
        .I2(op1_IBUF[23]),
        .I3(op1_IBUF[24]),
        .O(\state[2]_i_12_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_12__0 
       (.I0(m2[15]),
        .I1(m2[8]),
        .I2(m2[12]),
        .I3(m2[5]),
        .O(\state[2]_i_12__0_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_13 
       (.I0(m2[21]),
        .I1(m2[9]),
        .I2(m2[18]),
        .I3(m2[16]),
        .O(\state[2]_i_13_n_2 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[2]_i_14 
       (.I0(m2[20]),
        .I1(m2[3]),
        .I2(m2[22]),
        .I3(m2[17]),
        .O(\state[2]_i_14_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_15 
       (.I0(m1[21]),
        .I1(m1[9]),
        .I2(m1[18]),
        .I3(m1[16]),
        .O(\state[2]_i_15_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_16 
       (.I0(m1[20]),
        .I1(m1[3]),
        .I2(m1[22]),
        .I3(m1[17]),
        .O(\state[2]_i_16_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_17 
       (.I0(m1[11]),
        .I1(m1[10]),
        .I2(m1[23]),
        .I3(m1[19]),
        .O(\state[2]_i_17_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_18 
       (.I0(m1[6]),
        .I1(m1[4]),
        .I2(m1[7]),
        .I3(m1[1]),
        .O(\state[2]_i_18_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_19 
       (.I0(m1[14]),
        .I1(m1[13]),
        .I2(m1[2]),
        .I3(m1[0]),
        .O(\state[2]_i_19_n_2 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBAB)) 
    \state[2]_i_1__0 
       (.I0(\state[2]_i_2__0_n_2 ),
        .I1(\state[2]_i_3_n_2 ),
        .I2(\state[2]_i_4_n_2 ),
        .I3(\state[2]_i_5_n_2 ),
        .I4(\state[2]_i_6__0_n_2 ),
        .I5(state[4]),
        .O(next_state[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_20 
       (.I0(m1[15]),
        .I1(m1[8]),
        .I2(m1[12]),
        .I3(m1[5]),
        .O(\state[2]_i_20_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h05100010)) 
    \state[2]_i_2__0 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[4]),
        .O(\state[2]_i_2__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \state[2]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\state[2]_i_3_n_2 ));
  LUT6 #(
    .INIT(64'hAEAAAEAAEEEEAEAA)) 
    \state[2]_i_4 
       (.I0(state[3]),
        .I1(\state[2]_i_12_0 ),
        .I2(\state[2]_i_7__0_n_2 ),
        .I3(\state_reg[2]_1 ),
        .I4(\state_reg[2]_0 ),
        .I5(\state[2]_i_8_n_2 ),
        .O(\state[2]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \state[2]_i_5 
       (.I0(state[0]),
        .I1(L[47]),
        .I2(state[3]),
        .O(\state[2]_i_5_n_2 ));
  LUT5 #(
    .INIT(32'h0000F800)) 
    \state[2]_i_6__0 
       (.I0(\state_reg[2]_0 ),
        .I1(\state_reg[2]_1 ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\state[2]_i_6__0_n_2 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \state[2]_i_7 
       (.I0(\state[2]_i_9_n_2 ),
        .I1(\state[2]_i_10_n_2 ),
        .I2(\state[2]_i_11_n_2 ),
        .I3(\state[2]_i_12_n_2 ),
        .O(\state[2]_i_12_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \state[2]_i_7__0 
       (.I0(\state[2]_i_9__0_n_2 ),
        .I1(\state[2]_i_10__0_n_2 ),
        .I2(\state[2]_i_11__0_n_2 ),
        .I3(\state[2]_i_12__0_n_2 ),
        .I4(\state[2]_i_13_n_2 ),
        .I5(\state[2]_i_14_n_2 ),
        .O(\state[2]_i_7__0_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_8 
       (.I0(\state[2]_i_15_n_2 ),
        .I1(\state[2]_i_16_n_2 ),
        .I2(\state[2]_i_17_n_2 ),
        .I3(\state[2]_i_18_n_2 ),
        .I4(\state[2]_i_19_n_2 ),
        .I5(\state[2]_i_20_n_2 ),
        .O(\state[2]_i_8_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \state[2]_i_9 
       (.I0(op2_IBUF[25]),
        .I1(op2_IBUF[26]),
        .I2(op2_IBUF[23]),
        .I3(op2_IBUF[24]),
        .O(\state[2]_i_9_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_9__0 
       (.I0(m2[11]),
        .I1(m2[10]),
        .I2(m2[23]),
        .I3(m2[19]),
        .O(\state[2]_i_9__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \state[3]_i_1__0 
       (.I0(g0_b0_i_1_n_2),
        .O(next_state[3]));
  LUT4 #(
    .INIT(16'h00AE)) 
    \state[4]_i_1__0 
       (.I0(\state[4]_i_2__0_n_2 ),
        .I1(state[1]),
        .I2(\state[4]_i_3__0_n_2 ),
        .I3(\state[4]_i_4__0_n_2 ),
        .O(next_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFF41)) 
    \state[4]_i_2__0 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[4]),
        .I3(state[0]),
        .I4(\state[4]_i_5__0_n_2 ),
        .O(\state[4]_i_2__0_n_2 ));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    \state[4]_i_3__0 
       (.I0(\tmpexp_reg_n_2_[1] ),
        .I1(\tmpexp_reg_n_2_[4] ),
        .I2(\tmpexp_reg_n_2_[3] ),
        .I3(\state[4]_i_6__0_n_2 ),
        .I4(\state[4]_i_7__0_n_2 ),
        .I5(state[2]),
        .O(\state[4]_i_3__0_n_2 ));
  LUT6 #(
    .INIT(64'hFF55AA02AA00AAFF)) 
    \state[4]_i_4__0 
       (.I0(state[3]),
        .I1(L[47]),
        .I2(L[46]),
        .I3(state[4]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\state[4]_i_4__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h04005555)) 
    \state[4]_i_5__0 
       (.I0(state[2]),
        .I1(L[46]),
        .I2(L[47]),
        .I3(state[3]),
        .I4(state[1]),
        .O(\state[4]_i_5__0_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[4]_i_6__0 
       (.I0(\tmpexp_reg_n_2_[8] ),
        .I1(\tmpexp_reg_n_2_[7] ),
        .I2(\tmpexp_reg_n_2_[2] ),
        .I3(\tmpexp_reg_n_2_[0] ),
        .I4(\tmpexp_reg_n_2_[5] ),
        .I5(\tmpexp_reg_n_2_[6] ),
        .O(\state[4]_i_6__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[4]_i_7__0 
       (.I0(L[47]),
        .I1(L[46]),
        .O(\state[4]_i_7__0_n_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[2]),
        .Q(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[3]),
        .Q(state[3]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[4]),
        .Q(state[4]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[0]_i_1 
       (.I0(Q),
        .I1(res_vhdl[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[10]_i_1 
       (.I0(Q),
        .I1(res_vhdl[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[11]_i_1 
       (.I0(Q),
        .I1(res_vhdl[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[12]_i_1 
       (.I0(Q),
        .I1(res_vhdl[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[13]_i_1 
       (.I0(Q),
        .I1(res_vhdl[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[14]_i_1 
       (.I0(Q),
        .I1(res_vhdl[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[15]_i_1 
       (.I0(Q),
        .I1(res_vhdl[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[16]_i_1 
       (.I0(Q),
        .I1(res_vhdl[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[17]_i_1 
       (.I0(Q),
        .I1(res_vhdl[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[18]_i_1 
       (.I0(Q),
        .I1(res_vhdl[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[19]_i_1 
       (.I0(Q),
        .I1(res_vhdl[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[1]_i_1 
       (.I0(Q),
        .I1(res_vhdl[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[20]_i_1 
       (.I0(Q),
        .I1(res_vhdl[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[21]_i_1 
       (.I0(Q),
        .I1(res_vhdl[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[22]_i_1 
       (.I0(Q),
        .I1(res_vhdl[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[23]_i_1 
       (.I0(Q),
        .I1(res_vhdl[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[24]_i_1 
       (.I0(Q),
        .I1(res_vhdl[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[25]_i_1 
       (.I0(Q),
        .I1(res_vhdl[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[26]_i_1 
       (.I0(Q),
        .I1(res_vhdl[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[27]_i_1 
       (.I0(Q),
        .I1(res_vhdl[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[28]_i_1 
       (.I0(Q),
        .I1(res_vhdl[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[29]_i_1 
       (.I0(Q),
        .I1(res_vhdl[29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[2]_i_1 
       (.I0(Q),
        .I1(res_vhdl[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[30]_i_1 
       (.I0(Q),
        .I1(res_vhdl[30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[31]_i_1 
       (.I0(Q),
        .I1(res_vhdl[31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[3]_i_1 
       (.I0(Q),
        .I1(res_vhdl[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[4]_i_1 
       (.I0(Q),
        .I1(res_vhdl[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[5]_i_1 
       (.I0(Q),
        .I1(res_vhdl[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[6]_i_1 
       (.I0(Q),
        .I1(res_vhdl[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[7]_i_1 
       (.I0(Q),
        .I1(res_vhdl[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[8]_i_1 
       (.I0(Q),
        .I1(res_vhdl[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_reg[9]_i_1 
       (.I0(Q),
        .I1(res_vhdl[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h1F11111F)) 
    \tmpexp[0]_i_1 
       (.I0(\tmpexp[0]_i_2_n_2 ),
        .I1(\tmpexp_reg_n_2_[0] ),
        .I2(\tmpexp[8]_i_4_n_2 ),
        .I3(op1_IBUF[23]),
        .I4(op2_IBUF[23]),
        .O(tmpexp[0]));
  LUT6 #(
    .INIT(64'h00000000FF00FF47)) 
    \tmpexp[0]_i_2 
       (.I0(\state[0]_i_2__0_n_2 ),
        .I1(state[3]),
        .I2(\state[0]_i_3__0_n_2 ),
        .I3(g0_b0_i_1_n_2),
        .I4(next_state[2]),
        .I5(next_state[4]),
        .O(\tmpexp[0]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \tmpexp[1]_i_1__0 
       (.I0(\tmpexp[8]_i_2__0_n_2 ),
        .I1(next_state[0]),
        .I2(\tmpexp[8]_i_3_n_2 ),
        .I3(data1[1]),
        .I4(\tmpexp[8]_i_4_n_2 ),
        .I5(data0[1]),
        .O(tmpexp[1]));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \tmpexp[2]_i_1__0 
       (.I0(\tmpexp[8]_i_2__0_n_2 ),
        .I1(next_state[0]),
        .I2(\tmpexp[8]_i_3_n_2 ),
        .I3(data1[2]),
        .I4(\tmpexp[8]_i_4_n_2 ),
        .I5(data0[2]),
        .O(tmpexp[2]));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \tmpexp[3]_i_1__0 
       (.I0(\tmpexp[8]_i_2__0_n_2 ),
        .I1(next_state[0]),
        .I2(\tmpexp[8]_i_3_n_2 ),
        .I3(data1[3]),
        .I4(\tmpexp[8]_i_4_n_2 ),
        .I5(data0[3]),
        .O(tmpexp[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_3 
       (.I0(op1_IBUF[26]),
        .I1(op2_IBUF[26]),
        .O(\tmpexp[3]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_4 
       (.I0(op1_IBUF[25]),
        .I1(op2_IBUF[25]),
        .O(\tmpexp[3]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_5 
       (.I0(op1_IBUF[24]),
        .I1(op2_IBUF[24]),
        .O(\tmpexp[3]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_6 
       (.I0(op1_IBUF[23]),
        .I1(op2_IBUF[23]),
        .O(\tmpexp[3]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'hAAAAFFFB0000AAC8)) 
    \tmpexp[4]_i_1__0 
       (.I0(next_state[4]),
        .I1(\tmpexp[7]_i_2_n_2 ),
        .I2(data0[4]),
        .I3(next_state[2]),
        .I4(g0_b0_i_1_n_2),
        .I5(data1[4]),
        .O(tmpexp[4]));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \tmpexp[5]_i_1__0 
       (.I0(\tmpexp[8]_i_2__0_n_2 ),
        .I1(next_state[0]),
        .I2(\tmpexp[8]_i_3_n_2 ),
        .I3(data1[5]),
        .I4(\tmpexp[8]_i_4_n_2 ),
        .I5(data0[5]),
        .O(tmpexp[5]));
  LUT6 #(
    .INIT(64'hAAAAFFFB0000AAC8)) 
    \tmpexp[6]_i_1__0 
       (.I0(next_state[4]),
        .I1(\tmpexp[7]_i_2_n_2 ),
        .I2(data0[6]),
        .I3(next_state[2]),
        .I4(g0_b0_i_1_n_2),
        .I5(data1[6]),
        .O(tmpexp[6]));
  LUT6 #(
    .INIT(64'hAAAAFFFB0000AAC8)) 
    \tmpexp[7]_i_1__0 
       (.I0(next_state[4]),
        .I1(\tmpexp[7]_i_2_n_2 ),
        .I2(data0[7]),
        .I3(next_state[2]),
        .I4(g0_b0_i_1_n_2),
        .I5(data1[7]),
        .O(tmpexp[7]));
  LUT3 #(
    .INIT(8'h47)) 
    \tmpexp[7]_i_2 
       (.I0(\state[0]_i_2__0_n_2 ),
        .I1(state[3]),
        .I2(\state[0]_i_3__0_n_2 ),
        .O(\tmpexp[7]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmpexp[7]_i_4__0 
       (.I0(op2_IBUF[30]),
        .I1(op1_IBUF[30]),
        .O(\tmpexp[7]_i_4__0_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_5 
       (.I0(op1_IBUF[29]),
        .I1(op2_IBUF[29]),
        .O(\tmpexp[7]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_6 
       (.I0(op1_IBUF[28]),
        .I1(op2_IBUF[28]),
        .O(\tmpexp[7]_i_6_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_7 
       (.I0(op1_IBUF[27]),
        .I1(op2_IBUF[27]),
        .O(\tmpexp[7]_i_7_n_2 ));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \tmpexp[8]_i_1__0 
       (.I0(\tmpexp[8]_i_2__0_n_2 ),
        .I1(next_state[0]),
        .I2(\tmpexp[8]_i_3_n_2 ),
        .I3(data1[8]),
        .I4(\tmpexp[8]_i_4_n_2 ),
        .I5(data0[8]),
        .O(tmpexp[8]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tmpexp[8]_i_2__0 
       (.I0(next_state[2]),
        .I1(g0_b0_i_1_n_2),
        .O(\tmpexp[8]_i_2__0_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \tmpexp[8]_i_3 
       (.I0(next_state[4]),
        .I1(next_state[2]),
        .I2(g0_b0_i_1_n_2),
        .O(\tmpexp[8]_i_3_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFFFFFEAE)) 
    \tmpexp[8]_i_4 
       (.I0(next_state[2]),
        .I1(\state[0]_i_3__0_n_2 ),
        .I2(state[3]),
        .I3(\state[0]_i_2__0_n_2 ),
        .I4(g0_b0_i_1_n_2),
        .O(\tmpexp[8]_i_4_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmpexp[8]_i_6 
       (.I0(op2_IBUF[30]),
        .O(\tmpexp[8]_i_6_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[0]),
        .Q(\tmpexp_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[1]),
        .Q(\tmpexp_reg_n_2_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[2]),
        .Q(\tmpexp_reg_n_2_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[3]),
        .Q(\tmpexp_reg_n_2_[3] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpexp_reg[3]_i_2__0 
       (.CI(1'b0),
        .CO({\tmpexp_reg[3]_i_2__0_n_2 ,\tmpexp_reg[3]_i_2__0_n_3 ,\tmpexp_reg[3]_i_2__0_n_4 ,\tmpexp_reg[3]_i_2__0_n_5 }),
        .CYINIT(1'b1),
        .DI(op1_IBUF[26:23]),
        .O({data0[3:1],\NLW_tmpexp_reg[3]_i_2__0_O_UNCONNECTED [0]}),
        .S({\tmpexp[3]_i_3_n_2 ,\tmpexp[3]_i_4_n_2 ,\tmpexp[3]_i_5_n_2 ,\tmpexp[3]_i_6_n_2 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[4]),
        .Q(\tmpexp_reg_n_2_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[5]),
        .Q(\tmpexp_reg_n_2_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[6]),
        .Q(\tmpexp_reg_n_2_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[7]),
        .Q(\tmpexp_reg_n_2_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpexp_reg[7]_i_3 
       (.CI(\tmpexp_reg[3]_i_2__0_n_2 ),
        .CO({\tmpexp_reg[7]_i_3_n_2 ,\tmpexp_reg[7]_i_3_n_3 ,\tmpexp_reg[7]_i_3_n_4 ,\tmpexp_reg[7]_i_3_n_5 }),
        .CYINIT(1'b0),
        .DI(op1_IBUF[30:27]),
        .O(data0[7:4]),
        .S({\tmpexp[7]_i_4__0_n_2 ,\tmpexp[7]_i_5_n_2 ,\tmpexp[7]_i_6_n_2 ,\tmpexp[7]_i_7_n_2 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[8]),
        .Q(\tmpexp_reg_n_2_[8] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpexp_reg[8]_i_5 
       (.CI(\tmpexp_reg[7]_i_3_n_2 ),
        .CO(\NLW_tmpexp_reg[8]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmpexp_reg[8]_i_5_O_UNCONNECTED [3:1],data0[8]}),
        .S({1'b0,1'b0,1'b0,\tmpexp[8]_i_6_n_2 }));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888B88)) 
    \tmpm[22]_i_1__0 
       (.I0(L[23]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_102),
        .I4(L[22]),
        .I5(next_state[4]),
        .O(\tmpm[22]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[23]_i_1__0 
       (.I0(L[24]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_101),
        .I4(next_state[4]),
        .I5(plusOp[23]),
        .O(\tmpm[23]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[24]_i_1__0 
       (.I0(L[25]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_100),
        .I4(next_state[4]),
        .I5(plusOp[24]),
        .O(\tmpm[24]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[25]_i_1__0 
       (.I0(L[26]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_99),
        .I4(next_state[4]),
        .I5(plusOp[25]),
        .O(\tmpm[25]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[26]_i_1__0 
       (.I0(L[27]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_98),
        .I4(next_state[4]),
        .I5(plusOp[26]),
        .O(\tmpm[26]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[27]_i_1__0 
       (.I0(L[28]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_97),
        .I4(next_state[4]),
        .I5(plusOp[27]),
        .O(\tmpm[27]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[28]_i_1__0 
       (.I0(L[29]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_96),
        .I4(next_state[4]),
        .I5(plusOp[28]),
        .O(\tmpm[28]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[29]_i_1__0 
       (.I0(L[30]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_95),
        .I4(next_state[4]),
        .I5(plusOp[29]),
        .O(\tmpm[29]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[30]_i_1__0 
       (.I0(L[31]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_94),
        .I4(next_state[4]),
        .I5(plusOp[30]),
        .O(\tmpm[30]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[31]_i_1__0 
       (.I0(L[32]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_93),
        .I4(next_state[4]),
        .I5(plusOp[31]),
        .O(\tmpm[31]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[32]_i_1__0 
       (.I0(L[33]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_92),
        .I4(next_state[4]),
        .I5(plusOp[32]),
        .O(\tmpm[32]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[33]_i_1__0 
       (.I0(L[34]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_91),
        .I4(next_state[4]),
        .I5(plusOp[33]),
        .O(\tmpm[33]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[34]_i_1__0 
       (.I0(L[35]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_90),
        .I4(next_state[4]),
        .I5(plusOp[34]),
        .O(\tmpm[34]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[35]_i_1__0 
       (.I0(L[36]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_89),
        .I4(next_state[4]),
        .I5(plusOp[35]),
        .O(\tmpm[35]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[36]_i_1__0 
       (.I0(L[37]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_88),
        .I4(next_state[4]),
        .I5(plusOp[36]),
        .O(\tmpm[36]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[37]_i_1__0 
       (.I0(L[38]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_87),
        .I4(next_state[4]),
        .I5(plusOp[37]),
        .O(\tmpm[37]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[38]_i_1__0 
       (.I0(L[39]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_86),
        .I4(next_state[4]),
        .I5(plusOp[38]),
        .O(\tmpm[38]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[39]_i_1__0 
       (.I0(L[40]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_85),
        .I4(next_state[4]),
        .I5(plusOp[39]),
        .O(\tmpm[39]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[40]_i_1__0 
       (.I0(L[41]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_84),
        .I4(next_state[4]),
        .I5(plusOp[40]),
        .O(\tmpm[40]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[41]_i_1__0 
       (.I0(L[42]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_83),
        .I4(next_state[4]),
        .I5(plusOp[41]),
        .O(\tmpm[41]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[42]_i_1__0 
       (.I0(L[43]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_82),
        .I4(next_state[4]),
        .I5(plusOp[42]),
        .O(\tmpm[42]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[43]_i_1__0 
       (.I0(L[44]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_81),
        .I4(next_state[4]),
        .I5(plusOp[43]),
        .O(\tmpm[43]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[44]_i_1__0 
       (.I0(L[45]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_80),
        .I4(next_state[4]),
        .I5(plusOp[44]),
        .O(\tmpm[44]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[45]_i_1__0 
       (.I0(L[46]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_79),
        .I4(next_state[4]),
        .I5(plusOp[45]),
        .O(\tmpm[45]_i_1__0_n_2 ));
  LUT6 #(
    .INIT(64'h0000000000005911)) 
    \tmpm[46]_i_1__0 
       (.I0(g0_b0_i_2_n_2),
        .I1(g0_b0_i_1_n_2),
        .I2(next_state[4]),
        .I3(\tmpexp[7]_i_2_n_2 ),
        .I4(next_state[2]),
        .I5(reset_IBUF),
        .O(tmpm0));
  LUT6 #(
    .INIT(64'hBBBB8B888B888B88)) 
    \tmpm[46]_i_2 
       (.I0(L[47]),
        .I1(next_state[0]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_78),
        .I4(next_state[4]),
        .I5(plusOp[46]),
        .O(\tmpm[46]_i_2_n_2 ));
  LUT6 #(
    .INIT(64'hFFFEEEFE00022202)) 
    \tmpm[47]_i_1 
       (.I0(\tmpm[47]_i_2__0_n_2 ),
        .I1(reset_IBUF),
        .I2(\tmpm[47]_i_3__0_n_2 ),
        .I3(g0_b0_i_2_n_2),
        .I4(\tmpm[47]_i_4_n_2 ),
        .I5(L[47]),
        .O(\tmpm[47]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000047)) 
    \tmpm[47]_i_2__0 
       (.I0(\state[0]_i_2__0_n_2 ),
        .I1(state[3]),
        .I2(\state[0]_i_3__0_n_2 ),
        .I3(next_state[2]),
        .I4(\tmpm[47]_i_5_n_2 ),
        .O(\tmpm[47]_i_2__0_n_2 ));
  LUT6 #(
    .INIT(64'hFFFDDDFDCCC000C0)) 
    \tmpm[47]_i_3__0 
       (.I0(next_state[4]),
        .I1(next_state[2]),
        .I2(\state[0]_i_3__0_n_2 ),
        .I3(state[3]),
        .I4(\state[0]_i_2__0_n_2 ),
        .I5(g0_b0_i_1_n_2),
        .O(\tmpm[47]_i_3__0_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBDDDBD)) 
    \tmpm[47]_i_4 
       (.I0(g0_b0_i_1_n_2),
        .I1(next_state[2]),
        .I2(\state[0]_i_3__0_n_2 ),
        .I3(state[3]),
        .I4(\state[0]_i_2__0_n_2 ),
        .I5(next_state[4]),
        .O(\tmpm[47]_i_4_n_2 ));
  LUT4 #(
    .INIT(16'h7077)) 
    \tmpm[47]_i_5 
       (.I0(next_state[4]),
        .I1(plusOp[47]),
        .I2(g0_b0_i_1_n_2),
        .I3(multOp__0_n_77),
        .O(\tmpm[47]_i_5_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[22]_i_1__0_n_2 ),
        .Q(L[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[23]_i_1__0_n_2 ),
        .Q(L[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[24]_i_1__0_n_2 ),
        .Q(L[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[25]_i_1__0_n_2 ),
        .Q(L[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[26]_i_1__0_n_2 ),
        .Q(L[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[27]_i_1__0_n_2 ),
        .Q(L[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[28]_i_1__0_n_2 ),
        .Q(L[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[29]_i_1__0_n_2 ),
        .Q(L[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[30]_i_1__0_n_2 ),
        .Q(L[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[31]_i_1__0_n_2 ),
        .Q(L[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[32]_i_1__0_n_2 ),
        .Q(L[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[33]_i_1__0_n_2 ),
        .Q(L[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[34]_i_1__0_n_2 ),
        .Q(L[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[35]_i_1__0_n_2 ),
        .Q(L[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[36]_i_1__0_n_2 ),
        .Q(L[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[37]_i_1__0_n_2 ),
        .Q(L[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[38]_i_1__0_n_2 ),
        .Q(L[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[39]_i_1__0_n_2 ),
        .Q(L[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[40]_i_1__0_n_2 ),
        .Q(L[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[41]_i_1__0_n_2 ),
        .Q(L[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[42]_i_1__0_n_2 ),
        .Q(L[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[43]_i_1__0_n_2 ),
        .Q(L[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[44]_i_1__0_n_2 ),
        .Q(L[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[45]_i_1__0_n_2 ),
        .Q(L[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[46]_i_2_n_2 ),
        .Q(L[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmpm[47]_i_1_n_2 ),
        .Q(L[47]),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module tl
   (op1,
    op2,
    inrdy,
    res,
    resrdy,
    clk,
    reset);
  input [31:0]op1;
  input [31:0]op2;
  input [1:0]inrdy;
  output [31:0]res;
  output [1:0]resrdy;
  input clk;
  input reset;

  wire \FSM_onehot_next_state_reg_n_2_[2] ;
  wire \FSM_onehot_next_state_reg_n_2_[3] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]inrdy;
  wire [1:0]inrdy_IBUF;
  wire multiplier_verilog_n_10;
  wire multiplier_verilog_n_11;
  wire multiplier_verilog_n_12;
  wire multiplier_verilog_n_13;
  wire multiplier_verilog_n_14;
  wire multiplier_verilog_n_15;
  wire multiplier_verilog_n_16;
  wire multiplier_verilog_n_17;
  wire multiplier_verilog_n_18;
  wire multiplier_verilog_n_19;
  wire multiplier_verilog_n_2;
  wire multiplier_verilog_n_20;
  wire multiplier_verilog_n_21;
  wire multiplier_verilog_n_22;
  wire multiplier_verilog_n_23;
  wire multiplier_verilog_n_24;
  wire multiplier_verilog_n_25;
  wire multiplier_verilog_n_26;
  wire multiplier_verilog_n_27;
  wire multiplier_verilog_n_28;
  wire multiplier_verilog_n_29;
  wire multiplier_verilog_n_3;
  wire multiplier_verilog_n_30;
  wire multiplier_verilog_n_31;
  wire multiplier_verilog_n_32;
  wire multiplier_verilog_n_33;
  wire multiplier_verilog_n_34;
  wire multiplier_verilog_n_35;
  wire multiplier_verilog_n_36;
  wire multiplier_verilog_n_37;
  wire multiplier_verilog_n_38;
  wire multiplier_verilog_n_39;
  wire multiplier_verilog_n_4;
  wire multiplier_verilog_n_5;
  wire multiplier_verilog_n_8;
  wire multiplier_verilog_n_9;
  wire multiplier_vhdl_n_10;
  wire multiplier_vhdl_n_11;
  wire multiplier_vhdl_n_12;
  wire multiplier_vhdl_n_13;
  wire multiplier_vhdl_n_14;
  wire multiplier_vhdl_n_15;
  wire multiplier_vhdl_n_16;
  wire multiplier_vhdl_n_17;
  wire multiplier_vhdl_n_18;
  wire multiplier_vhdl_n_19;
  wire multiplier_vhdl_n_2;
  wire multiplier_vhdl_n_20;
  wire multiplier_vhdl_n_21;
  wire multiplier_vhdl_n_22;
  wire multiplier_vhdl_n_23;
  wire multiplier_vhdl_n_24;
  wire multiplier_vhdl_n_25;
  wire multiplier_vhdl_n_26;
  wire multiplier_vhdl_n_27;
  wire multiplier_vhdl_n_28;
  wire multiplier_vhdl_n_29;
  wire multiplier_vhdl_n_3;
  wire multiplier_vhdl_n_30;
  wire multiplier_vhdl_n_31;
  wire multiplier_vhdl_n_32;
  wire multiplier_vhdl_n_33;
  wire multiplier_vhdl_n_34;
  wire multiplier_vhdl_n_35;
  wire multiplier_vhdl_n_36;
  wire multiplier_vhdl_n_37;
  wire multiplier_vhdl_n_4;
  wire multiplier_vhdl_n_5;
  wire multiplier_vhdl_n_6;
  wire multiplier_vhdl_n_7;
  wire multiplier_vhdl_n_8;
  wire multiplier_vhdl_n_9;
  wire n_0_6_BUFG;
  wire n_0_6_BUFG_inst_n_1;
  wire n_1_73_BUFG;
  wire n_1_73_BUFG_inst_n_2;
  wire [2:1]next_state;
  wire [31:0]op1;
  wire [31:0]op1_IBUF;
  wire [31:0]op2;
  wire [31:0]op2_IBUF;
  wire [31:0]res;
  wire [31:0]res_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]resrdy;
  wire [1:0]resrdy_OBUF;
  wire [1:0]state;
  wire [31:0]tmp;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:000010,iSTATE1:000011,iSTATE2:1000,iSTATE3:0010,iSTATE4:0100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_IBUF),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:000010,iSTATE1:000011,iSTATE2:1000,iSTATE3:0010,iSTATE4:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:000010,iSTATE1:000011,iSTATE2:1000,iSTATE3:0010,iSTATE4:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[2]),
        .Q(\FSM_onehot_next_state_reg_n_2_[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:000010,iSTATE1:000011,iSTATE2:1000,iSTATE3:0010,iSTATE4:0100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_next_state_reg_n_2_[2] ),
        .Q(\FSM_onehot_next_state_reg_n_2_[3] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \inrdy_IBUF[0]_inst 
       (.I(inrdy[0]),
        .O(inrdy_IBUF[0]));
  IBUF \inrdy_IBUF[1]_inst 
       (.I(inrdy[1]),
        .O(inrdy_IBUF[1]));
  mul_ieee754_verilog multiplier_verilog
       (.D(next_state),
        .\FSM_onehot_next_state_reg[1] ({multiplier_verilog_n_8,multiplier_verilog_n_9,multiplier_verilog_n_10,multiplier_verilog_n_11,multiplier_verilog_n_12,multiplier_verilog_n_13,multiplier_verilog_n_14,multiplier_verilog_n_15,multiplier_verilog_n_16,multiplier_verilog_n_17,multiplier_verilog_n_18,multiplier_verilog_n_19,multiplier_verilog_n_20,multiplier_verilog_n_21,multiplier_verilog_n_22,multiplier_verilog_n_23,multiplier_verilog_n_24,multiplier_verilog_n_25,multiplier_verilog_n_26,multiplier_verilog_n_27,multiplier_verilog_n_28,multiplier_verilog_n_29,multiplier_verilog_n_30,multiplier_verilog_n_31,multiplier_verilog_n_32,multiplier_verilog_n_33,multiplier_verilog_n_34,multiplier_verilog_n_35,multiplier_verilog_n_36,multiplier_verilog_n_37,multiplier_verilog_n_38,multiplier_verilog_n_39}),
        .Q({\FSM_onehot_next_state_reg_n_2_[3] ,\FSM_onehot_next_state_reg_n_2_[2] ,state}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .inrdy_IBUF(inrdy_IBUF[0]),
        .\op1[25] (multiplier_verilog_n_2),
        .\op1[28] (multiplier_verilog_n_5),
        .op1_IBUF(op1_IBUF[30:23]),
        .\op2[24] (multiplier_verilog_n_3),
        .\op2[30] (multiplier_verilog_n_4),
        .op2_IBUF(op2_IBUF[30:0]),
        .\res_reg[31]_0 (tmp),
        .reset_IBUF(reset_IBUF),
        .s_reg_0(multiplier_vhdl_n_5),
        .\state[0]_i_3_0 (multiplier_vhdl_n_3),
        .\state[0]_i_3_1 (multiplier_vhdl_n_2),
        .\state_reg[2]_0 (multiplier_vhdl_n_4));
  mul_ieee754_vhdl multiplier_vhdl
       (.D({multiplier_vhdl_n_6,multiplier_vhdl_n_7,multiplier_vhdl_n_8,multiplier_vhdl_n_9,multiplier_vhdl_n_10,multiplier_vhdl_n_11,multiplier_vhdl_n_12,multiplier_vhdl_n_13,multiplier_vhdl_n_14,multiplier_vhdl_n_15,multiplier_vhdl_n_16,multiplier_vhdl_n_17,multiplier_vhdl_n_18,multiplier_vhdl_n_19,multiplier_vhdl_n_20,multiplier_vhdl_n_21,multiplier_vhdl_n_22,multiplier_vhdl_n_23,multiplier_vhdl_n_24,multiplier_vhdl_n_25,multiplier_vhdl_n_26,multiplier_vhdl_n_27,multiplier_vhdl_n_28,multiplier_vhdl_n_29,multiplier_vhdl_n_30,multiplier_vhdl_n_31,multiplier_vhdl_n_32,multiplier_vhdl_n_33,multiplier_vhdl_n_34,multiplier_vhdl_n_35,multiplier_vhdl_n_36,multiplier_vhdl_n_37}),
        .Q(\FSM_onehot_next_state_reg_n_2_[2] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .g0_b0_i_1_0(multiplier_verilog_n_5),
        .g0_b0_i_1_1(multiplier_verilog_n_4),
        .inrdy_IBUF(inrdy_IBUF[1]),
        .\op1[24] (multiplier_vhdl_n_2),
        .\op1[31] (multiplier_vhdl_n_5),
        .op1_IBUF(op1_IBUF),
        .\op2[28] (multiplier_vhdl_n_3),
        .op2_IBUF(op2_IBUF),
        .reset_IBUF(reset_IBUF),
        .\state[2]_i_12_0 (multiplier_vhdl_n_4),
        .\state_reg[2]_0 (multiplier_verilog_n_2),
        .\state_reg[2]_1 (multiplier_verilog_n_3));
  BUFG n_0_6_BUFG_inst
       (.I(n_0_6_BUFG_inst_n_1),
        .O(n_0_6_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    n_0_6_BUFG_inst_i_1
       (.I0(\FSM_onehot_next_state_reg_n_2_[2] ),
        .I1(state[0]),
        .I2(\FSM_onehot_next_state_reg_n_2_[3] ),
        .O(n_0_6_BUFG_inst_n_1));
  BUFG n_1_73_BUFG_inst
       (.I(n_1_73_BUFG_inst_n_2),
        .O(n_1_73_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    n_1_73_BUFG_inst_i_1
       (.I0(state[0]),
        .I1(\FSM_onehot_next_state_reg_n_2_[2] ),
        .O(n_1_73_BUFG_inst_n_2));
  IBUF \op1_IBUF[0]_inst 
       (.I(op1[0]),
        .O(op1_IBUF[0]));
  IBUF \op1_IBUF[10]_inst 
       (.I(op1[10]),
        .O(op1_IBUF[10]));
  IBUF \op1_IBUF[11]_inst 
       (.I(op1[11]),
        .O(op1_IBUF[11]));
  IBUF \op1_IBUF[12]_inst 
       (.I(op1[12]),
        .O(op1_IBUF[12]));
  IBUF \op1_IBUF[13]_inst 
       (.I(op1[13]),
        .O(op1_IBUF[13]));
  IBUF \op1_IBUF[14]_inst 
       (.I(op1[14]),
        .O(op1_IBUF[14]));
  IBUF \op1_IBUF[15]_inst 
       (.I(op1[15]),
        .O(op1_IBUF[15]));
  IBUF \op1_IBUF[16]_inst 
       (.I(op1[16]),
        .O(op1_IBUF[16]));
  IBUF \op1_IBUF[17]_inst 
       (.I(op1[17]),
        .O(op1_IBUF[17]));
  IBUF \op1_IBUF[18]_inst 
       (.I(op1[18]),
        .O(op1_IBUF[18]));
  IBUF \op1_IBUF[19]_inst 
       (.I(op1[19]),
        .O(op1_IBUF[19]));
  IBUF \op1_IBUF[1]_inst 
       (.I(op1[1]),
        .O(op1_IBUF[1]));
  IBUF \op1_IBUF[20]_inst 
       (.I(op1[20]),
        .O(op1_IBUF[20]));
  IBUF \op1_IBUF[21]_inst 
       (.I(op1[21]),
        .O(op1_IBUF[21]));
  IBUF \op1_IBUF[22]_inst 
       (.I(op1[22]),
        .O(op1_IBUF[22]));
  IBUF \op1_IBUF[23]_inst 
       (.I(op1[23]),
        .O(op1_IBUF[23]));
  IBUF \op1_IBUF[24]_inst 
       (.I(op1[24]),
        .O(op1_IBUF[24]));
  IBUF \op1_IBUF[25]_inst 
       (.I(op1[25]),
        .O(op1_IBUF[25]));
  IBUF \op1_IBUF[26]_inst 
       (.I(op1[26]),
        .O(op1_IBUF[26]));
  IBUF \op1_IBUF[27]_inst 
       (.I(op1[27]),
        .O(op1_IBUF[27]));
  IBUF \op1_IBUF[28]_inst 
       (.I(op1[28]),
        .O(op1_IBUF[28]));
  IBUF \op1_IBUF[29]_inst 
       (.I(op1[29]),
        .O(op1_IBUF[29]));
  IBUF \op1_IBUF[2]_inst 
       (.I(op1[2]),
        .O(op1_IBUF[2]));
  IBUF \op1_IBUF[30]_inst 
       (.I(op1[30]),
        .O(op1_IBUF[30]));
  IBUF \op1_IBUF[31]_inst 
       (.I(op1[31]),
        .O(op1_IBUF[31]));
  IBUF \op1_IBUF[3]_inst 
       (.I(op1[3]),
        .O(op1_IBUF[3]));
  IBUF \op1_IBUF[4]_inst 
       (.I(op1[4]),
        .O(op1_IBUF[4]));
  IBUF \op1_IBUF[5]_inst 
       (.I(op1[5]),
        .O(op1_IBUF[5]));
  IBUF \op1_IBUF[6]_inst 
       (.I(op1[6]),
        .O(op1_IBUF[6]));
  IBUF \op1_IBUF[7]_inst 
       (.I(op1[7]),
        .O(op1_IBUF[7]));
  IBUF \op1_IBUF[8]_inst 
       (.I(op1[8]),
        .O(op1_IBUF[8]));
  IBUF \op1_IBUF[9]_inst 
       (.I(op1[9]),
        .O(op1_IBUF[9]));
  IBUF \op2_IBUF[0]_inst 
       (.I(op2[0]),
        .O(op2_IBUF[0]));
  IBUF \op2_IBUF[10]_inst 
       (.I(op2[10]),
        .O(op2_IBUF[10]));
  IBUF \op2_IBUF[11]_inst 
       (.I(op2[11]),
        .O(op2_IBUF[11]));
  IBUF \op2_IBUF[12]_inst 
       (.I(op2[12]),
        .O(op2_IBUF[12]));
  IBUF \op2_IBUF[13]_inst 
       (.I(op2[13]),
        .O(op2_IBUF[13]));
  IBUF \op2_IBUF[14]_inst 
       (.I(op2[14]),
        .O(op2_IBUF[14]));
  IBUF \op2_IBUF[15]_inst 
       (.I(op2[15]),
        .O(op2_IBUF[15]));
  IBUF \op2_IBUF[16]_inst 
       (.I(op2[16]),
        .O(op2_IBUF[16]));
  IBUF \op2_IBUF[17]_inst 
       (.I(op2[17]),
        .O(op2_IBUF[17]));
  IBUF \op2_IBUF[18]_inst 
       (.I(op2[18]),
        .O(op2_IBUF[18]));
  IBUF \op2_IBUF[19]_inst 
       (.I(op2[19]),
        .O(op2_IBUF[19]));
  IBUF \op2_IBUF[1]_inst 
       (.I(op2[1]),
        .O(op2_IBUF[1]));
  IBUF \op2_IBUF[20]_inst 
       (.I(op2[20]),
        .O(op2_IBUF[20]));
  IBUF \op2_IBUF[21]_inst 
       (.I(op2[21]),
        .O(op2_IBUF[21]));
  IBUF \op2_IBUF[22]_inst 
       (.I(op2[22]),
        .O(op2_IBUF[22]));
  IBUF \op2_IBUF[23]_inst 
       (.I(op2[23]),
        .O(op2_IBUF[23]));
  IBUF \op2_IBUF[24]_inst 
       (.I(op2[24]),
        .O(op2_IBUF[24]));
  IBUF \op2_IBUF[25]_inst 
       (.I(op2[25]),
        .O(op2_IBUF[25]));
  IBUF \op2_IBUF[26]_inst 
       (.I(op2[26]),
        .O(op2_IBUF[26]));
  IBUF \op2_IBUF[27]_inst 
       (.I(op2[27]),
        .O(op2_IBUF[27]));
  IBUF \op2_IBUF[28]_inst 
       (.I(op2[28]),
        .O(op2_IBUF[28]));
  IBUF \op2_IBUF[29]_inst 
       (.I(op2[29]),
        .O(op2_IBUF[29]));
  IBUF \op2_IBUF[2]_inst 
       (.I(op2[2]),
        .O(op2_IBUF[2]));
  IBUF \op2_IBUF[30]_inst 
       (.I(op2[30]),
        .O(op2_IBUF[30]));
  IBUF \op2_IBUF[31]_inst 
       (.I(op2[31]),
        .O(op2_IBUF[31]));
  IBUF \op2_IBUF[3]_inst 
       (.I(op2[3]),
        .O(op2_IBUF[3]));
  IBUF \op2_IBUF[4]_inst 
       (.I(op2[4]),
        .O(op2_IBUF[4]));
  IBUF \op2_IBUF[5]_inst 
       (.I(op2[5]),
        .O(op2_IBUF[5]));
  IBUF \op2_IBUF[6]_inst 
       (.I(op2[6]),
        .O(op2_IBUF[6]));
  IBUF \op2_IBUF[7]_inst 
       (.I(op2[7]),
        .O(op2_IBUF[7]));
  IBUF \op2_IBUF[8]_inst 
       (.I(op2[8]),
        .O(op2_IBUF[8]));
  IBUF \op2_IBUF[9]_inst 
       (.I(op2[9]),
        .O(op2_IBUF[9]));
  OBUF \res_OBUF[0]_inst 
       (.I(res_OBUF[0]),
        .O(res[0]));
  OBUF \res_OBUF[10]_inst 
       (.I(res_OBUF[10]),
        .O(res[10]));
  OBUF \res_OBUF[11]_inst 
       (.I(res_OBUF[11]),
        .O(res[11]));
  OBUF \res_OBUF[12]_inst 
       (.I(res_OBUF[12]),
        .O(res[12]));
  OBUF \res_OBUF[13]_inst 
       (.I(res_OBUF[13]),
        .O(res[13]));
  OBUF \res_OBUF[14]_inst 
       (.I(res_OBUF[14]),
        .O(res[14]));
  OBUF \res_OBUF[15]_inst 
       (.I(res_OBUF[15]),
        .O(res[15]));
  OBUF \res_OBUF[16]_inst 
       (.I(res_OBUF[16]),
        .O(res[16]));
  OBUF \res_OBUF[17]_inst 
       (.I(res_OBUF[17]),
        .O(res[17]));
  OBUF \res_OBUF[18]_inst 
       (.I(res_OBUF[18]),
        .O(res[18]));
  OBUF \res_OBUF[19]_inst 
       (.I(res_OBUF[19]),
        .O(res[19]));
  OBUF \res_OBUF[1]_inst 
       (.I(res_OBUF[1]),
        .O(res[1]));
  OBUF \res_OBUF[20]_inst 
       (.I(res_OBUF[20]),
        .O(res[20]));
  OBUF \res_OBUF[21]_inst 
       (.I(res_OBUF[21]),
        .O(res[21]));
  OBUF \res_OBUF[22]_inst 
       (.I(res_OBUF[22]),
        .O(res[22]));
  OBUF \res_OBUF[23]_inst 
       (.I(res_OBUF[23]),
        .O(res[23]));
  OBUF \res_OBUF[24]_inst 
       (.I(res_OBUF[24]),
        .O(res[24]));
  OBUF \res_OBUF[25]_inst 
       (.I(res_OBUF[25]),
        .O(res[25]));
  OBUF \res_OBUF[26]_inst 
       (.I(res_OBUF[26]),
        .O(res[26]));
  OBUF \res_OBUF[27]_inst 
       (.I(res_OBUF[27]),
        .O(res[27]));
  OBUF \res_OBUF[28]_inst 
       (.I(res_OBUF[28]),
        .O(res[28]));
  OBUF \res_OBUF[29]_inst 
       (.I(res_OBUF[29]),
        .O(res[29]));
  OBUF \res_OBUF[2]_inst 
       (.I(res_OBUF[2]),
        .O(res[2]));
  OBUF \res_OBUF[30]_inst 
       (.I(res_OBUF[30]),
        .O(res[30]));
  OBUF \res_OBUF[31]_inst 
       (.I(res_OBUF[31]),
        .O(res[31]));
  OBUF \res_OBUF[3]_inst 
       (.I(res_OBUF[3]),
        .O(res[3]));
  OBUF \res_OBUF[4]_inst 
       (.I(res_OBUF[4]),
        .O(res[4]));
  OBUF \res_OBUF[5]_inst 
       (.I(res_OBUF[5]),
        .O(res[5]));
  OBUF \res_OBUF[6]_inst 
       (.I(res_OBUF[6]),
        .O(res[6]));
  OBUF \res_OBUF[7]_inst 
       (.I(res_OBUF[7]),
        .O(res[7]));
  OBUF \res_OBUF[8]_inst 
       (.I(res_OBUF[8]),
        .O(res[8]));
  OBUF \res_OBUF[9]_inst 
       (.I(res_OBUF[9]),
        .O(res[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_39),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_29),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_28),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_27),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_26),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_25),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_24),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[16] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_23),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[17] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_22),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[18] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_21),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[19] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_20),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_38),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[20] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_19),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[21] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_18),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[22] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_17),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[23] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_16),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[24] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_15),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[25] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_14),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[26] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_13),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[27] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_12),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[28] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_11),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[29] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_10),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_37),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[30] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_9),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[31] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_8),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_36),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_35),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_34),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_33),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_32),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_31),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.CLR(1'b0),
        .D(multiplier_verilog_n_30),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(res_OBUF[9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \resrdy_OBUF[0]_inst 
       (.I(resrdy_OBUF[0]),
        .O(resrdy[0]));
  OBUF \resrdy_OBUF[1]_inst 
       (.I(resrdy_OBUF[1]),
        .O(resrdy[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \resrdy_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg_n_2_[2] ),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(resrdy_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \resrdy_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg_n_2_[3] ),
        .G(n_0_6_BUFG),
        .GE(1'b1),
        .Q(resrdy_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_37),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[10] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_27),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[11] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_26),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[12] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_25),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[13] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_24),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[14] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_23),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[15] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_22),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[16] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_21),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[16]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[17] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_20),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[18] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_19),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[18]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[19] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_18),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[19]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_36),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[20] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_17),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[20]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[21] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_16),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[21]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[22] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_15),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[22]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[23] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_14),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[23]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[24] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_13),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[24]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[25] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_12),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[25]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[26] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_11),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[26]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[27] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_10),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[27]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[28] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_9),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[29] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_8),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_35),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[30] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_7),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[31] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_6),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[31]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_34),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_33),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_32),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_31),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_30),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[8] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_29),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tmp_reg[9] 
       (.CLR(1'b0),
        .D(multiplier_vhdl_n_28),
        .G(n_1_73_BUFG),
        .GE(1'b1),
        .Q(tmp[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
