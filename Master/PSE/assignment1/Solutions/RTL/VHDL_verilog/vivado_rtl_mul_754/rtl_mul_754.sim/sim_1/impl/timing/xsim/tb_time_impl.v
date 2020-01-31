// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Wed Jan  8 15:30:16 2020
// Host        : parallels-Parallels-Virtual-Platform running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/parallels/Desktop/elaborato_754/mutilplexer_ieee754/mutilplexer_ieee754.sim/sim_1/impl/timing/xsim/tb_time_impl.v
// Design      : tl
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module mul_ieee754_verilog
   (res_verilog_rdy,
    \op1[24] ,
    \op2[24] ,
    \op2[30] ,
    \op1[30] ,
    E,
    next_state,
    \res_reg[31]_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    op2_IBUF,
    op1_IBUF,
    inrdy_IBUF,
    \state_reg[2]_0 ,
    \state_reg[2]_1 ,
    \state_reg[3]_0 ,
    Q,
    res_vhdl_rdy,
    s_reg_0,
    \state[2]_i_4_0 ,
    \state[2]_i_4_1 );
  output res_verilog_rdy;
  output \op1[24] ;
  output \op2[24] ;
  output \op2[30] ;
  output \op1[30] ;
  output [0:0]E;
  output [0:0]next_state;
  output [31:0]\res_reg[31]_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [30:0]op2_IBUF;
  input [30:0]op1_IBUF;
  input [0:0]inrdy_IBUF;
  input \state_reg[2]_0 ;
  input \state_reg[2]_1 ;
  input \state_reg[3]_0 ;
  input [2:0]Q;
  input res_vhdl_rdy;
  input s_reg_0;
  input \state[2]_i_4_0 ;
  input \state[2]_i_4_1 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk_IBUF_BUFG;
  wire [8:0]data0;
  wire [8:1]data1;
  wire [7:0]exp;
  wire \exp[0]_i_1__0_n_0 ;
  wire \exp[1]_i_1__0_n_0 ;
  wire \exp[2]_i_1__0_n_0 ;
  wire \exp[3]_i_1__0_n_0 ;
  wire \exp[4]_i_1__0_n_0 ;
  wire \exp[5]_i_1__0_n_0 ;
  wire \exp[6]_i_1__0_n_0 ;
  wire \exp[7]_i_1_n_0 ;
  wire \exp[7]_i_2_n_0 ;
  wire g0_b21_i_10_n_0;
  wire g0_b21_i_13_n_0;
  wire g0_b21_i_14_n_0;
  wire g0_b21_i_15_n_0;
  wire g0_b21_i_16_n_0;
  wire g0_b21_i_17_n_0;
  wire g0_b21_i_3_n_0;
  wire g0_b21_i_4_n_0;
  wire g0_b21_i_5_n_0;
  wire g0_b21_i_6_n_0;
  wire g0_b21_i_7_n_0;
  wire g0_b21_i_8_n_0;
  wire g0_b21_i_9_n_0;
  wire g0_b21_n_0;
  wire g0_b22_n_0;
  wire [0:0]inrdy_IBUF;
  wire [22:0]m;
  wire \m1[0]_i_1_n_0 ;
  wire \m1[10]_i_1_n_0 ;
  wire \m1[11]_i_1_n_0 ;
  wire \m1[12]_i_1_n_0 ;
  wire \m1[13]_i_1_n_0 ;
  wire \m1[14]_i_1_n_0 ;
  wire \m1[15]_i_1_n_0 ;
  wire \m1[16]_i_1_n_0 ;
  wire \m1[17]_i_1_n_0 ;
  wire \m1[18]_i_1_n_0 ;
  wire \m1[19]_i_1_n_0 ;
  wire \m1[1]_i_1_n_0 ;
  wire \m1[20]_i_1_n_0 ;
  wire \m1[21]_i_1_n_0 ;
  wire \m1[22]_i_1__0_n_0 ;
  wire \m1[22]_i_2_n_0 ;
  wire \m1[22]_i_3_n_0 ;
  wire \m1[2]_i_1_n_0 ;
  wire \m1[3]_i_1_n_0 ;
  wire \m1[4]_i_1_n_0 ;
  wire \m1[5]_i_1_n_0 ;
  wire \m1[6]_i_1_n_0 ;
  wire \m1[7]_i_1_n_0 ;
  wire \m1[8]_i_1_n_0 ;
  wire \m1[9]_i_1_n_0 ;
  wire \m1_reg_n_0_[0] ;
  wire \m1_reg_n_0_[10] ;
  wire \m1_reg_n_0_[11] ;
  wire \m1_reg_n_0_[12] ;
  wire \m1_reg_n_0_[13] ;
  wire \m1_reg_n_0_[14] ;
  wire \m1_reg_n_0_[15] ;
  wire \m1_reg_n_0_[16] ;
  wire \m1_reg_n_0_[17] ;
  wire \m1_reg_n_0_[18] ;
  wire \m1_reg_n_0_[19] ;
  wire \m1_reg_n_0_[1] ;
  wire \m1_reg_n_0_[20] ;
  wire \m1_reg_n_0_[21] ;
  wire \m1_reg_n_0_[22] ;
  wire \m1_reg_n_0_[2] ;
  wire \m1_reg_n_0_[3] ;
  wire \m1_reg_n_0_[4] ;
  wire \m1_reg_n_0_[5] ;
  wire \m1_reg_n_0_[6] ;
  wire \m1_reg_n_0_[7] ;
  wire \m1_reg_n_0_[8] ;
  wire \m1_reg_n_0_[9] ;
  wire \m2[23]_i_1_n_0 ;
  wire \m2_reg_n_0_[0] ;
  wire \m2_reg_n_0_[10] ;
  wire \m2_reg_n_0_[11] ;
  wire \m2_reg_n_0_[12] ;
  wire \m2_reg_n_0_[13] ;
  wire \m2_reg_n_0_[14] ;
  wire \m2_reg_n_0_[15] ;
  wire \m2_reg_n_0_[16] ;
  wire \m2_reg_n_0_[17] ;
  wire \m2_reg_n_0_[18] ;
  wire \m2_reg_n_0_[19] ;
  wire \m2_reg_n_0_[1] ;
  wire \m2_reg_n_0_[20] ;
  wire \m2_reg_n_0_[21] ;
  wire \m2_reg_n_0_[22] ;
  wire \m2_reg_n_0_[23] ;
  wire \m2_reg_n_0_[2] ;
  wire \m2_reg_n_0_[3] ;
  wire \m2_reg_n_0_[4] ;
  wire \m2_reg_n_0_[5] ;
  wire \m2_reg_n_0_[6] ;
  wire \m2_reg_n_0_[7] ;
  wire \m2_reg_n_0_[8] ;
  wire \m2_reg_n_0_[9] ;
  wire \m[0]_i_1_n_0 ;
  wire \m[10]_i_1_n_0 ;
  wire \m[11]_i_1_n_0 ;
  wire \m[12]_i_1_n_0 ;
  wire \m[13]_i_1_n_0 ;
  wire \m[14]_i_1_n_0 ;
  wire \m[15]_i_1_n_0 ;
  wire \m[16]_i_1_n_0 ;
  wire \m[17]_i_1_n_0 ;
  wire \m[18]_i_1_n_0 ;
  wire \m[19]_i_1_n_0 ;
  wire \m[1]_i_1_n_0 ;
  wire \m[20]_i_1_n_0 ;
  wire \m[21]_i_1__0_n_0 ;
  wire \m[22]_i_1__0_n_0 ;
  wire \m[22]_i_2_n_0 ;
  wire \m[2]_i_1_n_0 ;
  wire \m[3]_i_1_n_0 ;
  wire \m[4]_i_1_n_0 ;
  wire \m[5]_i_1_n_0 ;
  wire \m[6]_i_1_n_0 ;
  wire \m[7]_i_1_n_0 ;
  wire \m[8]_i_1_n_0 ;
  wire \m[9]_i_1_n_0 ;
  wire [0:0]next_state;
  wire \op1[24] ;
  wire \op1[30] ;
  wire [30:0]op1_IBUF;
  wire \op2[24] ;
  wire \op2[30] ;
  wire [30:0]op2_IBUF;
  wire [25:0]p_0_in;
  wire [22:0]p_1_in;
  wire p_1_out_carry__0_i_1_n_0;
  wire p_1_out_carry__0_i_2_n_0;
  wire p_1_out_carry__0_i_3_n_0;
  wire p_1_out_carry__0_i_4_n_0;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_i_2_n_0;
  wire p_1_out_carry_i_3_n_0;
  wire p_1_out_carry_i_4_n_0;
  wire p_1_out_carry_i_5_n_0;
  wire p_1_out_carry_n_0;
  wire p_2_in;
  wire \res[0]_i_1_n_0 ;
  wire \res[10]_i_1_n_0 ;
  wire \res[11]_i_1_n_0 ;
  wire \res[12]_i_1_n_0 ;
  wire \res[13]_i_1_n_0 ;
  wire \res[14]_i_1_n_0 ;
  wire \res[15]_i_1_n_0 ;
  wire \res[16]_i_1_n_0 ;
  wire \res[17]_i_1_n_0 ;
  wire \res[18]_i_1_n_0 ;
  wire \res[19]_i_1_n_0 ;
  wire \res[1]_i_1_n_0 ;
  wire \res[20]_i_1_n_0 ;
  wire \res[21]_i_1_n_0 ;
  wire \res[22]_i_1_n_0 ;
  wire \res[23]_i_1_n_0 ;
  wire \res[24]_i_1_n_0 ;
  wire \res[25]_i_1_n_0 ;
  wire \res[26]_i_1_n_0 ;
  wire \res[27]_i_1_n_0 ;
  wire \res[28]_i_1_n_0 ;
  wire \res[29]_i_1_n_0 ;
  wire \res[2]_i_1_n_0 ;
  wire \res[30]_i_1_n_0 ;
  wire \res[31]_i_1_n_0 ;
  wire \res[31]_i_2_n_0 ;
  wire \res[3]_i_1_n_0 ;
  wire \res[4]_i_1_n_0 ;
  wire \res[5]_i_1_n_0 ;
  wire \res[6]_i_1_n_0 ;
  wire \res[7]_i_1_n_0 ;
  wire \res[8]_i_1_n_0 ;
  wire \res[9]_i_1_n_0 ;
  wire [31:0]\res_reg[31]_0 ;
  wire res_verilog_rdy;
  wire res_vhdl_rdy;
  wire reset_IBUF;
  wire s;
  wire s_i_1_n_0;
  wire s_reg_0;
  wire [4:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_14_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_16_n_0 ;
  wire \state[2]_i_17_n_0 ;
  wire \state[2]_i_18_n_0 ;
  wire \state[2]_i_19_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_20_n_0 ;
  wire \state[2]_i_21_n_0 ;
  wire \state[2]_i_22_n_0 ;
  wire \state[2]_i_23_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_0 ;
  wire \state[2]_i_4_1 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_2_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg[2]_1 ;
  wire \state_reg[3]_0 ;
  wire \tmpexp[0]_i_1_n_0 ;
  wire \tmpexp[1]_i_1_n_0 ;
  wire \tmpexp[2]_i_1_n_0 ;
  wire \tmpexp[3]_i_1_n_0 ;
  wire \tmpexp[3]_i_3__0_n_0 ;
  wire \tmpexp[3]_i_4__0_n_0 ;
  wire \tmpexp[3]_i_5__0_n_0 ;
  wire \tmpexp[3]_i_6_n_0 ;
  wire \tmpexp[4]_i_1_n_0 ;
  wire \tmpexp[5]_i_1_n_0 ;
  wire \tmpexp[6]_i_1_n_0 ;
  wire \tmpexp[7]_i_1_n_0 ;
  wire \tmpexp[7]_i_3__0_n_0 ;
  wire \tmpexp[7]_i_4__0_n_0 ;
  wire \tmpexp[7]_i_5__0_n_0 ;
  wire \tmpexp[7]_i_6__0_n_0 ;
  wire \tmpexp[8]_i_1_n_0 ;
  wire \tmpexp[8]_i_2_n_0 ;
  wire \tmpexp[8]_i_4_n_0 ;
  wire \tmpexp_reg[3]_i_2_n_0 ;
  wire \tmpexp_reg[7]_i_2_n_0 ;
  wire \tmpexp_reg_n_0_[0] ;
  wire \tmpexp_reg_n_0_[1] ;
  wire \tmpexp_reg_n_0_[2] ;
  wire \tmpexp_reg_n_0_[3] ;
  wire \tmpexp_reg_n_0_[4] ;
  wire \tmpexp_reg_n_0_[5] ;
  wire \tmpexp_reg_n_0_[6] ;
  wire \tmpexp_reg_n_0_[7] ;
  wire tmpm0__0_n_100;
  wire tmpm0__0_n_101;
  wire tmpm0__0_n_102;
  wire tmpm0__0_n_103;
  wire tmpm0__0_n_104;
  wire tmpm0__0_n_105;
  wire tmpm0__0_n_75;
  wire tmpm0__0_n_76;
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
  wire \tmpm[0]_i_1_n_0 ;
  wire \tmpm[10]_i_1_n_0 ;
  wire \tmpm[11]_i_1_n_0 ;
  wire \tmpm[12]_i_1_n_0 ;
  wire \tmpm[13]_i_1_n_0 ;
  wire \tmpm[14]_i_1_n_0 ;
  wire \tmpm[15]_i_1_n_0 ;
  wire \tmpm[16]_i_1_n_0 ;
  wire \tmpm[17]_i_1_n_0 ;
  wire \tmpm[18]_i_1_n_0 ;
  wire \tmpm[19]_i_1_n_0 ;
  wire \tmpm[1]_i_1_n_0 ;
  wire \tmpm[20]_i_1_n_0 ;
  wire \tmpm[21]_i_1_n_0 ;
  wire \tmpm[22]_i_1_n_0 ;
  wire \tmpm[22]_i_2_n_0 ;
  wire \tmpm[23]_i_1_n_0 ;
  wire \tmpm[23]_i_2_n_0 ;
  wire \tmpm[24]_i_1_n_0 ;
  wire \tmpm[24]_i_2_n_0 ;
  wire \tmpm[25]_i_1_n_0 ;
  wire \tmpm[25]_i_2_n_0 ;
  wire \tmpm[26]_i_1_n_0 ;
  wire \tmpm[26]_i_3_n_0 ;
  wire \tmpm[27]_i_1_n_0 ;
  wire \tmpm[27]_i_2_n_0 ;
  wire \tmpm[28]_i_1_n_0 ;
  wire \tmpm[28]_i_2_n_0 ;
  wire \tmpm[29]_i_1_n_0 ;
  wire \tmpm[29]_i_2_n_0 ;
  wire \tmpm[2]_i_1_n_0 ;
  wire \tmpm[30]_i_1_n_0 ;
  wire \tmpm[30]_i_3_n_0 ;
  wire \tmpm[31]_i_1_n_0 ;
  wire \tmpm[31]_i_2_n_0 ;
  wire \tmpm[32]_i_1_n_0 ;
  wire \tmpm[32]_i_2_n_0 ;
  wire \tmpm[33]_i_1_n_0 ;
  wire \tmpm[33]_i_2_n_0 ;
  wire \tmpm[34]_i_1_n_0 ;
  wire \tmpm[34]_i_3_n_0 ;
  wire \tmpm[35]_i_1_n_0 ;
  wire \tmpm[35]_i_2_n_0 ;
  wire \tmpm[36]_i_1_n_0 ;
  wire \tmpm[36]_i_2_n_0 ;
  wire \tmpm[37]_i_1_n_0 ;
  wire \tmpm[37]_i_2_n_0 ;
  wire \tmpm[38]_i_1_n_0 ;
  wire \tmpm[38]_i_3_n_0 ;
  wire \tmpm[39]_i_1_n_0 ;
  wire \tmpm[39]_i_2_n_0 ;
  wire \tmpm[3]_i_1_n_0 ;
  wire \tmpm[40]_i_1_n_0 ;
  wire \tmpm[40]_i_2_n_0 ;
  wire \tmpm[41]_i_1_n_0 ;
  wire \tmpm[41]_i_2_n_0 ;
  wire \tmpm[42]_i_1_n_0 ;
  wire \tmpm[42]_i_3_n_0 ;
  wire \tmpm[43]_i_1_n_0 ;
  wire \tmpm[43]_i_2_n_0 ;
  wire \tmpm[44]_i_1_n_0 ;
  wire \tmpm[44]_i_2_n_0 ;
  wire \tmpm[45]_i_1_n_0 ;
  wire \tmpm[45]_i_2_n_0 ;
  wire \tmpm[46]_i_1_n_0 ;
  wire \tmpm[46]_i_3_n_0 ;
  wire \tmpm[47]_i_1__0_n_0 ;
  wire \tmpm[47]_i_2_n_0 ;
  wire \tmpm[4]_i_1_n_0 ;
  wire \tmpm[5]_i_1_n_0 ;
  wire \tmpm[6]_i_1_n_0 ;
  wire \tmpm[7]_i_1_n_0 ;
  wire \tmpm[8]_i_1_n_0 ;
  wire \tmpm[9]_i_1_n_0 ;
  wire \tmpm_reg[26]_i_2_n_0 ;
  wire \tmpm_reg[30]_i_2_n_0 ;
  wire \tmpm_reg[34]_i_2_n_0 ;
  wire \tmpm_reg[38]_i_2_n_0 ;
  wire \tmpm_reg[42]_i_2_n_0 ;
  wire \tmpm_reg[46]_i_2_n_0 ;
  wire \tmpm_reg_n_0_[0] ;
  wire \tmpm_reg_n_0_[10] ;
  wire \tmpm_reg_n_0_[11] ;
  wire \tmpm_reg_n_0_[12] ;
  wire \tmpm_reg_n_0_[13] ;
  wire \tmpm_reg_n_0_[14] ;
  wire \tmpm_reg_n_0_[15] ;
  wire \tmpm_reg_n_0_[16] ;
  wire \tmpm_reg_n_0_[17] ;
  wire \tmpm_reg_n_0_[18] ;
  wire \tmpm_reg_n_0_[19] ;
  wire \tmpm_reg_n_0_[1] ;
  wire \tmpm_reg_n_0_[20] ;
  wire \tmpm_reg_n_0_[21] ;
  wire \tmpm_reg_n_0_[2] ;
  wire \tmpm_reg_n_0_[3] ;
  wire \tmpm_reg_n_0_[4] ;
  wire \tmpm_reg_n_0_[5] ;
  wire \tmpm_reg_n_0_[6] ;
  wire \tmpm_reg_n_0_[7] ;
  wire \tmpm_reg_n_0_[8] ;
  wire \tmpm_reg_n_0_[9] ;
  wire [2:0]NLW_p_1_out_carry_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__0_CO_UNCONNECTED;
  wire [2:0]\NLW_tmpexp_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmpexp_reg[7]_i_2_CO_UNCONNECTED ;
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
  wire [47:17]NLW_tmpm0_P_UNCONNECTED;
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
  wire [2:0]\NLW_tmpm_reg[26]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmpm_reg[30]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmpm_reg[34]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmpm_reg[38]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmpm_reg[42]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_tmpm_reg[46]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmpm_reg[47]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmpm_reg[47]_i_3_O_UNCONNECTED ;

  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[0]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[0] ),
        .O(\exp[0]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[1]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[1] ),
        .O(\exp[1]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[2]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[2] ),
        .O(\exp[2]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[3]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[3] ),
        .O(\exp[3]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[4]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[4] ),
        .O(\exp[4]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[5]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[5] ),
        .O(\exp[5]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[6]_i_1__0 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[6] ),
        .O(\exp[6]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h09220003)) 
    \exp[7]_i_1 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[3]_i_1_n_0 ),
        .I2(\state[4]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[0]_i_1_n_0 ),
        .O(\exp[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \exp[7]_i_2 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[7] ),
        .O(\exp[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[0]_i_1__0_n_0 ),
        .Q(exp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[1]_i_1__0_n_0 ),
        .Q(exp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[2]_i_1__0_n_0 ),
        .Q(exp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[3]_i_1__0_n_0 ),
        .Q(exp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[4]_i_1__0_n_0 ),
        .Q(exp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[5]_i_1__0_n_0 ),
        .Q(exp[5]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[6]_i_1__0_n_0 ),
        .Q(exp[6]));
  FDCE #(
    .INIT(1'b0)) 
    \exp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\exp[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\exp[7]_i_2_n_0 ),
        .Q(exp[7]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    g0_b0_i_33
       (.I0(op2_IBUF[30]),
        .I1(op2_IBUF[29]),
        .I2(op2_IBUF[27]),
        .I3(op2_IBUF[28]),
        .O(\op2[30] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    g0_b0_i_35
       (.I0(op1_IBUF[30]),
        .I1(op1_IBUF[29]),
        .I2(op1_IBUF[27]),
        .I3(op1_IBUF[28]),
        .O(\op1[30] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00006A01)) 
    g0_b21
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[0]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .I3(\state[3]_i_1_n_0 ),
        .I4(\state[4]_i_1_n_0 ),
        .O(g0_b21_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h01FF01FF01FF0101)) 
    g0_b21_i_1
       (.I0(state[0]),
        .I1(g0_b21_i_3_n_0),
        .I2(g0_b21_i_4_n_0),
        .I3(g0_b21_i_5_n_0),
        .I4(state[2]),
        .I5(g0_b21_i_6_n_0),
        .O(\state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A20000)) 
    g0_b21_i_10
       (.I0(\state[2]_i_5_n_0 ),
        .I1(state[3]),
        .I2(g0_b21_i_17_n_0),
        .I3(state[4]),
        .I4(state[1]),
        .O(g0_b21_i_10_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    g0_b21_i_11
       (.I0(op1_IBUF[24]),
        .I1(op1_IBUF[23]),
        .I2(op1_IBUF[26]),
        .I3(op1_IBUF[25]),
        .I4(\op1[30] ),
        .O(\op1[24] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    g0_b21_i_12
       (.I0(op2_IBUF[24]),
        .I1(op2_IBUF[23]),
        .I2(op2_IBUF[26]),
        .I3(op2_IBUF[25]),
        .I4(\op2[30] ),
        .O(\op2[24] ));
  LUT2 #(
    .INIT(4'h2)) 
    g0_b21_i_13
       (.I0(p_0_in[24]),
        .I1(p_0_in[25]),
        .O(g0_b21_i_13_n_0));
  LUT6 #(
    .INIT(64'h1103550F11030000)) 
    g0_b21_i_14
       (.I0(\op1[24] ),
        .I1(\op2[24] ),
        .I2(\state_reg[2]_0 ),
        .I3(\state[2]_i_9_n_0 ),
        .I4(\state[2]_i_8_n_0 ),
        .I5(\state_reg[2]_1 ),
        .O(g0_b21_i_14_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    g0_b21_i_15
       (.I0(p_0_in[24]),
        .I1(p_0_in[25]),
        .I2(state[1]),
        .O(g0_b21_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000001010000000)) 
    g0_b21_i_16
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(p_2_in),
        .I4(state[3]),
        .I5(state[4]),
        .O(g0_b21_i_16_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    g0_b21_i_17
       (.I0(\tmpexp_reg_n_0_[2] ),
        .I1(\tmpexp_reg_n_0_[6] ),
        .I2(\tmpexp_reg_n_0_[4] ),
        .I3(\state[4]_i_7_n_0 ),
        .O(g0_b21_i_17_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF001F)) 
    g0_b21_i_2
       (.I0(g0_b21_i_7_n_0),
        .I1(state[3]),
        .I2(g0_b21_i_8_n_0),
        .I3(state[2]),
        .I4(g0_b21_i_9_n_0),
        .I5(g0_b21_i_10_n_0),
        .O(\state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    g0_b21_i_3
       (.I0(state[4]),
        .I1(state[1]),
        .O(g0_b21_i_3_n_0));
  LUT6 #(
    .INIT(64'h47474747FFFFFF00)) 
    g0_b21_i_4
       (.I0(\state[4]_i_5_n_0 ),
        .I1(state[2]),
        .I2(p_0_in[25]),
        .I3(\op1[24] ),
        .I4(\op2[24] ),
        .I5(state[3]),
        .O(g0_b21_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEEF0E0C000)) 
    g0_b21_i_5
       (.I0(p_2_in),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(state[4]),
        .I5(state[3]),
        .O(g0_b21_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFAC0F0FFFAC000)) 
    g0_b21_i_6
       (.I0(inrdy_IBUF),
        .I1(g0_b21_i_13_n_0),
        .I2(state[4]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(p_0_in[0]),
        .O(g0_b21_i_6_n_0));
  LUT5 #(
    .INIT(32'hBEAEBAAA)) 
    g0_b21_i_7
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[4]),
        .I3(p_0_in[0]),
        .I4(g0_b21_i_14_n_0),
        .O(g0_b21_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFDFFFDFFFFFFFF0)) 
    g0_b21_i_8
       (.I0(p_0_in[25]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[4]),
        .I4(inrdy_IBUF),
        .I5(state[3]),
        .O(g0_b21_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    g0_b21_i_9
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[4]),
        .I4(g0_b21_i_15_n_0),
        .I5(g0_b21_i_16_n_0),
        .O(g0_b21_i_9_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00026A01)) 
    g0_b22
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[0]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .I3(\state[3]_i_1_n_0 ),
        .I4(\state[4]_i_1_n_0 ),
        .O(g0_b22_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[0]_i_1 
       (.I0(op1_IBUF[0]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[10]_i_1 
       (.I0(op1_IBUF[10]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[10]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[11]_i_1 
       (.I0(op1_IBUF[11]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[11]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[12]_i_1 
       (.I0(op1_IBUF[12]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[12]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[13]_i_1 
       (.I0(op1_IBUF[13]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[13]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[14]_i_1 
       (.I0(op1_IBUF[14]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[14]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[15]_i_1 
       (.I0(op1_IBUF[15]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[15]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[16]_i_1 
       (.I0(op1_IBUF[16]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[16]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[17]_i_1 
       (.I0(op1_IBUF[17]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[17]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[18]_i_1 
       (.I0(op1_IBUF[18]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[18]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[19]_i_1 
       (.I0(op1_IBUF[19]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[19]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[1]_i_1 
       (.I0(op1_IBUF[1]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[20]_i_1 
       (.I0(op1_IBUF[20]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[20]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[21]_i_1 
       (.I0(op1_IBUF[21]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[21]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m1[22]_i_1__0 
       (.I0(\m1[22]_i_3_n_0 ),
        .I1(\state[0]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\m1[22]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[22]_i_2 
       (.I0(op1_IBUF[22]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[22]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m1[22]_i_3 
       (.I0(\state[4]_i_1_n_0 ),
        .I1(\state[3]_i_1_n_0 ),
        .O(\m1[22]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[2]_i_1 
       (.I0(op1_IBUF[2]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[3]_i_1 
       (.I0(op1_IBUF[3]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[3]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[4]_i_1 
       (.I0(op1_IBUF[4]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[5]_i_1 
       (.I0(op1_IBUF[5]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[6]_i_1 
       (.I0(op1_IBUF[6]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[7]_i_1 
       (.I0(op1_IBUF[7]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[8]_i_1 
       (.I0(op1_IBUF[8]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[8]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m1[9]_i_1 
       (.I0(op1_IBUF[9]),
        .I1(\state[1]_i_1_n_0 ),
        .O(\m1[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[0]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[10]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[11]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[12]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[13]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[14]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[15]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[16]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[17]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[18]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[19]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[1]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[20]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[21]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[22]_i_2_n_0 ),
        .Q(\m1_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[2]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[3]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[4]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[5]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[6]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[7]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[8]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \m1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m1[9]_i_1_n_0 ),
        .Q(\m1_reg_n_0_[9] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[0]_i_1 
       (.I0(op2_IBUF[0]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[10]_i_1 
       (.I0(op2_IBUF[10]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[11]_i_1 
       (.I0(op2_IBUF[11]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[12]_i_1 
       (.I0(op2_IBUF[12]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[13]_i_1 
       (.I0(op2_IBUF[13]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[14]_i_1 
       (.I0(op2_IBUF[14]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[15]_i_1 
       (.I0(op2_IBUF[15]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[16]_i_1 
       (.I0(op2_IBUF[16]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[17]_i_1 
       (.I0(op2_IBUF[17]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[18]_i_1 
       (.I0(op2_IBUF[18]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[18]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[19]_i_1 
       (.I0(op2_IBUF[19]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[19]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[1]_i_1 
       (.I0(op2_IBUF[1]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[20]_i_1 
       (.I0(op2_IBUF[20]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[20]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[21]_i_1 
       (.I0(op2_IBUF[21]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[21]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[22]_i_1 
       (.I0(op2_IBUF[22]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0008)) 
    \m2[23]_i_1 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[1]_i_1_n_0 ),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\m1[22]_i_3_n_0 ),
        .I4(\m2_reg_n_0_[23] ),
        .O(\m2[23]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[2]_i_1 
       (.I0(op2_IBUF[2]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[3]_i_1 
       (.I0(op2_IBUF[3]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[4]_i_1 
       (.I0(op2_IBUF[4]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[5]_i_1 
       (.I0(op2_IBUF[5]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[6]_i_1 
       (.I0(op2_IBUF[6]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[7]_i_1 
       (.I0(op2_IBUF[7]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[8]_i_1 
       (.I0(op2_IBUF[8]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m2[9]_i_1 
       (.I0(op2_IBUF[9]),
        .I1(\state[1]_i_1_n_0 ),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[0]),
        .Q(\m2_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[10]),
        .Q(\m2_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[11]),
        .Q(\m2_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[12]),
        .Q(\m2_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[13]),
        .Q(\m2_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[14]),
        .Q(\m2_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[15]),
        .Q(\m2_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[16]),
        .Q(\m2_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[17]),
        .Q(\m2_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[18]),
        .Q(\m2_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[19]),
        .Q(\m2_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[1]),
        .Q(\m2_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[20]),
        .Q(\m2_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[21]),
        .Q(\m2_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[22]),
        .Q(\m2_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\m2[23]_i_1_n_0 ),
        .Q(\m2_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[2]),
        .Q(\m2_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[3]),
        .Q(\m2_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[4]),
        .Q(\m2_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[5]),
        .Q(\m2_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[6]),
        .Q(\m2_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[7]),
        .Q(\m2_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[8]),
        .Q(\m2_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \m2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(p_1_in[9]),
        .Q(\m2_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[0]_i_1 
       (.I0(p_0_in[1]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[10]_i_1 
       (.I0(p_0_in[11]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[11]_i_1 
       (.I0(p_0_in[12]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[12]_i_1 
       (.I0(p_0_in[13]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[13]_i_1 
       (.I0(p_0_in[14]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[14]_i_1 
       (.I0(p_0_in[15]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[15]_i_1 
       (.I0(p_0_in[16]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[16]_i_1 
       (.I0(p_0_in[17]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[17]_i_1 
       (.I0(p_0_in[18]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[18]_i_1 
       (.I0(p_0_in[19]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[19]_i_1 
       (.I0(p_0_in[20]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[1]_i_1 
       (.I0(p_0_in[2]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[20]_i_1 
       (.I0(p_0_in[21]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[21]_i_1__0 
       (.I0(p_0_in[22]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[21]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h01011401)) 
    \m[22]_i_1__0 
       (.I0(\state[3]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\state[0]_i_1_n_0 ),
        .I4(\state[2]_i_1_n_0 ),
        .O(\m[22]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \m[22]_i_2 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(p_0_in[23]),
        .I3(\state[4]_i_1_n_0 ),
        .O(\m[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[2]_i_1 
       (.I0(p_0_in[3]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[3]_i_1 
       (.I0(p_0_in[4]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[4]_i_1 
       (.I0(p_0_in[5]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[5]_i_1 
       (.I0(p_0_in[6]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[6]_i_1 
       (.I0(p_0_in[7]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[7]_i_1 
       (.I0(p_0_in[8]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[8]_i_1 
       (.I0(p_0_in[9]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m[9]_i_1 
       (.I0(p_0_in[10]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\m[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[0]_i_1_n_0 ),
        .Q(m[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[10]_i_1_n_0 ),
        .Q(m[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[11]_i_1_n_0 ),
        .Q(m[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[12]_i_1_n_0 ),
        .Q(m[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[13]_i_1_n_0 ),
        .Q(m[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[14]_i_1_n_0 ),
        .Q(m[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[15]_i_1_n_0 ),
        .Q(m[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[16]_i_1_n_0 ),
        .Q(m[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[17]_i_1_n_0 ),
        .Q(m[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[18]_i_1_n_0 ),
        .Q(m[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[19]_i_1_n_0 ),
        .Q(m[19]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[1]_i_1_n_0 ),
        .Q(m[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[20]_i_1_n_0 ),
        .Q(m[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[21]_i_1__0_n_0 ),
        .Q(m[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[22]_i_2_n_0 ),
        .Q(m[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[2]_i_1_n_0 ),
        .Q(m[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[3]_i_1_n_0 ),
        .Q(m[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[4]_i_1_n_0 ),
        .Q(m[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[5]_i_1_n_0 ),
        .Q(m[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[6]_i_1_n_0 ),
        .Q(m[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[7]_i_1_n_0 ),
        .Q(m[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[8]_i_1_n_0 ),
        .Q(m[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m[22]_i_1__0_n_0 ),
        .CLR(reset_IBUF),
        .D(\m[9]_i_1_n_0 ),
        .Q(m[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_0,NLW_p_1_out_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\tmpexp_reg_n_0_[0] ),
        .DI({\tmpexp_reg_n_0_[3] ,\tmpexp_reg_n_0_[2] ,\tmpexp_reg_n_0_[1] ,p_1_out_carry_i_1_n_0}),
        .O(data1[4:1]),
        .S({p_1_out_carry_i_2_n_0,p_1_out_carry_i_3_n_0,p_1_out_carry_i_4_n_0,p_1_out_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CO(NLW_p_1_out_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\tmpexp_reg_n_0_[6] ,\tmpexp_reg_n_0_[5] ,\tmpexp_reg_n_0_[4] }),
        .O(data1[8:5]),
        .S({p_1_out_carry__0_i_1_n_0,p_1_out_carry__0_i_2_n_0,p_1_out_carry__0_i_3_n_0,p_1_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_1
       (.I0(\tmpexp_reg_n_0_[7] ),
        .I1(p_2_in),
        .O(p_1_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2
       (.I0(\tmpexp_reg_n_0_[6] ),
        .I1(\tmpexp_reg_n_0_[7] ),
        .O(p_1_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3
       (.I0(\tmpexp_reg_n_0_[5] ),
        .I1(\tmpexp_reg_n_0_[6] ),
        .O(p_1_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4
       (.I0(\tmpexp_reg_n_0_[4] ),
        .I1(\tmpexp_reg_n_0_[5] ),
        .O(p_1_out_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_carry_i_1
       (.I0(\tmpexp_reg_n_0_[1] ),
        .O(p_1_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2
       (.I0(\tmpexp_reg_n_0_[3] ),
        .I1(\tmpexp_reg_n_0_[4] ),
        .O(p_1_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3
       (.I0(\tmpexp_reg_n_0_[2] ),
        .I1(\tmpexp_reg_n_0_[3] ),
        .O(p_1_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_4
       (.I0(\tmpexp_reg_n_0_[1] ),
        .I1(\tmpexp_reg_n_0_[2] ),
        .O(p_1_out_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_5
       (.I0(\tmpexp_reg_n_0_[1] ),
        .I1(\state[2]_i_1_n_0 ),
        .O(p_1_out_carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[0]_i_1 
       (.I0(m[0]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[10]_i_1 
       (.I0(m[10]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[11]_i_1 
       (.I0(m[11]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[12]_i_1 
       (.I0(m[12]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[13]_i_1 
       (.I0(m[13]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[14]_i_1 
       (.I0(m[14]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[15]_i_1 
       (.I0(m[15]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[16]_i_1 
       (.I0(m[16]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[17]_i_1 
       (.I0(m[17]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[18]_i_1 
       (.I0(m[18]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[19]_i_1 
       (.I0(m[19]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[1]_i_1 
       (.I0(m[1]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[20]_i_1 
       (.I0(m[20]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[21]_i_1 
       (.I0(m[21]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[22]_i_1 
       (.I0(m[22]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[23]_i_1 
       (.I0(exp[0]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[24]_i_1 
       (.I0(exp[1]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[25]_i_1 
       (.I0(exp[2]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[26]_i_1 
       (.I0(exp[3]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[27]_i_1 
       (.I0(exp[4]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[28]_i_1 
       (.I0(exp[5]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[29]_i_1 
       (.I0(exp[6]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[2]_i_1 
       (.I0(m[2]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[30]_i_1 
       (.I0(exp[7]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[30]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hCC010001)) 
    \res[31]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(\state[1]_i_1_n_0 ),
        .I2(\m1[22]_i_3_n_0 ),
        .I3(\state[2]_i_1_n_0 ),
        .I4(\state[4]_i_1_n_0 ),
        .O(\res[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDCDCDCCC)) 
    \res[31]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(res_verilog_rdy),
        .I4(res_vhdl_rdy),
        .O(E));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[31]_i_2 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(\state[4]_i_1_n_0 ),
        .I2(s),
        .O(\res[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[3]_i_1 
       (.I0(m[3]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[4]_i_1 
       (.I0(m[4]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[5]_i_1 
       (.I0(m[5]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[6]_i_1 
       (.I0(m[6]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[7]_i_1 
       (.I0(m[7]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[8]_i_1 
       (.I0(m[8]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \res[9]_i_1 
       (.I0(m[9]),
        .I1(\state[4]_i_1_n_0 ),
        .O(\res[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[0]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[10]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[11]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[12]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[13]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[14]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[15]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[16]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[17]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[18]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[19]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[1]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[20]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[21]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[22]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[23]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[24]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[25]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[26]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[27]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[28]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[29]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[2]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[30]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[31]_i_2_n_0 ),
        .Q(\res_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[3]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[4]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[5]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[6]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[7]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[8]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\res[9]_i_1_n_0 ),
        .Q(\res_reg[31]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    resrdy_reg
       (.C(clk_IBUF_BUFG),
        .CE(\res[31]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\state[4]_i_1_n_0 ),
        .Q(res_verilog_rdy));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFCFFEFC00000200)) 
    s_i_1
       (.I0(s_reg_0),
        .I1(\m1[22]_i_3_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[0]_i_1_n_0 ),
        .I5(s),
        .O(s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(s_i_1_n_0),
        .Q(s));
  LUT5 #(
    .INIT(32'h00101000)) 
    \state[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(res_verilog_rdy),
        .I4(res_vhdl_rdy),
        .O(next_state));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBBA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(state[0]),
        .I3(\state[2]_i_4_n_0 ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(state[4]),
        .O(\state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h51510051)) 
    \state[2]_i_11 
       (.I0(state[3]),
        .I1(\state[2]_i_4_0 ),
        .I2(\op2[30] ),
        .I3(\state[2]_i_4_1 ),
        .I4(\op1[30] ),
        .O(\state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_12 
       (.I0(\m2_reg_n_0_[15] ),
        .I1(\m2_reg_n_0_[3] ),
        .I2(\m2_reg_n_0_[21] ),
        .I3(\m2_reg_n_0_[19] ),
        .O(\state[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_13 
       (.I0(\m2_reg_n_0_[17] ),
        .I1(\m2_reg_n_0_[13] ),
        .I2(\m2_reg_n_0_[8] ),
        .I3(\m2_reg_n_0_[4] ),
        .O(\state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_14 
       (.I0(\m2_reg_n_0_[12] ),
        .I1(\m2_reg_n_0_[10] ),
        .I2(\m2_reg_n_0_[16] ),
        .I3(\m2_reg_n_0_[6] ),
        .O(\state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_15 
       (.I0(\m2_reg_n_0_[7] ),
        .I1(\m2_reg_n_0_[1] ),
        .I2(\m2_reg_n_0_[14] ),
        .I3(\m2_reg_n_0_[2] ),
        .O(\state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_16 
       (.I0(\m2_reg_n_0_[9] ),
        .I1(\m2_reg_n_0_[5] ),
        .I2(\m2_reg_n_0_[22] ),
        .I3(\m2_reg_n_0_[11] ),
        .O(\state[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_17 
       (.I0(\m2_reg_n_0_[23] ),
        .I1(\m2_reg_n_0_[0] ),
        .I2(\m2_reg_n_0_[20] ),
        .I3(\m2_reg_n_0_[18] ),
        .O(\state[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_18 
       (.I0(\m1_reg_n_0_[14] ),
        .I1(\m1_reg_n_0_[10] ),
        .I2(\m1_reg_n_0_[16] ),
        .I3(\m1_reg_n_0_[5] ),
        .O(\state[2]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_19 
       (.I0(\m1_reg_n_0_[4] ),
        .I1(\m1_reg_n_0_[3] ),
        .I2(\m1_reg_n_0_[6] ),
        .I3(\m1_reg_n_0_[8] ),
        .O(\state[2]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00080308)) 
    \state[2]_i_2 
       (.I0(state[4]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_20 
       (.I0(\m1_reg_n_0_[12] ),
        .I1(\m1_reg_n_0_[0] ),
        .I2(\m1_reg_n_0_[11] ),
        .I3(\m2_reg_n_0_[23] ),
        .O(\state[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_21 
       (.I0(\m1_reg_n_0_[21] ),
        .I1(\m1_reg_n_0_[2] ),
        .I2(\m1_reg_n_0_[19] ),
        .I3(\m1_reg_n_0_[20] ),
        .O(\state[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_22 
       (.I0(\m1_reg_n_0_[7] ),
        .I1(\m1_reg_n_0_[9] ),
        .I2(\m1_reg_n_0_[18] ),
        .I3(\m1_reg_n_0_[22] ),
        .O(\state[2]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[2]_i_23 
       (.I0(\m1_reg_n_0_[17] ),
        .I1(\m1_reg_n_0_[15] ),
        .I2(\m1_reg_n_0_[13] ),
        .I3(\m1_reg_n_0_[1] ),
        .O(\state[2]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \state[2]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA800A8A8AAAAAAAA)) 
    \state[2]_i_4 
       (.I0(\state[2]_i_6_n_0 ),
        .I1(\state_reg[2]_1 ),
        .I2(\state[2]_i_8_n_0 ),
        .I3(\state[2]_i_9_n_0 ),
        .I4(\state_reg[2]_0 ),
        .I5(\state[2]_i_11_n_0 ),
        .O(\state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \state[2]_i_5 
       (.I0(\state_reg[3]_0 ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .O(\state[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \state[2]_i_6 
       (.I0(p_0_in[25]),
        .I1(state[3]),
        .O(\state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_8 
       (.I0(\state[2]_i_12_n_0 ),
        .I1(\state[2]_i_13_n_0 ),
        .I2(\state[2]_i_14_n_0 ),
        .I3(\state[2]_i_15_n_0 ),
        .I4(\state[2]_i_16_n_0 ),
        .I5(\state[2]_i_17_n_0 ),
        .O(\state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \state[2]_i_9 
       (.I0(\state[2]_i_18_n_0 ),
        .I1(\state[2]_i_19_n_0 ),
        .I2(\state[2]_i_20_n_0 ),
        .I3(\state[2]_i_21_n_0 ),
        .I4(\state[2]_i_22_n_0 ),
        .I5(\state[2]_i_23_n_0 ),
        .O(\state[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFF04)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(state[2]),
        .I2(state[4]),
        .I3(\state[3]_i_3_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF33F055FF00FF)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(\state[4]_i_5_n_0 ),
        .I2(\state_reg[3]_0 ),
        .I3(state[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000A0000300000)) 
    \state[3]_i_3 
       (.I0(\state[4]_i_6_n_0 ),
        .I1(\state[3]_i_5_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[4]),
        .I5(state[3]),
        .O(\state[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[3]_i_4 
       (.I0(p_0_in[25]),
        .I1(p_0_in[24]),
        .O(\state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_5 
       (.I0(p_2_in),
        .I1(state[0]),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000D500)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\state[4]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[4]),
        .I5(\state[4]_i_4_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBBB000FBBBB)) 
    \state[4]_i_2 
       (.I0(state[3]),
        .I1(\state_reg[3]_0 ),
        .I2(p_0_in[25]),
        .I3(p_0_in[24]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\state[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[4]_i_3 
       (.I0(state[1]),
        .I1(\state[4]_i_5_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h50500FBA001005AA)) 
    \state[4]_i_4 
       (.I0(state[4]),
        .I1(\state[4]_i_6_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[0]),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \state[4]_i_5 
       (.I0(p_0_in[24]),
        .I1(p_0_in[25]),
        .I2(\state[4]_i_7_n_0 ),
        .I3(\tmpexp_reg_n_0_[4] ),
        .I4(\tmpexp_reg_n_0_[6] ),
        .I5(\tmpexp_reg_n_0_[2] ),
        .O(\state[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \state[4]_i_6 
       (.I0(state[0]),
        .I1(p_0_in[25]),
        .I2(p_0_in[24]),
        .O(\state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[4]_i_7 
       (.I0(p_2_in),
        .I1(\tmpexp_reg_n_0_[7] ),
        .I2(\tmpexp_reg_n_0_[3] ),
        .I3(\tmpexp_reg_n_0_[5] ),
        .I4(\tmpexp_reg_n_0_[1] ),
        .I5(\tmpexp_reg_n_0_[0] ),
        .O(\state[4]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[3]_i_1_n_0 ),
        .Q(state[3]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\state[4]_i_1_n_0 ),
        .Q(state[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h00FF00FF00F040E0)) 
    \tmpexp[0]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[0]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(\tmpexp_reg_n_0_[0] ),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[1]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[1]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[1]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[2]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[2]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[2]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[3]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[3]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[3]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_3__0 
       (.I0(op1_IBUF[26]),
        .I1(op2_IBUF[26]),
        .O(\tmpexp[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_4__0 
       (.I0(op1_IBUF[25]),
        .I1(op2_IBUF[25]),
        .O(\tmpexp[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_5__0 
       (.I0(op1_IBUF[24]),
        .I1(op2_IBUF[24]),
        .O(\tmpexp[3]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_6 
       (.I0(op1_IBUF[23]),
        .I1(op2_IBUF[23]),
        .O(\tmpexp[3]_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[4]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[4]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[4]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[5]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[5]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[5]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[6]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[6]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[6]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[7]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[7]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[7]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmpexp[7]_i_3__0 
       (.I0(op2_IBUF[30]),
        .I1(op1_IBUF[30]),
        .O(\tmpexp[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_4__0 
       (.I0(op1_IBUF[29]),
        .I1(op2_IBUF[29]),
        .O(\tmpexp[7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_5__0 
       (.I0(op1_IBUF[28]),
        .I1(op2_IBUF[28]),
        .O(\tmpexp[7]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_6__0 
       (.I0(op1_IBUF[27]),
        .I1(op2_IBUF[27]),
        .O(\tmpexp[7]_i_6__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h78207801)) 
    \tmpexp[8]_i_1 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\state[1]_i_1_n_0 ),
        .I3(\state[3]_i_1_n_0 ),
        .I4(\state[4]_i_1_n_0 ),
        .O(\tmpexp[8]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF00FF00F000E040)) 
    \tmpexp[8]_i_2 
       (.I0(\state[0]_i_1_n_0 ),
        .I1(data0[8]),
        .I2(\state[3]_i_1_n_0 ),
        .I3(data1[8]),
        .I4(\state[2]_i_1_n_0 ),
        .I5(\state[4]_i_1_n_0 ),
        .O(\tmpexp[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmpexp[8]_i_4 
       (.I0(op2_IBUF[30]),
        .O(\tmpexp[8]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[0]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[1]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[2]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[3]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[3] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpexp_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\tmpexp_reg[3]_i_2_n_0 ,\NLW_tmpexp_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(op1_IBUF[26:23]),
        .O(data0[3:0]),
        .S({\tmpexp[3]_i_3__0_n_0 ,\tmpexp[3]_i_4__0_n_0 ,\tmpexp[3]_i_5__0_n_0 ,\tmpexp[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[4]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[5]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[6]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[7]_i_1_n_0 ),
        .Q(\tmpexp_reg_n_0_[7] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpexp_reg[7]_i_2 
       (.CI(\tmpexp_reg[3]_i_2_n_0 ),
        .CO({\tmpexp_reg[7]_i_2_n_0 ,\NLW_tmpexp_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(op1_IBUF[30:27]),
        .O(data0[7:4]),
        .S({\tmpexp[7]_i_3__0_n_0 ,\tmpexp[7]_i_4__0_n_0 ,\tmpexp[7]_i_5__0_n_0 ,\tmpexp[7]_i_6__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tmpexp_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\tmpexp[8]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tmpexp[8]_i_2_n_0 ),
        .Q(p_2_in));
  CARRY4 \tmpexp_reg[8]_i_3 
       (.CI(\tmpexp_reg[7]_i_2_n_0 ),
        .CO(\NLW_tmpexp_reg[8]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmpexp_reg[8]_i_3_O_UNCONNECTED [3:1],data0[8]}),
        .S({1'b0,1'b0,1'b0,\tmpexp[8]_i_4_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_0_[23] ,\m2_reg_n_0_[22] ,\m2_reg_n_0_[21] ,\m2_reg_n_0_[20] ,\m2_reg_n_0_[19] ,\m2_reg_n_0_[18] ,\m2_reg_n_0_[17] ,\m2_reg_n_0_[16] ,\m2_reg_n_0_[15] ,\m2_reg_n_0_[14] ,\m2_reg_n_0_[13] ,\m2_reg_n_0_[12] ,\m2_reg_n_0_[11] ,\m2_reg_n_0_[10] ,\m2_reg_n_0_[9] ,\m2_reg_n_0_[8] ,\m2_reg_n_0_[7] ,\m2_reg_n_0_[6] ,\m2_reg_n_0_[5] ,\m2_reg_n_0_[4] ,\m2_reg_n_0_[3] ,\m2_reg_n_0_[2] ,\m2_reg_n_0_[1] ,\m2_reg_n_0_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmpm0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,\m1_reg_n_0_[16] ,\m1_reg_n_0_[15] ,\m1_reg_n_0_[14] ,\m1_reg_n_0_[13] ,\m1_reg_n_0_[12] ,\m1_reg_n_0_[11] ,\m1_reg_n_0_[10] ,\m1_reg_n_0_[9] ,\m1_reg_n_0_[8] ,\m1_reg_n_0_[7] ,\m1_reg_n_0_[6] ,\m1_reg_n_0_[5] ,\m1_reg_n_0_[4] ,\m1_reg_n_0_[3] ,\m1_reg_n_0_[2] ,\m1_reg_n_0_[1] ,\m1_reg_n_0_[0] }),
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
        .P({NLW_tmpm0_P_UNCONNECTED[47:17],tmpm0_n_89,tmpm0_n_90,tmpm0_n_91,tmpm0_n_92,tmpm0_n_93,tmpm0_n_94,tmpm0_n_95,tmpm0_n_96,tmpm0_n_97,tmpm0_n_98,tmpm0_n_99,tmpm0_n_100,tmpm0_n_101,tmpm0_n_102,tmpm0_n_103,tmpm0_n_104,tmpm0_n_105}),
        .PATTERNBDETECT(NLW_tmpm0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmpm0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({tmpm0_n_106,tmpm0_n_107,tmpm0_n_108,tmpm0_n_109,tmpm0_n_110,tmpm0_n_111,tmpm0_n_112,tmpm0_n_113,tmpm0_n_114,tmpm0_n_115,tmpm0_n_116,tmpm0_n_117,tmpm0_n_118,tmpm0_n_119,tmpm0_n_120,tmpm0_n_121,tmpm0_n_122,tmpm0_n_123,tmpm0_n_124,tmpm0_n_125,tmpm0_n_126,tmpm0_n_127,tmpm0_n_128,tmpm0_n_129,tmpm0_n_130,tmpm0_n_131,tmpm0_n_132,tmpm0_n_133,tmpm0_n_134,tmpm0_n_135,tmpm0_n_136,tmpm0_n_137,tmpm0_n_138,tmpm0_n_139,tmpm0_n_140,tmpm0_n_141,tmpm0_n_142,tmpm0_n_143,tmpm0_n_144,tmpm0_n_145,tmpm0_n_146,tmpm0_n_147,tmpm0_n_148,tmpm0_n_149,tmpm0_n_150,tmpm0_n_151,tmpm0_n_152,tmpm0_n_153}),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_0_[23] ,\m2_reg_n_0_[22] ,\m2_reg_n_0_[21] ,\m2_reg_n_0_[20] ,\m2_reg_n_0_[19] ,\m2_reg_n_0_[18] ,\m2_reg_n_0_[17] ,\m2_reg_n_0_[16] ,\m2_reg_n_0_[15] ,\m2_reg_n_0_[14] ,\m2_reg_n_0_[13] ,\m2_reg_n_0_[12] ,\m2_reg_n_0_[11] ,\m2_reg_n_0_[10] ,\m2_reg_n_0_[9] ,\m2_reg_n_0_[8] ,\m2_reg_n_0_[7] ,\m2_reg_n_0_[6] ,\m2_reg_n_0_[5] ,\m2_reg_n_0_[4] ,\m2_reg_n_0_[3] ,\m2_reg_n_0_[2] ,\m2_reg_n_0_[1] ,\m2_reg_n_0_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmpm0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_0_[23] ,\m1_reg_n_0_[22] ,\m1_reg_n_0_[21] ,\m1_reg_n_0_[20] ,\m1_reg_n_0_[19] ,\m1_reg_n_0_[18] ,\m1_reg_n_0_[17] }),
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
        .P({NLW_tmpm0__0_P_UNCONNECTED[47:31],tmpm0__0_n_75,tmpm0__0_n_76,tmpm0__0_n_77,tmpm0__0_n_78,tmpm0__0_n_79,tmpm0__0_n_80,tmpm0__0_n_81,tmpm0__0_n_82,tmpm0__0_n_83,tmpm0__0_n_84,tmpm0__0_n_85,tmpm0__0_n_86,tmpm0__0_n_87,tmpm0__0_n_88,tmpm0__0_n_89,tmpm0__0_n_90,tmpm0__0_n_91,tmpm0__0_n_92,tmpm0__0_n_93,tmpm0__0_n_94,tmpm0__0_n_95,tmpm0__0_n_96,tmpm0__0_n_97,tmpm0__0_n_98,tmpm0__0_n_99,tmpm0__0_n_100,tmpm0__0_n_101,tmpm0__0_n_102,tmpm0__0_n_103,tmpm0__0_n_104,tmpm0__0_n_105}),
        .PATTERNBDETECT(NLW_tmpm0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmpm0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({tmpm0_n_106,tmpm0_n_107,tmpm0_n_108,tmpm0_n_109,tmpm0_n_110,tmpm0_n_111,tmpm0_n_112,tmpm0_n_113,tmpm0_n_114,tmpm0_n_115,tmpm0_n_116,tmpm0_n_117,tmpm0_n_118,tmpm0_n_119,tmpm0_n_120,tmpm0_n_121,tmpm0_n_122,tmpm0_n_123,tmpm0_n_124,tmpm0_n_125,tmpm0_n_126,tmpm0_n_127,tmpm0_n_128,tmpm0_n_129,tmpm0_n_130,tmpm0_n_131,tmpm0_n_132,tmpm0_n_133,tmpm0_n_134,tmpm0_n_135,tmpm0_n_136,tmpm0_n_137,tmpm0_n_138,tmpm0_n_139,tmpm0_n_140,tmpm0_n_141,tmpm0_n_142,tmpm0_n_143,tmpm0_n_144,tmpm0_n_145,tmpm0_n_146,tmpm0_n_147,tmpm0_n_148,tmpm0_n_149,tmpm0_n_150,tmpm0_n_151,tmpm0_n_152,tmpm0_n_153}),
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
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h20222000)) 
    \tmpm[0]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[1] ),
        .I3(\state[0]_i_1_n_0 ),
        .I4(tmpm0_n_105),
        .O(\tmpm[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[10]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[9] ),
        .I3(tmpm0_n_95),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[11] ),
        .O(\tmpm[10]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[11]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[10] ),
        .I3(tmpm0_n_94),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[12] ),
        .O(\tmpm[11]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[12]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[11] ),
        .I3(tmpm0_n_93),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[13] ),
        .O(\tmpm[12]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[13]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[12] ),
        .I3(tmpm0_n_92),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[14] ),
        .O(\tmpm[13]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[14]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[13] ),
        .I3(tmpm0_n_91),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[15] ),
        .O(\tmpm[14]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[15]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[14] ),
        .I3(tmpm0_n_90),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[16] ),
        .O(\tmpm[15]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[16]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[15] ),
        .I3(tmpm0_n_89),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[17] ),
        .O(\tmpm[16]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[17]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[16] ),
        .I3(tmpm0__0_n_105),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[18] ),
        .O(\tmpm[17]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[18]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[17] ),
        .I3(tmpm0__0_n_104),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[19] ),
        .O(\tmpm[18]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[19]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[18] ),
        .I3(tmpm0__0_n_103),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[20] ),
        .O(\tmpm[19]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[1]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[0] ),
        .I3(tmpm0_n_104),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[2] ),
        .O(\tmpm[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[20]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[19] ),
        .I3(tmpm0__0_n_102),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[21] ),
        .O(\tmpm[20]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[21]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[20] ),
        .I3(tmpm0__0_n_101),
        .I4(\state[0]_i_1_n_0 ),
        .I5(p_0_in[0]),
        .O(\tmpm[21]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFA300A000A300)) 
    \tmpm[22]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[22]_i_2_n_0 ),
        .O(\tmpm[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[22]_i_2 
       (.I0(\tmpm_reg_n_0_[21] ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_100),
        .O(\tmpm[22]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[23]_i_1 
       (.I0(p_0_in[2]),
        .I1(tmpm0__1[1]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[23]_i_2_n_0 ),
        .O(\tmpm[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[23]_i_2 
       (.I0(p_0_in[0]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_99),
        .O(\tmpm[23]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[24]_i_1 
       (.I0(p_0_in[3]),
        .I1(tmpm0__1[2]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[24]_i_2_n_0 ),
        .O(\tmpm[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[24]_i_2 
       (.I0(p_0_in[1]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_98),
        .O(\tmpm[24]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[25]_i_1 
       (.I0(p_0_in[4]),
        .I1(tmpm0__1[3]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[25]_i_2_n_0 ),
        .O(\tmpm[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[25]_i_2 
       (.I0(p_0_in[2]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_97),
        .O(\tmpm[25]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[26]_i_1 
       (.I0(p_0_in[5]),
        .I1(tmpm0__1[4]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[26]_i_3_n_0 ),
        .O(\tmpm[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[26]_i_3 
       (.I0(p_0_in[3]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_96),
        .O(\tmpm[26]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[27]_i_1 
       (.I0(p_0_in[6]),
        .I1(tmpm0__1[5]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[27]_i_2_n_0 ),
        .O(\tmpm[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[27]_i_2 
       (.I0(p_0_in[4]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_95),
        .O(\tmpm[27]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[28]_i_1 
       (.I0(p_0_in[7]),
        .I1(tmpm0__1[6]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[28]_i_2_n_0 ),
        .O(\tmpm[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[28]_i_2 
       (.I0(p_0_in[5]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_94),
        .O(\tmpm[28]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[29]_i_1 
       (.I0(p_0_in[8]),
        .I1(tmpm0__1[7]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[29]_i_2_n_0 ),
        .O(\tmpm[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[29]_i_2 
       (.I0(p_0_in[6]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_93),
        .O(\tmpm[29]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[2]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[1] ),
        .I3(tmpm0_n_103),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[3] ),
        .O(\tmpm[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[30]_i_1 
       (.I0(p_0_in[9]),
        .I1(tmpm0__1[8]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[30]_i_3_n_0 ),
        .O(\tmpm[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[30]_i_3 
       (.I0(p_0_in[7]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_92),
        .O(\tmpm[30]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[31]_i_1 
       (.I0(p_0_in[10]),
        .I1(tmpm0__1[9]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[31]_i_2_n_0 ),
        .O(\tmpm[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[31]_i_2 
       (.I0(p_0_in[8]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_91),
        .O(\tmpm[31]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[32]_i_1 
       (.I0(p_0_in[11]),
        .I1(tmpm0__1[10]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[32]_i_2_n_0 ),
        .O(\tmpm[32]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[32]_i_2 
       (.I0(p_0_in[9]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_90),
        .O(\tmpm[32]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[33]_i_1 
       (.I0(p_0_in[12]),
        .I1(tmpm0__1[11]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[33]_i_2_n_0 ),
        .O(\tmpm[33]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[33]_i_2 
       (.I0(p_0_in[10]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_89),
        .O(\tmpm[33]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[34]_i_1 
       (.I0(p_0_in[13]),
        .I1(tmpm0__1[12]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[34]_i_3_n_0 ),
        .O(\tmpm[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[34]_i_3 
       (.I0(p_0_in[11]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_88),
        .O(\tmpm[34]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[35]_i_1 
       (.I0(p_0_in[14]),
        .I1(tmpm0__1[13]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[35]_i_2_n_0 ),
        .O(\tmpm[35]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[35]_i_2 
       (.I0(p_0_in[12]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_87),
        .O(\tmpm[35]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[36]_i_1 
       (.I0(p_0_in[15]),
        .I1(tmpm0__1[14]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[36]_i_2_n_0 ),
        .O(\tmpm[36]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[36]_i_2 
       (.I0(p_0_in[13]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_86),
        .O(\tmpm[36]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[37]_i_1 
       (.I0(p_0_in[16]),
        .I1(tmpm0__1[15]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[37]_i_2_n_0 ),
        .O(\tmpm[37]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[37]_i_2 
       (.I0(p_0_in[14]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_85),
        .O(\tmpm[37]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[38]_i_1 
       (.I0(p_0_in[17]),
        .I1(tmpm0__1[16]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[38]_i_3_n_0 ),
        .O(\tmpm[38]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[38]_i_3 
       (.I0(p_0_in[15]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_84),
        .O(\tmpm[38]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[39]_i_1 
       (.I0(p_0_in[18]),
        .I1(tmpm0__1[17]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[39]_i_2_n_0 ),
        .O(\tmpm[39]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[39]_i_2 
       (.I0(p_0_in[16]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_83),
        .O(\tmpm[39]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[3]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[2] ),
        .I3(tmpm0_n_102),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[4] ),
        .O(\tmpm[3]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[40]_i_1 
       (.I0(p_0_in[19]),
        .I1(tmpm0__1[18]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[40]_i_2_n_0 ),
        .O(\tmpm[40]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[40]_i_2 
       (.I0(p_0_in[17]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_82),
        .O(\tmpm[40]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[41]_i_1 
       (.I0(p_0_in[20]),
        .I1(tmpm0__1[19]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[41]_i_2_n_0 ),
        .O(\tmpm[41]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[41]_i_2 
       (.I0(p_0_in[18]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_81),
        .O(\tmpm[41]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[42]_i_1 
       (.I0(p_0_in[21]),
        .I1(tmpm0__1[20]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[42]_i_3_n_0 ),
        .O(\tmpm[42]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[42]_i_3 
       (.I0(p_0_in[19]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_80),
        .O(\tmpm[42]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[43]_i_1 
       (.I0(p_0_in[22]),
        .I1(tmpm0__1[21]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[43]_i_2_n_0 ),
        .O(\tmpm[43]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[43]_i_2 
       (.I0(p_0_in[20]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_79),
        .O(\tmpm[43]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[44]_i_1 
       (.I0(p_0_in[23]),
        .I1(tmpm0__1[22]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[44]_i_2_n_0 ),
        .O(\tmpm[44]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[44]_i_2 
       (.I0(p_0_in[21]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_78),
        .O(\tmpm[44]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[45]_i_1 
       (.I0(p_0_in[24]),
        .I1(tmpm0__1[23]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[45]_i_2_n_0 ),
        .O(\tmpm[45]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[45]_i_2 
       (.I0(p_0_in[22]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_77),
        .O(\tmpm[45]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAFFFAC00A000AC00)) 
    \tmpm[46]_i_1 
       (.I0(p_0_in[25]),
        .I1(tmpm0__1[24]),
        .I2(\state[0]_i_1_n_0 ),
        .I3(\state[1]_i_1_n_0 ),
        .I4(\state[3]_i_1_n_0 ),
        .I5(\tmpm[46]_i_3_n_0 ),
        .O(\tmpm[46]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpm[46]_i_3 
       (.I0(p_0_in[23]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(tmpm0__0_n_76),
        .O(\tmpm[46]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h008B8888)) 
    \tmpm[47]_i_1__0 
       (.I0(p_0_in[24]),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm[47]_i_2_n_0 ),
        .I3(\state[0]_i_1_n_0 ),
        .I4(\state[1]_i_1_n_0 ),
        .O(\tmpm[47]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \tmpm[47]_i_2 
       (.I0(tmpm0__0_n_75),
        .I1(\state[3]_i_1_n_0 ),
        .I2(tmpm0__1[25]),
        .O(\tmpm[47]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[4]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[3] ),
        .I3(tmpm0_n_101),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[5] ),
        .O(\tmpm[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[5]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[4] ),
        .I3(tmpm0_n_100),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[6] ),
        .O(\tmpm[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[6]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[5] ),
        .I3(tmpm0_n_99),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[7] ),
        .O(\tmpm[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[7]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[6] ),
        .I3(tmpm0_n_98),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[8] ),
        .O(\tmpm[7]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[8]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[7] ),
        .I3(tmpm0_n_97),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[9] ),
        .O(\tmpm[8]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2C0C0C0E2C0)) 
    \tmpm[9]_i_1 
       (.I0(\state[1]_i_1_n_0 ),
        .I1(\state[2]_i_1_n_0 ),
        .I2(\tmpm_reg_n_0_[8] ),
        .I3(tmpm0_n_96),
        .I4(\state[0]_i_1_n_0 ),
        .I5(\tmpm_reg_n_0_[10] ),
        .O(\tmpm[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[0]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[10]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[11]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[12]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[13]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[14]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[15]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[16]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[17]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[18]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[19]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[1]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[20]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[21]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[22]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[23]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[24]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[25]_i_1_n_0 ),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[26]_i_1_n_0 ),
        .Q(p_0_in[4]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpm_reg[26]_i_2 
       (.CI(1'b0),
        .CO({\tmpm_reg[26]_i_2_n_0 ,\NLW_tmpm_reg[26]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[4:1]),
        .S(p_0_in[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[27]_i_1_n_0 ),
        .Q(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[28]_i_1_n_0 ),
        .Q(p_0_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[29]_i_1_n_0 ),
        .Q(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[2]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[30]_i_1_n_0 ),
        .Q(p_0_in[8]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpm_reg[30]_i_2 
       (.CI(\tmpm_reg[26]_i_2_n_0 ),
        .CO({\tmpm_reg[30]_i_2_n_0 ,\NLW_tmpm_reg[30]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[8:5]),
        .S(p_0_in[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[31]_i_1_n_0 ),
        .Q(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[32]_i_1_n_0 ),
        .Q(p_0_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[33]_i_1_n_0 ),
        .Q(p_0_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[34]_i_1_n_0 ),
        .Q(p_0_in[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpm_reg[34]_i_2 
       (.CI(\tmpm_reg[30]_i_2_n_0 ),
        .CO({\tmpm_reg[34]_i_2_n_0 ,\NLW_tmpm_reg[34]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[12:9]),
        .S(p_0_in[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[35]_i_1_n_0 ),
        .Q(p_0_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[36]_i_1_n_0 ),
        .Q(p_0_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[37]_i_1_n_0 ),
        .Q(p_0_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[38]_i_1_n_0 ),
        .Q(p_0_in[16]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpm_reg[38]_i_2 
       (.CI(\tmpm_reg[34]_i_2_n_0 ),
        .CO({\tmpm_reg[38]_i_2_n_0 ,\NLW_tmpm_reg[38]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[16:13]),
        .S(p_0_in[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[39]_i_1_n_0 ),
        .Q(p_0_in[17]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[3]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[40]_i_1_n_0 ),
        .Q(p_0_in[18]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[41]_i_1_n_0 ),
        .Q(p_0_in[19]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[42]_i_1_n_0 ),
        .Q(p_0_in[20]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpm_reg[42]_i_2 
       (.CI(\tmpm_reg[38]_i_2_n_0 ),
        .CO({\tmpm_reg[42]_i_2_n_0 ,\NLW_tmpm_reg[42]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[20:17]),
        .S(p_0_in[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[43]_i_1_n_0 ),
        .Q(p_0_in[21]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[44]_i_1_n_0 ),
        .Q(p_0_in[22]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[45]_i_1_n_0 ),
        .Q(p_0_in[23]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[46]_i_1_n_0 ),
        .Q(p_0_in[24]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpm_reg[46]_i_2 
       (.CI(\tmpm_reg[42]_i_2_n_0 ),
        .CO({\tmpm_reg[46]_i_2_n_0 ,\NLW_tmpm_reg[46]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmpm0__1[24:21]),
        .S(p_0_in[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b22_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[47]_i_1__0_n_0 ),
        .Q(p_0_in[25]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpm_reg[47]_i_3 
       (.CI(\tmpm_reg[46]_i_2_n_0 ),
        .CO(\NLW_tmpm_reg[47]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmpm_reg[47]_i_3_O_UNCONNECTED [3:1],tmpm0__1[25]}),
        .S({1'b0,1'b0,1'b0,p_0_in[25]}));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[4]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[5]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[6]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[7]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[8]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \tmpm_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(g0_b21_n_0),
        .CLR(reset_IBUF),
        .D(\tmpm[9]_i_1_n_0 ),
        .Q(\tmpm_reg_n_0_[9] ));
endmodule

module mul_ieee754_vhdl
   (res_vhdl_rdy,
    \op1[24] ,
    \op2[23] ,
    \op2[25] ,
    \op1[25] ,
    \op1[31] ,
    g0_b0_i_28_0,
    D,
    next_state,
    \state_reg[1]_0 ,
    E,
    \state_reg[2]_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    \state[0]_i_2_0 ,
    \state[0]_i_2_1 ,
    op1_IBUF,
    g0_b0_i_4_0,
    g0_b0_i_4_1,
    op2_IBUF,
    inrdy_IBUF,
    Q,
    \res_reg[31]_0 ,
    \res_reg[0]_0 ,
    \tmp_reg[31] ,
    res_verilog_rdy);
  output res_vhdl_rdy;
  output \op1[24] ;
  output \op2[23] ;
  output \op2[25] ;
  output \op1[25] ;
  output \op1[31] ;
  output g0_b0_i_28_0;
  output [31:0]D;
  output [1:0]next_state;
  output [31:0]\state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\state_reg[2]_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \state[0]_i_2_0 ;
  input \state[0]_i_2_1 ;
  input [31:0]op1_IBUF;
  input g0_b0_i_4_0;
  input g0_b0_i_4_1;
  input [31:0]op2_IBUF;
  input [0:0]inrdy_IBUF;
  input [31:0]Q;
  input [31:0]\res_reg[31]_0 ;
  input [0:0]\res_reg[0]_0 ;
  input [2:0]\tmp_reg[31] ;
  input res_verilog_rdy;

  wire [31:0]D;
  wire [0:0]E;
  wire [47:22]L;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;
  wire [8:1]data0;
  wire [8:1]data1;
  wire [7:0]exp;
  wire exp0;
  wire \exp[0]_i_1_n_0 ;
  wire \exp[1]_i_1_n_0 ;
  wire \exp[2]_i_1_n_0 ;
  wire \exp[3]_i_1_n_0 ;
  wire \exp[4]_i_1_n_0 ;
  wire \exp[5]_i_1_n_0 ;
  wire \exp[6]_i_1_n_0 ;
  wire \exp[7]_i_1__0_n_0 ;
  wire g0_b0__0__0_n_0;
  wire g0_b0_i_10_n_0;
  wire g0_b0_i_11_n_0;
  wire g0_b0_i_12_n_0;
  wire g0_b0_i_13_n_0;
  wire g0_b0_i_14_n_0;
  wire g0_b0_i_15_n_0;
  wire g0_b0_i_16_n_0;
  wire g0_b0_i_17_n_0;
  wire g0_b0_i_18_n_0;
  wire g0_b0_i_19_n_0;
  wire g0_b0_i_20_n_0;
  wire g0_b0_i_21_n_0;
  wire g0_b0_i_22_n_0;
  wire g0_b0_i_23_n_0;
  wire g0_b0_i_24_n_0;
  wire g0_b0_i_25_n_0;
  wire g0_b0_i_26_n_0;
  wire g0_b0_i_27_n_0;
  wire g0_b0_i_28_0;
  wire g0_b0_i_28_n_0;
  wire g0_b0_i_29_n_0;
  wire g0_b0_i_30_n_0;
  wire g0_b0_i_31_n_0;
  wire g0_b0_i_36_n_0;
  wire g0_b0_i_37_n_0;
  wire g0_b0_i_38_n_0;
  wire g0_b0_i_39_n_0;
  wire g0_b0_i_40_n_0;
  wire g0_b0_i_41_n_0;
  wire g0_b0_i_42_n_0;
  wire g0_b0_i_43_n_0;
  wire g0_b0_i_44_n_0;
  wire g0_b0_i_45_n_0;
  wire g0_b0_i_46_n_0;
  wire g0_b0_i_47_n_0;
  wire g0_b0_i_48_n_0;
  wire g0_b0_i_49_n_0;
  wire g0_b0_i_4_0;
  wire g0_b0_i_4_1;
  wire g0_b0_i_50_n_0;
  wire g0_b0_i_51_n_0;
  wire g0_b0_i_5_n_0;
  wire g0_b0_i_6_n_0;
  wire g0_b0_i_7_n_0;
  wire g0_b0_i_9_n_0;
  wire [0:0]inrdy_IBUF;
  wire [22:0]m;
  wire m0;
  wire [22:0]m1;
  wire \m1[22]_i_1_n_0 ;
  wire \m1[22]_i_2__0_n_0 ;
  wire \m2[23]_i_1__0_n_0 ;
  wire \m2_reg_n_0_[0] ;
  wire \m2_reg_n_0_[10] ;
  wire \m2_reg_n_0_[11] ;
  wire \m2_reg_n_0_[12] ;
  wire \m2_reg_n_0_[13] ;
  wire \m2_reg_n_0_[14] ;
  wire \m2_reg_n_0_[15] ;
  wire \m2_reg_n_0_[16] ;
  wire \m2_reg_n_0_[17] ;
  wire \m2_reg_n_0_[18] ;
  wire \m2_reg_n_0_[19] ;
  wire \m2_reg_n_0_[1] ;
  wire \m2_reg_n_0_[20] ;
  wire \m2_reg_n_0_[21] ;
  wire \m2_reg_n_0_[22] ;
  wire \m2_reg_n_0_[23] ;
  wire \m2_reg_n_0_[2] ;
  wire \m2_reg_n_0_[3] ;
  wire \m2_reg_n_0_[4] ;
  wire \m2_reg_n_0_[5] ;
  wire \m2_reg_n_0_[6] ;
  wire \m2_reg_n_0_[7] ;
  wire \m2_reg_n_0_[8] ;
  wire \m2_reg_n_0_[9] ;
  wire \m[21]_i_1_n_0 ;
  wire \m[22]_i_1_n_0 ;
  wire \m[22]_i_2__0_n_0 ;
  wire \m[22]_i_3_n_0 ;
  wire \m[22]_i_4_n_0 ;
  wire multOp__0_n_100;
  wire multOp__0_n_75;
  wire multOp__0_n_76;
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
  wire multOp_i_10_n_0;
  wire multOp_i_11_n_0;
  wire multOp_i_12_n_0;
  wire multOp_i_13_n_0;
  wire multOp_i_14_n_0;
  wire multOp_i_15_n_0;
  wire multOp_i_16_n_0;
  wire multOp_i_17_n_0;
  wire multOp_i_1_n_0;
  wire multOp_i_2_n_0;
  wire multOp_i_3_n_0;
  wire multOp_i_4_n_0;
  wire multOp_i_5_n_0;
  wire multOp_i_6_n_0;
  wire multOp_i_7_n_0;
  wire multOp_i_8_n_0;
  wire multOp_i_9_n_0;
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
  wire [1:0]next_state;
  wire [4:0]next_state_0;
  wire \op1[24] ;
  wire \op1[25] ;
  wire \op1[31] ;
  wire [31:0]op1_IBUF;
  wire \op2[23] ;
  wire \op2[25] ;
  wire [31:0]op2_IBUF;
  wire p_0_in;
  wire p_1_out_carry__0_i_1__0_n_0;
  wire p_1_out_carry__0_i_2__0_n_0;
  wire p_1_out_carry__0_i_3__0_n_0;
  wire p_1_out_carry__0_i_4__0_n_0;
  wire p_1_out_carry_i_1__0_n_0;
  wire p_1_out_carry_i_2__0_n_0;
  wire p_1_out_carry_i_3__0_n_0;
  wire p_1_out_carry_i_4__0_n_0;
  wire p_1_out_carry_i_5__0_n_0;
  wire p_1_out_carry_n_0;
  wire [47:23]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry_n_0;
  wire \res[0]_i_1__1_n_0 ;
  wire \res[10]_i_1__1_n_0 ;
  wire \res[11]_i_1__1_n_0 ;
  wire \res[12]_i_1__1_n_0 ;
  wire \res[13]_i_1__1_n_0 ;
  wire \res[14]_i_1__1_n_0 ;
  wire \res[15]_i_1__1_n_0 ;
  wire \res[16]_i_1__1_n_0 ;
  wire \res[17]_i_1__1_n_0 ;
  wire \res[18]_i_1__1_n_0 ;
  wire \res[19]_i_1__1_n_0 ;
  wire \res[1]_i_1__1_n_0 ;
  wire \res[20]_i_1__1_n_0 ;
  wire \res[21]_i_1__1_n_0 ;
  wire \res[22]_i_1__1_n_0 ;
  wire \res[23]_i_1__1_n_0 ;
  wire \res[24]_i_1__1_n_0 ;
  wire \res[25]_i_1__1_n_0 ;
  wire \res[26]_i_1__1_n_0 ;
  wire \res[27]_i_1__1_n_0 ;
  wire \res[28]_i_1__1_n_0 ;
  wire \res[29]_i_1__1_n_0 ;
  wire \res[2]_i_1__1_n_0 ;
  wire \res[30]_i_1__1_n_0 ;
  wire \res[31]_i_2__1_n_0 ;
  wire \res[31]_i_3_n_0 ;
  wire \res[31]_i_4_n_0 ;
  wire \res[3]_i_1__1_n_0 ;
  wire \res[4]_i_1__1_n_0 ;
  wire \res[5]_i_1__1_n_0 ;
  wire \res[6]_i_1__1_n_0 ;
  wire \res[7]_i_1__1_n_0 ;
  wire \res[8]_i_1__1_n_0 ;
  wire \res[9]_i_1__1_n_0 ;
  wire [0:0]\res_reg[0]_0 ;
  wire [31:0]\res_reg[31]_0 ;
  wire res_verilog_rdy;
  wire [31:0]res_vhdl;
  wire res_vhdl_rdy;
  wire reset_IBUF;
  wire resrdy0;
  wire resrdy_i_1_n_0;
  wire s__0;
  wire s_i_1__0_n_0;
  wire s_i_2__0_n_0;
  wire [4:0]state;
  wire \state[0]_i_2_0 ;
  wire \state[0]_i_2_1 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire [31:0]\state_reg[1]_0 ;
  wire [0:0]\state_reg[2]_0 ;
  wire [2:0]\tmp_reg[31] ;
  wire [8:0]tmpexp;
  wire tmpexp0;
  wire \tmpexp[0]_i_2_n_0 ;
  wire \tmpexp[3]_i_3_n_0 ;
  wire \tmpexp[3]_i_4_n_0 ;
  wire \tmpexp[3]_i_5_n_0 ;
  wire \tmpexp[3]_i_6__0_n_0 ;
  wire \tmpexp[7]_i_3_n_0 ;
  wire \tmpexp[7]_i_4_n_0 ;
  wire \tmpexp[7]_i_5_n_0 ;
  wire \tmpexp[7]_i_6_n_0 ;
  wire \tmpexp[8]_i_3_n_0 ;
  wire \tmpexp_reg[3]_i_2__0_n_0 ;
  wire \tmpexp_reg[7]_i_2__0_n_0 ;
  wire \tmpexp_reg_n_0_[0] ;
  wire \tmpexp_reg_n_0_[1] ;
  wire \tmpexp_reg_n_0_[2] ;
  wire \tmpexp_reg_n_0_[3] ;
  wire \tmpexp_reg_n_0_[4] ;
  wire \tmpexp_reg_n_0_[5] ;
  wire \tmpexp_reg_n_0_[6] ;
  wire \tmpexp_reg_n_0_[7] ;
  wire [46:46]tmpm0;
  wire \tmpm[22]_i_1__0_n_0 ;
  wire \tmpm[23]_i_1__0_n_0 ;
  wire \tmpm[24]_i_1__0_n_0 ;
  wire \tmpm[25]_i_1__0_n_0 ;
  wire \tmpm[26]_i_1__0_n_0 ;
  wire \tmpm[27]_i_1__0_n_0 ;
  wire \tmpm[28]_i_1__0_n_0 ;
  wire \tmpm[29]_i_1__0_n_0 ;
  wire \tmpm[30]_i_1__0_n_0 ;
  wire \tmpm[31]_i_1__0_n_0 ;
  wire \tmpm[32]_i_1__0_n_0 ;
  wire \tmpm[33]_i_1__0_n_0 ;
  wire \tmpm[34]_i_1__0_n_0 ;
  wire \tmpm[35]_i_1__0_n_0 ;
  wire \tmpm[36]_i_1__0_n_0 ;
  wire \tmpm[37]_i_1__0_n_0 ;
  wire \tmpm[38]_i_1__0_n_0 ;
  wire \tmpm[39]_i_1__0_n_0 ;
  wire \tmpm[40]_i_1__0_n_0 ;
  wire \tmpm[41]_i_1__0_n_0 ;
  wire \tmpm[42]_i_1__0_n_0 ;
  wire \tmpm[43]_i_1__0_n_0 ;
  wire \tmpm[44]_i_1__0_n_0 ;
  wire \tmpm[45]_i_1__0_n_0 ;
  wire \tmpm[46]_i_2_n_0 ;
  wire \tmpm[47]_i_1_n_0 ;
  wire \tmpm[47]_i_2__0_n_0 ;
  wire \tmpm[47]_i_3_n_0 ;
  wire \tmpm[47]_i_4_n_0 ;
  wire \tmpm[47]_i_5_n_0 ;
  wire \tmpm[47]_i_6_n_0 ;
  wire \tmpm[47]_i_7_n_0 ;
  wire NLW_multOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp_OVERFLOW_UNCONNECTED;
  wire NLW_multOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_multOp_P_UNCONNECTED;
  wire NLW_multOp__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_multOp__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_multOp__0_OVERFLOW_UNCONNECTED;
  wire NLW_multOp__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_multOp__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_multOp__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_multOp__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_multOp__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_multOp__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_multOp__0_P_UNCONNECTED;
  wire [47:0]NLW_multOp__0_PCOUT_UNCONNECTED;
  wire [2:0]NLW_p_1_out_carry_CO_UNCONNECTED;
  wire [3:0]NLW_p_1_out_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__5_O_UNCONNECTED;
  wire [2:0]\NLW_tmpexp_reg[3]_i_2__0_CO_UNCONNECTED ;
  wire [0:0]\NLW_tmpexp_reg[3]_i_2__0_O_UNCONNECTED ;
  wire [2:0]\NLW_tmpexp_reg[7]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmpexp_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmpexp_reg[8]_i_2_O_UNCONNECTED ;

  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[0]_i_1 
       (.I0(\tmpexp_reg_n_0_[0] ),
        .I1(next_state_0[1]),
        .O(\exp[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[1]_i_1 
       (.I0(\tmpexp_reg_n_0_[1] ),
        .I1(next_state_0[1]),
        .O(\exp[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[2]_i_1 
       (.I0(\tmpexp_reg_n_0_[2] ),
        .I1(next_state_0[1]),
        .O(\exp[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[3]_i_1 
       (.I0(\tmpexp_reg_n_0_[3] ),
        .I1(next_state_0[1]),
        .O(\exp[3]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[4]_i_1 
       (.I0(\tmpexp_reg_n_0_[4] ),
        .I1(next_state_0[1]),
        .O(\exp[4]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[5]_i_1 
       (.I0(\tmpexp_reg_n_0_[5] ),
        .I1(next_state_0[1]),
        .O(\exp[5]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[6]_i_1 
       (.I0(\tmpexp_reg_n_0_[6] ),
        .I1(next_state_0[1]),
        .O(\exp[6]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \exp[7]_i_1__0 
       (.I0(\tmpexp_reg_n_0_[7] ),
        .I1(next_state_0[1]),
        .O(\exp[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[0]_i_1_n_0 ),
        .Q(exp[0]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[1]_i_1_n_0 ),
        .Q(exp[1]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[2]_i_1_n_0 ),
        .Q(exp[2]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[3]_i_1_n_0 ),
        .Q(exp[3]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[4]_i_1_n_0 ),
        .Q(exp[4]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[5]_i_1_n_0 ),
        .Q(exp[5]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[6]_i_1_n_0 ),
        .Q(exp[6]),
        .R(g0_b0__0__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \exp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(exp0),
        .D(\exp[7]_i_1__0_n_0 ),
        .Q(exp[7]),
        .R(g0_b0__0__0_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000004604041)) 
    g0_b0
       (.I0(next_state_0[4]),
        .I1(next_state_0[3]),
        .I2(next_state_0[1]),
        .I3(next_state_0[2]),
        .I4(next_state_0[0]),
        .I5(reset_IBUF),
        .O(tmpexp0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000043100101)) 
    g0_b0__0
       (.I0(next_state_0[4]),
        .I1(next_state_0[3]),
        .I2(next_state_0[1]),
        .I3(next_state_0[2]),
        .I4(next_state_0[0]),
        .I5(reset_IBUF),
        .O(exp0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000002100001)) 
    g0_b0__0__0
       (.I0(next_state_0[4]),
        .I1(next_state_0[3]),
        .I2(next_state_0[1]),
        .I3(next_state_0[2]),
        .I4(next_state_0[0]),
        .I5(reset_IBUF),
        .O(g0_b0__0__0_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF55545454)) 
    g0_b0_i_1
       (.I0(g0_b0_i_5_n_0),
        .I1(g0_b0_i_6_n_0),
        .I2(g0_b0_i_7_n_0),
        .I3(g0_b0_i_28_0),
        .I4(g0_b0_i_9_n_0),
        .I5(g0_b0_i_10_n_0),
        .O(next_state_0[4]));
  LUT6 #(
    .INIT(64'h00333033C0D43000)) 
    g0_b0_i_10
       (.I0(g0_b0_i_29_n_0),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[4]),
        .O(g0_b0_i_10_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    g0_b0_i_11
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .O(g0_b0_i_11_n_0));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    g0_b0_i_12
       (.I0(L[46]),
        .I1(L[47]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(g0_b0_i_12_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDDDDDDDDD5)) 
    g0_b0_i_13
       (.I0(state[1]),
        .I1(\state[0]_i_5_n_0 ),
        .I2(\tmpexp_reg_n_0_[1] ),
        .I3(\tmpexp_reg_n_0_[4] ),
        .I4(\tmpexp_reg_n_0_[3] ),
        .I5(g0_b0_i_23_n_0),
        .O(g0_b0_i_13_n_0));
  LUT6 #(
    .INIT(64'h008F0088008F008F)) 
    g0_b0_i_14
       (.I0(g0_b0_i_30_n_0),
        .I1(state[2]),
        .I2(g0_b0_i_31_n_0),
        .I3(state[0]),
        .I4(L[47]),
        .I5(L[46]),
        .O(g0_b0_i_14_n_0));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    g0_b0_i_15
       (.I0(state[3]),
        .I1(\op2[25] ),
        .I2(g0_b0_i_4_0),
        .I3(\op1[25] ),
        .I4(g0_b0_i_4_1),
        .O(g0_b0_i_15_n_0));
  LUT6 #(
    .INIT(64'h00000B00FF000000)) 
    g0_b0_i_16
       (.I0(g0_b0_i_23_n_0),
        .I1(g0_b0_i_24_n_0),
        .I2(L[46]),
        .I3(state[3]),
        .I4(L[47]),
        .I5(state[2]),
        .O(g0_b0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    g0_b0_i_17
       (.I0(state[4]),
        .I1(state[0]),
        .O(g0_b0_i_17_n_0));
  LUT6 #(
    .INIT(64'h000000AE000000AA)) 
    g0_b0_i_18
       (.I0(state[0]),
        .I1(L[46]),
        .I2(L[47]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(state[4]),
        .O(g0_b0_i_18_n_0));
  LUT3 #(
    .INIT(8'hAB)) 
    g0_b0_i_19
       (.I0(g0_b0_i_36_n_0),
        .I1(g0_b0_i_37_n_0),
        .I2(state[1]),
        .O(g0_b0_i_19_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF00001F11)) 
    g0_b0_i_2
       (.I0(g0_b0_i_11_n_0),
        .I1(g0_b0_i_28_0),
        .I2(g0_b0_i_12_n_0),
        .I3(g0_b0_i_13_n_0),
        .I4(g0_b0_i_5_n_0),
        .I5(g0_b0_i_14_n_0),
        .O(next_state_0[3]));
  LUT4 #(
    .INIT(16'h0DDD)) 
    g0_b0_i_20
       (.I0(g0_b0_i_38_n_0),
        .I1(\op2[23] ),
        .I2(g0_b0_i_39_n_0),
        .I3(\op1[24] ),
        .O(g0_b0_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0808FF)) 
    g0_b0_i_21
       (.I0(L[47]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[4]),
        .O(g0_b0_i_21_n_0));
  LUT6 #(
    .INIT(64'h030007C0030005C0)) 
    g0_b0_i_22
       (.I0(state[1]),
        .I1(state[4]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(g0_b0_i_28_0),
        .O(g0_b0_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    g0_b0_i_23
       (.I0(p_0_in),
        .I1(\tmpexp_reg_n_0_[7] ),
        .I2(\tmpexp_reg_n_0_[2] ),
        .I3(\tmpexp_reg_n_0_[0] ),
        .I4(\tmpexp_reg_n_0_[5] ),
        .I5(\tmpexp_reg_n_0_[6] ),
        .O(g0_b0_i_23_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    g0_b0_i_24
       (.I0(\tmpexp_reg_n_0_[3] ),
        .I1(\tmpexp_reg_n_0_[4] ),
        .I2(\tmpexp_reg_n_0_[1] ),
        .O(g0_b0_i_24_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_25
       (.I0(op1_IBUF[30]),
        .I1(op1_IBUF[29]),
        .I2(op1_IBUF[27]),
        .I3(op1_IBUF[28]),
        .O(g0_b0_i_25_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    g0_b0_i_26
       (.I0(op1_IBUF[25]),
        .I1(op1_IBUF[26]),
        .I2(op1_IBUF[23]),
        .I3(op1_IBUF[24]),
        .O(g0_b0_i_26_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_27
       (.I0(op2_IBUF[28]),
        .I1(op2_IBUF[29]),
        .I2(op2_IBUF[24]),
        .I3(op2_IBUF[26]),
        .O(g0_b0_i_27_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_28
       (.I0(op2_IBUF[27]),
        .I1(op2_IBUF[25]),
        .I2(op2_IBUF[30]),
        .I3(op2_IBUF[23]),
        .O(g0_b0_i_28_n_0));
  LUT3 #(
    .INIT(8'h45)) 
    g0_b0_i_29
       (.I0(state[0]),
        .I1(L[47]),
        .I2(L[46]),
        .O(g0_b0_i_29_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA00A2)) 
    g0_b0_i_3
       (.I0(state[1]),
        .I1(g0_b0_i_15_n_0),
        .I2(g0_b0_i_16_n_0),
        .I3(g0_b0_i_17_n_0),
        .I4(g0_b0_i_18_n_0),
        .I5(g0_b0_i_19_n_0),
        .O(next_state_0[1]));
  LUT4 #(
    .INIT(16'h0004)) 
    g0_b0_i_30
       (.I0(state[1]),
        .I1(state[4]),
        .I2(state[3]),
        .I3(p_0_in),
        .O(g0_b0_i_30_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    g0_b0_i_31
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[4]),
        .O(g0_b0_i_31_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    g0_b0_i_32
       (.I0(op2_IBUF[25]),
        .I1(op2_IBUF[26]),
        .I2(op2_IBUF[23]),
        .I3(op2_IBUF[24]),
        .O(\op2[25] ));
  LUT4 #(
    .INIT(16'h8000)) 
    g0_b0_i_34
       (.I0(op1_IBUF[25]),
        .I1(op1_IBUF[26]),
        .I2(op1_IBUF[23]),
        .I3(op1_IBUF[24]),
        .O(\op1[25] ));
  LUT5 #(
    .INIT(32'h00115400)) 
    g0_b0_i_36
       (.I0(state[3]),
        .I1(state[4]),
        .I2(inrdy_IBUF),
        .I3(state[0]),
        .I4(state[2]),
        .O(g0_b0_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFEEEE00FFFF0FFF)) 
    g0_b0_i_37
       (.I0(state[0]),
        .I1(p_0_in),
        .I2(L[23]),
        .I3(state[4]),
        .I4(state[3]),
        .I5(state[2]),
        .O(g0_b0_i_37_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    g0_b0_i_38
       (.I0(g0_b0_i_40_n_0),
        .I1(g0_b0_i_41_n_0),
        .I2(g0_b0_i_42_n_0),
        .I3(g0_b0_i_43_n_0),
        .I4(g0_b0_i_44_n_0),
        .I5(g0_b0_i_45_n_0),
        .O(g0_b0_i_38_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    g0_b0_i_39
       (.I0(g0_b0_i_46_n_0),
        .I1(g0_b0_i_47_n_0),
        .I2(g0_b0_i_48_n_0),
        .I3(g0_b0_i_49_n_0),
        .I4(g0_b0_i_50_n_0),
        .I5(g0_b0_i_51_n_0),
        .O(g0_b0_i_39_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hFFFF00FE)) 
    g0_b0_i_4
       (.I0(g0_b0_i_15_n_0),
        .I1(g0_b0_i_20_n_0),
        .I2(state[0]),
        .I3(g0_b0_i_21_n_0),
        .I4(g0_b0_i_22_n_0),
        .O(next_state_0[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_40
       (.I0(\m2_reg_n_0_[7] ),
        .I1(\m2_reg_n_0_[9] ),
        .I2(\m2_reg_n_0_[18] ),
        .I3(\m2_reg_n_0_[23] ),
        .O(g0_b0_i_40_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    g0_b0_i_41
       (.I0(\m2_reg_n_0_[17] ),
        .I1(\m2_reg_n_0_[15] ),
        .I2(\m2_reg_n_0_[13] ),
        .I3(\m2_reg_n_0_[1] ),
        .O(g0_b0_i_41_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_42
       (.I0(\m2_reg_n_0_[14] ),
        .I1(\m2_reg_n_0_[10] ),
        .I2(\m2_reg_n_0_[16] ),
        .I3(\m2_reg_n_0_[5] ),
        .O(g0_b0_i_42_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_43
       (.I0(\m2_reg_n_0_[4] ),
        .I1(\m2_reg_n_0_[3] ),
        .I2(\m2_reg_n_0_[6] ),
        .I3(\m2_reg_n_0_[8] ),
        .O(g0_b0_i_43_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_44
       (.I0(\m2_reg_n_0_[12] ),
        .I1(\m2_reg_n_0_[0] ),
        .I2(\m2_reg_n_0_[20] ),
        .I3(\m2_reg_n_0_[11] ),
        .O(g0_b0_i_44_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_45
       (.I0(\m2_reg_n_0_[21] ),
        .I1(\m2_reg_n_0_[2] ),
        .I2(\m2_reg_n_0_[19] ),
        .I3(\m2_reg_n_0_[22] ),
        .O(g0_b0_i_45_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_46
       (.I0(m1[7]),
        .I1(m1[9]),
        .I2(m1[18]),
        .I3(m1[22]),
        .O(g0_b0_i_46_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    g0_b0_i_47
       (.I0(m1[17]),
        .I1(m1[15]),
        .I2(m1[13]),
        .I3(m1[1]),
        .O(g0_b0_i_47_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_48
       (.I0(m1[14]),
        .I1(m1[10]),
        .I2(m1[16]),
        .I3(m1[5]),
        .O(g0_b0_i_48_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_49
       (.I0(m1[4]),
        .I1(m1[3]),
        .I2(m1[6]),
        .I3(m1[8]),
        .O(g0_b0_i_49_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    g0_b0_i_5
       (.I0(state[4]),
        .I1(state[2]),
        .O(g0_b0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_50
       (.I0(m1[12]),
        .I1(m1[0]),
        .I2(m1[11]),
        .I3(\m2_reg_n_0_[23] ),
        .O(g0_b0_i_50_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    g0_b0_i_51
       (.I0(m1[21]),
        .I1(m1[2]),
        .I2(m1[19]),
        .I3(m1[20]),
        .O(g0_b0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA2000000000)) 
    g0_b0_i_6
       (.I0(state[3]),
        .I1(g0_b0_i_23_n_0),
        .I2(g0_b0_i_24_n_0),
        .I3(L[46]),
        .I4(L[47]),
        .I5(state[1]),
        .O(g0_b0_i_6_n_0));
  LUT5 #(
    .INIT(32'h0000FD55)) 
    g0_b0_i_7
       (.I0(state[3]),
        .I1(L[47]),
        .I2(L[46]),
        .I3(state[0]),
        .I4(state[1]),
        .O(g0_b0_i_7_n_0));
  LUT4 #(
    .INIT(16'h444F)) 
    g0_b0_i_8
       (.I0(g0_b0_i_25_n_0),
        .I1(g0_b0_i_26_n_0),
        .I2(g0_b0_i_27_n_0),
        .I3(g0_b0_i_28_n_0),
        .O(g0_b0_i_28_0));
  LUT2 #(
    .INIT(4'h1)) 
    g0_b0_i_9
       (.I0(state[0]),
        .I1(state[3]),
        .O(g0_b0_i_9_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m1[22]_i_1 
       (.I0(next_state_0[1]),
        .I1(next_state_0[3]),
        .I2(reset_IBUF),
        .I3(next_state_0[4]),
        .I4(next_state_0[2]),
        .I5(next_state_0[0]),
        .O(\m1[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \m1[22]_i_2__0 
       (.I0(next_state_0[0]),
        .I1(next_state_0[2]),
        .I2(next_state_0[4]),
        .I3(reset_IBUF),
        .I4(next_state_0[3]),
        .O(\m1[22]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[0]),
        .Q(m1[0]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[10]),
        .Q(m1[10]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[11]),
        .Q(m1[11]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[12]),
        .Q(m1[12]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[13]),
        .Q(m1[13]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[14]),
        .Q(m1[14]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[15]),
        .Q(m1[15]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[16]),
        .Q(m1[16]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[17]),
        .Q(m1[17]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[18]),
        .Q(m1[18]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[19]),
        .Q(m1[19]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[1]),
        .Q(m1[1]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[20]),
        .Q(m1[20]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[21]),
        .Q(m1[21]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[22]),
        .Q(m1[22]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[2]),
        .Q(m1[2]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[3]),
        .Q(m1[3]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[4]),
        .Q(m1[4]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[5]),
        .Q(m1[5]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[6]),
        .Q(m1[6]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[7]),
        .Q(m1[7]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[8]),
        .Q(m1[8]),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op1_IBUF[9]),
        .Q(m1[9]),
        .R(\m1[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFE01000000)) 
    \m2[23]_i_1__0 
       (.I0(next_state_0[0]),
        .I1(next_state_0[4]),
        .I2(\m[22]_i_4_n_0 ),
        .I3(next_state_0[2]),
        .I4(next_state_0[1]),
        .I5(\m2_reg_n_0_[23] ),
        .O(\m2[23]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[0]),
        .Q(\m2_reg_n_0_[0] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[10]),
        .Q(\m2_reg_n_0_[10] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[11]),
        .Q(\m2_reg_n_0_[11] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[12]),
        .Q(\m2_reg_n_0_[12] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[13]),
        .Q(\m2_reg_n_0_[13] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[14]),
        .Q(\m2_reg_n_0_[14] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[15]),
        .Q(\m2_reg_n_0_[15] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[16]),
        .Q(\m2_reg_n_0_[16] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[17]),
        .Q(\m2_reg_n_0_[17] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[18]),
        .Q(\m2_reg_n_0_[18] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[19]),
        .Q(\m2_reg_n_0_[19] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[1]),
        .Q(\m2_reg_n_0_[1] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[20]),
        .Q(\m2_reg_n_0_[20] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[21]),
        .Q(\m2_reg_n_0_[21] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[22]),
        .Q(\m2_reg_n_0_[22] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\m2[23]_i_1__0_n_0 ),
        .Q(\m2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[2]),
        .Q(\m2_reg_n_0_[2] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[3]),
        .Q(\m2_reg_n_0_[3] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[4]),
        .Q(\m2_reg_n_0_[4] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[5]),
        .Q(\m2_reg_n_0_[5] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[6]),
        .Q(\m2_reg_n_0_[6] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[7]),
        .Q(\m2_reg_n_0_[7] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[8]),
        .Q(\m2_reg_n_0_[8] ),
        .R(\m1[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\m1[22]_i_2__0_n_0 ),
        .D(op2_IBUF[9]),
        .Q(\m2_reg_n_0_[9] ),
        .R(\m1[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0001000101000001)) 
    \m[21]_i_1 
       (.I0(next_state_0[3]),
        .I1(reset_IBUF),
        .I2(next_state_0[4]),
        .I3(next_state_0[1]),
        .I4(next_state_0[0]),
        .I5(next_state_0[2]),
        .O(\m[21]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h000000000000044B)) 
    \m[21]_i_2 
       (.I0(next_state_0[2]),
        .I1(next_state_0[0]),
        .I2(next_state_0[1]),
        .I3(next_state_0[4]),
        .I4(reset_IBUF),
        .I5(next_state_0[3]),
        .O(m0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFEEB00000228)) 
    \m[22]_i_1 
       (.I0(\m[22]_i_2__0_n_0 ),
        .I1(\m[22]_i_3_n_0 ),
        .I2(next_state_0[1]),
        .I3(next_state_0[4]),
        .I4(\m[22]_i_4_n_0 ),
        .I5(m[22]),
        .O(\m[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hE2E2E2E2E2000000)) 
    \m[22]_i_2__0 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(state[2]),
        .I2(\state[0]_i_3_n_0 ),
        .I3(L[45]),
        .I4(next_state_0[4]),
        .I5(next_state_0[2]),
        .O(\m[22]_i_2__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hFFFF02F2)) 
    \m[22]_i_3 
       (.I0(\tmpm[47]_i_6_n_0 ),
        .I1(\tmpm[47]_i_5_n_0 ),
        .I2(state[2]),
        .I3(\state[0]_i_3_n_0 ),
        .I4(next_state_0[2]),
        .O(\m[22]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m[22]_i_4 
       (.I0(reset_IBUF),
        .I1(next_state_0[3]),
        .O(\m[22]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[23]),
        .Q(m[0]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[33]),
        .Q(m[10]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[34]),
        .Q(m[11]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[35]),
        .Q(m[12]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[36]),
        .Q(m[13]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[37]),
        .Q(m[14]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[38]),
        .Q(m[15]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[39]),
        .Q(m[16]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[40]),
        .Q(m[17]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[41]),
        .Q(m[18]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[42]),
        .Q(m[19]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[24]),
        .Q(m[1]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[43]),
        .Q(m[20]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[44]),
        .Q(m[21]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\m[22]_i_1_n_0 ),
        .Q(m[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[25]),
        .Q(m[2]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[26]),
        .Q(m[3]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[27]),
        .Q(m[4]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[28]),
        .Q(m[5]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[29]),
        .Q(m[6]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[30]),
        .Q(m[7]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[31]),
        .Q(m[8]),
        .R(\m[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(m0),
        .D(L[32]),
        .Q(m[9]),
        .R(\m[21]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_0_[23] ,\m2_reg_n_0_[22] ,\m2_reg_n_0_[21] ,\m2_reg_n_0_[20] ,\m2_reg_n_0_[19] ,\m2_reg_n_0_[18] ,\m2_reg_n_0_[17] ,\m2_reg_n_0_[16] ,\m2_reg_n_0_[15] ,\m2_reg_n_0_[14] ,\m2_reg_n_0_[13] ,\m2_reg_n_0_[12] ,\m2_reg_n_0_[11] ,\m2_reg_n_0_[10] ,\m2_reg_n_0_[9] ,\m2_reg_n_0_[8] ,\m2_reg_n_0_[7] ,\m2_reg_n_0_[6] ,\m2_reg_n_0_[5] ,\m2_reg_n_0_[4] ,\m2_reg_n_0_[3] ,\m2_reg_n_0_[2] ,\m2_reg_n_0_[1] ,\m2_reg_n_0_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,multOp_i_1_n_0,multOp_i_2_n_0,multOp_i_3_n_0,multOp_i_4_n_0,multOp_i_5_n_0,multOp_i_6_n_0,multOp_i_7_n_0,multOp_i_8_n_0,multOp_i_9_n_0,multOp_i_10_n_0,multOp_i_11_n_0,multOp_i_12_n_0,multOp_i_13_n_0,multOp_i_14_n_0,multOp_i_15_n_0,multOp_i_16_n_0,multOp_i_17_n_0}),
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
        .CEB2(\m1[22]_i_2__0_n_0 ),
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
        .P(NLW_multOp_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_multOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({multOp_n_106,multOp_n_107,multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_0_[23] ,\m2_reg_n_0_[22] ,\m2_reg_n_0_[21] ,\m2_reg_n_0_[20] ,\m2_reg_n_0_[19] ,\m2_reg_n_0_[18] ,\m2_reg_n_0_[17] ,\m2_reg_n_0_[16] ,\m2_reg_n_0_[15] ,\m2_reg_n_0_[14] ,\m2_reg_n_0_[13] ,\m2_reg_n_0_[12] ,\m2_reg_n_0_[11] ,\m2_reg_n_0_[10] ,\m2_reg_n_0_[9] ,\m2_reg_n_0_[8] ,\m2_reg_n_0_[7] ,\m2_reg_n_0_[6] ,\m2_reg_n_0_[5] ,\m2_reg_n_0_[4] ,\m2_reg_n_0_[3] ,\m2_reg_n_0_[2] ,\m2_reg_n_0_[1] ,\m2_reg_n_0_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_multOp__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\m2_reg_n_0_[23] ,m1[22:17]}),
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
        .P({NLW_multOp__0_P_UNCONNECTED[47:31],multOp__0_n_75,multOp__0_n_76,multOp__0_n_77,multOp__0_n_78,multOp__0_n_79,multOp__0_n_80,multOp__0_n_81,multOp__0_n_82,multOp__0_n_83,multOp__0_n_84,multOp__0_n_85,multOp__0_n_86,multOp__0_n_87,multOp__0_n_88,multOp__0_n_89,multOp__0_n_90,multOp__0_n_91,multOp__0_n_92,multOp__0_n_93,multOp__0_n_94,multOp__0_n_95,multOp__0_n_96,multOp__0_n_97,multOp__0_n_98,multOp__0_n_99,multOp__0_n_100,NLW_multOp__0_P_UNCONNECTED[4:0]}),
        .PATTERNBDETECT(NLW_multOp__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_multOp__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({multOp_n_106,multOp_n_107,multOp_n_108,multOp_n_109,multOp_n_110,multOp_n_111,multOp_n_112,multOp_n_113,multOp_n_114,multOp_n_115,multOp_n_116,multOp_n_117,multOp_n_118,multOp_n_119,multOp_n_120,multOp_n_121,multOp_n_122,multOp_n_123,multOp_n_124,multOp_n_125,multOp_n_126,multOp_n_127,multOp_n_128,multOp_n_129,multOp_n_130,multOp_n_131,multOp_n_132,multOp_n_133,multOp_n_134,multOp_n_135,multOp_n_136,multOp_n_137,multOp_n_138,multOp_n_139,multOp_n_140,multOp_n_141,multOp_n_142,multOp_n_143,multOp_n_144,multOp_n_145,multOp_n_146,multOp_n_147,multOp_n_148,multOp_n_149,multOp_n_150,multOp_n_151,multOp_n_152,multOp_n_153}),
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
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_1
       (.I0(op1_IBUF[16]),
        .I1(next_state_0[1]),
        .O(multOp_i_1_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_10
       (.I0(op1_IBUF[7]),
        .I1(next_state_0[1]),
        .O(multOp_i_10_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_11
       (.I0(op1_IBUF[6]),
        .I1(next_state_0[1]),
        .O(multOp_i_11_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_12
       (.I0(op1_IBUF[5]),
        .I1(next_state_0[1]),
        .O(multOp_i_12_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_13
       (.I0(op1_IBUF[4]),
        .I1(next_state_0[1]),
        .O(multOp_i_13_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_14
       (.I0(op1_IBUF[3]),
        .I1(next_state_0[1]),
        .O(multOp_i_14_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_15
       (.I0(op1_IBUF[2]),
        .I1(next_state_0[1]),
        .O(multOp_i_15_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_16
       (.I0(op1_IBUF[1]),
        .I1(next_state_0[1]),
        .O(multOp_i_16_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_17
       (.I0(op1_IBUF[0]),
        .I1(next_state_0[1]),
        .O(multOp_i_17_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_2
       (.I0(op1_IBUF[15]),
        .I1(next_state_0[1]),
        .O(multOp_i_2_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_3
       (.I0(op1_IBUF[14]),
        .I1(next_state_0[1]),
        .O(multOp_i_3_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_4
       (.I0(op1_IBUF[13]),
        .I1(next_state_0[1]),
        .O(multOp_i_4_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_5
       (.I0(op1_IBUF[12]),
        .I1(next_state_0[1]),
        .O(multOp_i_5_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_6
       (.I0(op1_IBUF[11]),
        .I1(next_state_0[1]),
        .O(multOp_i_6_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_7
       (.I0(op1_IBUF[10]),
        .I1(next_state_0[1]),
        .O(multOp_i_7_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_8
       (.I0(op1_IBUF[9]),
        .I1(next_state_0[1]),
        .O(multOp_i_8_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp_i_9
       (.I0(op1_IBUF[8]),
        .I1(next_state_0[1]),
        .O(multOp_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_0,NLW_p_1_out_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\tmpexp_reg_n_0_[0] ),
        .DI({\tmpexp_reg_n_0_[3] ,\tmpexp_reg_n_0_[2] ,\tmpexp_reg_n_0_[1] ,p_1_out_carry_i_1__0_n_0}),
        .O(data1[4:1]),
        .S({p_1_out_carry_i_2__0_n_0,p_1_out_carry_i_3__0_n_0,p_1_out_carry_i_4__0_n_0,p_1_out_carry_i_5__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CO(NLW_p_1_out_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\tmpexp_reg_n_0_[6] ,\tmpexp_reg_n_0_[5] ,\tmpexp_reg_n_0_[4] }),
        .O(data1[8:5]),
        .S({p_1_out_carry__0_i_1__0_n_0,p_1_out_carry__0_i_2__0_n_0,p_1_out_carry__0_i_3__0_n_0,p_1_out_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_1__0
       (.I0(\tmpexp_reg_n_0_[7] ),
        .I1(p_0_in),
        .O(p_1_out_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_2__0
       (.I0(\tmpexp_reg_n_0_[6] ),
        .I1(\tmpexp_reg_n_0_[7] ),
        .O(p_1_out_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_3__0
       (.I0(\tmpexp_reg_n_0_[5] ),
        .I1(\tmpexp_reg_n_0_[6] ),
        .O(p_1_out_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry__0_i_4__0
       (.I0(\tmpexp_reg_n_0_[4] ),
        .I1(\tmpexp_reg_n_0_[5] ),
        .O(p_1_out_carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_carry_i_1__0
       (.I0(\tmpexp_reg_n_0_[1] ),
        .O(p_1_out_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_2__0
       (.I0(\tmpexp_reg_n_0_[3] ),
        .I1(\tmpexp_reg_n_0_[4] ),
        .O(p_1_out_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_3__0
       (.I0(\tmpexp_reg_n_0_[2] ),
        .I1(\tmpexp_reg_n_0_[3] ),
        .O(p_1_out_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out_carry_i_4__0
       (.I0(\tmpexp_reg_n_0_[1] ),
        .I1(\tmpexp_reg_n_0_[2] ),
        .O(p_1_out_carry_i_4__0_n_0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h6)) 
    p_1_out_carry_i_5__0
       (.I0(\tmpexp_reg_n_0_[1] ),
        .I1(next_state_0[2]),
        .O(p_1_out_carry_i_5__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(L[22]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[26:23]),
        .S(L[26:23]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[30:27]),
        .S(L[30:27]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[34:31]),
        .S(L[34:31]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,NLW_plusOp_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[38:35]),
        .S(L[38:35]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,NLW_plusOp_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[42:39]),
        .S(L[42:39]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,NLW_plusOp_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[46:43]),
        .S(L[46:43]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO(NLW_plusOp_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__5_O_UNCONNECTED[3:1],plusOp[47]}),
        .S({1'b0,1'b0,1'b0,L[47]}));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[0]_i_1__0 
       (.I0(Q[0]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [0]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[0]),
        .I5(next_state[0]),
        .O(D[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[0]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[0]),
        .I2(next_state_0[4]),
        .O(\res[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[10]_i_1__0 
       (.I0(Q[10]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [10]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[10]),
        .I5(next_state[0]),
        .O(D[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[10]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[10]),
        .I2(next_state_0[4]),
        .O(\res[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[11]_i_1__0 
       (.I0(Q[11]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [11]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[11]),
        .I5(next_state[0]),
        .O(D[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[11]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[11]),
        .I2(next_state_0[4]),
        .O(\res[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[12]_i_1__0 
       (.I0(Q[12]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [12]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[12]),
        .I5(next_state[0]),
        .O(D[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[12]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[12]),
        .I2(next_state_0[4]),
        .O(\res[12]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[13]_i_1__0 
       (.I0(Q[13]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [13]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[13]),
        .I5(next_state[0]),
        .O(D[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[13]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[13]),
        .I2(next_state_0[4]),
        .O(\res[13]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[14]_i_1__0 
       (.I0(Q[14]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [14]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[14]),
        .I5(next_state[0]),
        .O(D[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[14]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[14]),
        .I2(next_state_0[4]),
        .O(\res[14]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[15]_i_1__0 
       (.I0(Q[15]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [15]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[15]),
        .I5(next_state[0]),
        .O(D[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[15]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[15]),
        .I2(next_state_0[4]),
        .O(\res[15]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[16]_i_1__0 
       (.I0(Q[16]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [16]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[16]),
        .I5(next_state[0]),
        .O(D[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[16]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[16]),
        .I2(next_state_0[4]),
        .O(\res[16]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[17]_i_1__0 
       (.I0(Q[17]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [17]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[17]),
        .I5(next_state[0]),
        .O(D[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[17]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[17]),
        .I2(next_state_0[4]),
        .O(\res[17]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[18]_i_1__0 
       (.I0(Q[18]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [18]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[18]),
        .I5(next_state[0]),
        .O(D[18]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[18]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[18]),
        .I2(next_state_0[4]),
        .O(\res[18]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[19]_i_1__0 
       (.I0(Q[19]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [19]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[19]),
        .I5(next_state[0]),
        .O(D[19]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[19]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[19]),
        .I2(next_state_0[4]),
        .O(\res[19]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[1]_i_1__0 
       (.I0(Q[1]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [1]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[1]),
        .I5(next_state[0]),
        .O(D[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[1]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[1]),
        .I2(next_state_0[4]),
        .O(\res[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[20]_i_1__0 
       (.I0(Q[20]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [20]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[20]),
        .I5(next_state[0]),
        .O(D[20]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[20]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[20]),
        .I2(next_state_0[4]),
        .O(\res[20]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[21]_i_1__0 
       (.I0(Q[21]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [21]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[21]),
        .I5(next_state[0]),
        .O(D[21]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[21]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[21]),
        .I2(next_state_0[4]),
        .O(\res[21]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[22]_i_1__0 
       (.I0(Q[22]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [22]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[22]),
        .I5(next_state[0]),
        .O(D[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[22]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[22]),
        .I2(next_state_0[4]),
        .O(\res[22]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[23]_i_1__0 
       (.I0(Q[23]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [23]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[23]),
        .I5(next_state[0]),
        .O(D[23]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[23]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[0]),
        .I2(next_state_0[4]),
        .O(\res[23]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[24]_i_1__0 
       (.I0(Q[24]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [24]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[24]),
        .I5(next_state[0]),
        .O(D[24]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[24]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[1]),
        .I2(next_state_0[4]),
        .O(\res[24]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[25]_i_1__0 
       (.I0(Q[25]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [25]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[25]),
        .I5(next_state[0]),
        .O(D[25]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[25]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[2]),
        .I2(next_state_0[4]),
        .O(\res[25]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[26]_i_1__0 
       (.I0(Q[26]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [26]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[26]),
        .I5(next_state[0]),
        .O(D[26]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[26]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[3]),
        .I2(next_state_0[4]),
        .O(\res[26]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[27]_i_1__0 
       (.I0(Q[27]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [27]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[27]),
        .I5(next_state[0]),
        .O(D[27]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[27]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[4]),
        .I2(next_state_0[4]),
        .O(\res[27]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[28]_i_1__0 
       (.I0(Q[28]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [28]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[28]),
        .I5(next_state[0]),
        .O(D[28]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[28]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[5]),
        .I2(next_state_0[4]),
        .O(\res[28]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[29]_i_1__0 
       (.I0(Q[29]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [29]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[29]),
        .I5(next_state[0]),
        .O(D[29]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[29]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[6]),
        .I2(next_state_0[4]),
        .O(\res[29]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[2]_i_1__0 
       (.I0(Q[2]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [2]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[2]),
        .I5(next_state[0]),
        .O(D[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[2]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[2]),
        .I2(next_state_0[4]),
        .O(\res[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[30]_i_1__0 
       (.I0(Q[30]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [30]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[30]),
        .I5(next_state[0]),
        .O(D[30]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[30]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(exp[7]),
        .I2(next_state_0[4]),
        .O(\res[30]_i_1__1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h00FF00000000001D)) 
    \res[31]_i_1__0 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(state[2]),
        .I2(\state[0]_i_3_n_0 ),
        .I3(\res[31]_i_3_n_0 ),
        .I4(next_state_0[4]),
        .I5(next_state_0[2]),
        .O(resrdy0));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[31]_i_2__0 
       (.I0(Q[31]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [31]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[31]),
        .I5(next_state[0]),
        .O(D[31]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[31]_i_2__1 
       (.I0(next_state_0[0]),
        .I1(s__0),
        .I2(next_state_0[4]),
        .O(\res[31]_i_2__1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF55A6)) 
    \res[31]_i_3 
       (.I0(next_state_0[1]),
        .I1(\res[31]_i_4_n_0 ),
        .I2(g0_b0_i_21_n_0),
        .I3(g0_b0_i_22_n_0),
        .I4(next_state_0[3]),
        .I5(reset_IBUF),
        .O(\res[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAFBFBFB)) 
    \res[31]_i_4 
       (.I0(g0_b0_i_15_n_0),
        .I1(g0_b0_i_38_n_0),
        .I2(\op2[23] ),
        .I3(g0_b0_i_39_n_0),
        .I4(\op1[24] ),
        .I5(state[0]),
        .O(\res[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[3]_i_1__0 
       (.I0(Q[3]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [3]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[3]),
        .I5(next_state[0]),
        .O(D[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[3]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[3]),
        .I2(next_state_0[4]),
        .O(\res[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[4]_i_1__0 
       (.I0(Q[4]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [4]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[4]),
        .I5(next_state[0]),
        .O(D[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[4]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[4]),
        .I2(next_state_0[4]),
        .O(\res[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[5]_i_1__0 
       (.I0(Q[5]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [5]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[5]),
        .I5(next_state[0]),
        .O(D[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[5]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[5]),
        .I2(next_state_0[4]),
        .O(\res[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[6]_i_1__0 
       (.I0(Q[6]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [6]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[6]),
        .I5(next_state[0]),
        .O(D[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[6]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[6]),
        .I2(next_state_0[4]),
        .O(\res[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[7]_i_1__0 
       (.I0(Q[7]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [7]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[7]),
        .I5(next_state[0]),
        .O(D[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[7]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[7]),
        .I2(next_state_0[4]),
        .O(\res[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[8]_i_1__0 
       (.I0(Q[8]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [8]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[8]),
        .I5(next_state[0]),
        .O(D[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[8]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[8]),
        .I2(next_state_0[4]),
        .O(\res[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFC0C0C0)) 
    \res[9]_i_1__0 
       (.I0(Q[9]),
        .I1(next_state[1]),
        .I2(\res_reg[31]_0 [9]),
        .I3(\res_reg[0]_0 ),
        .I4(res_vhdl[9]),
        .I5(next_state[0]),
        .O(D[9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \res[9]_i_1__1 
       (.I0(next_state_0[0]),
        .I1(m[9]),
        .I2(next_state_0[4]),
        .O(\res[9]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[0]_i_1__1_n_0 ),
        .Q(res_vhdl[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[10]_i_1__1_n_0 ),
        .Q(res_vhdl[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[11]_i_1__1_n_0 ),
        .Q(res_vhdl[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[12]_i_1__1_n_0 ),
        .Q(res_vhdl[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[13]_i_1__1_n_0 ),
        .Q(res_vhdl[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[14]_i_1__1_n_0 ),
        .Q(res_vhdl[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[15]_i_1__1_n_0 ),
        .Q(res_vhdl[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[16]_i_1__1_n_0 ),
        .Q(res_vhdl[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[17]_i_1__1_n_0 ),
        .Q(res_vhdl[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[18]_i_1__1_n_0 ),
        .Q(res_vhdl[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[19]_i_1__1_n_0 ),
        .Q(res_vhdl[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[1]_i_1__1_n_0 ),
        .Q(res_vhdl[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[20]_i_1__1_n_0 ),
        .Q(res_vhdl[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[21]_i_1__1_n_0 ),
        .Q(res_vhdl[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[22]_i_1__1_n_0 ),
        .Q(res_vhdl[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[23]_i_1__1_n_0 ),
        .Q(res_vhdl[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[24]_i_1__1_n_0 ),
        .Q(res_vhdl[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[25]_i_1__1_n_0 ),
        .Q(res_vhdl[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[26]_i_1__1_n_0 ),
        .Q(res_vhdl[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[27]_i_1__1_n_0 ),
        .Q(res_vhdl[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[28]_i_1__1_n_0 ),
        .Q(res_vhdl[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[29]_i_1__1_n_0 ),
        .Q(res_vhdl[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[2]_i_1__1_n_0 ),
        .Q(res_vhdl[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[30]_i_1__1_n_0 ),
        .Q(res_vhdl[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[31]_i_2__1_n_0 ),
        .Q(res_vhdl[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[3]_i_1__1_n_0 ),
        .Q(res_vhdl[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[4]_i_1__1_n_0 ),
        .Q(res_vhdl[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[5]_i_1__1_n_0 ),
        .Q(res_vhdl[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[6]_i_1__1_n_0 ),
        .Q(res_vhdl[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[7]_i_1__1_n_0 ),
        .Q(res_vhdl[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[8]_i_1__1_n_0 ),
        .Q(res_vhdl[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(resrdy0),
        .D(\res[9]_i_1__1_n_0 ),
        .Q(res_vhdl[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \resrdy[0]_i_1 
       (.I0(\tmp_reg[31] [2]),
        .I1(\tmp_reg[31] [0]),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [1]),
        .O(\state_reg[2]_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'hFACC)) 
    resrdy_i_1
       (.I0(next_state_0[1]),
        .I1(res_vhdl_rdy),
        .I2(next_state_0[3]),
        .I3(resrdy0),
        .O(resrdy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    resrdy_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(resrdy_i_1_n_0),
        .Q(res_vhdl_rdy),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFEF3FC00020000)) 
    s_i_1__0
       (.I0(\op1[31] ),
        .I1(next_state_0[0]),
        .I2(s_i_2__0_n_0),
        .I3(next_state_0[2]),
        .I4(next_state_0[1]),
        .I5(s__0),
        .O(s_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s_i_2
       (.I0(op1_IBUF[31]),
        .I1(op2_IBUF[31]),
        .O(\op1[31] ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    s_i_2__0
       (.I0(next_state_0[3]),
        .I1(reset_IBUF),
        .I2(next_state_0[4]),
        .O(s_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_i_1__0_n_0),
        .Q(s__0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2377)) 
    \state[0]_i_1__0 
       (.I0(\tmp_reg[31] [1]),
        .I1(\tmp_reg[31] [2]),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hEEEEAEAEAAEEEEEE)) 
    \state[0]_i_2 
       (.I0(\tmpm[47]_i_5_n_0 ),
        .I1(g0_b0_i_9_n_0),
        .I2(\state[0]_i_4_n_0 ),
        .I3(L[23]),
        .I4(state[4]),
        .I5(state[1]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \state[0]_i_3 
       (.I0(state[4]),
        .I1(state[1]),
        .I2(\state[0]_i_5_n_0 ),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\state[0]_i_6_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F33000005110511)) 
    \state[0]_i_4 
       (.I0(\state[0]_i_2_0 ),
        .I1(\state[0]_i_2_1 ),
        .I2(\op1[24] ),
        .I3(g0_b0_i_39_n_0),
        .I4(\op2[23] ),
        .I5(g0_b0_i_38_n_0),
        .O(\state[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_i_5 
       (.I0(L[47]),
        .I1(L[46]),
        .O(\state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3226302412061004)) 
    \state[0]_i_6 
       (.I0(state[1]),
        .I1(state[4]),
        .I2(state[3]),
        .I3(p_0_in),
        .I4(g0_b0_i_28_0),
        .I5(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[0]_i_7 
       (.I0(\tmpexp_reg_n_0_[1] ),
        .I1(\tmpexp_reg_n_0_[4] ),
        .I2(\tmpexp_reg_n_0_[3] ),
        .I3(g0_b0_i_23_n_0),
        .O(\state[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[2]_i_10 
       (.I0(op1_IBUF[24]),
        .I1(op1_IBUF[23]),
        .I2(op1_IBUF[26]),
        .I3(op1_IBUF[25]),
        .I4(g0_b0_i_25_n_0),
        .O(\op1[24] ));
  LUT5 #(
    .INIT(32'h00006222)) 
    \state[2]_i_1__1 
       (.I0(\tmp_reg[31] [2]),
        .I1(\tmp_reg[31] [0]),
        .I2(res_vhdl_rdy),
        .I3(res_verilog_rdy),
        .I4(\tmp_reg[31] [1]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[2]_i_7 
       (.I0(op2_IBUF[23]),
        .I1(op2_IBUF[30]),
        .I2(op2_IBUF[25]),
        .I3(op2_IBUF[27]),
        .I4(g0_b0_i_27_n_0),
        .O(\op2[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state_0[0]),
        .Q(state[0]));
  MUXF7 \state_reg[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .O(next_state_0[0]),
        .S(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state_0[1]),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state_0[2]),
        .Q(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state_0[3]),
        .Q(state[3]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state_0[4]),
        .Q(state[4]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[0]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[0]),
        .O(\state_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[10]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[10]),
        .O(\state_reg[1]_0 [10]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[11]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[11]),
        .O(\state_reg[1]_0 [11]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[12]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[12]),
        .O(\state_reg[1]_0 [12]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[13]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[13]),
        .O(\state_reg[1]_0 [13]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[14]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[14]),
        .O(\state_reg[1]_0 [14]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[15]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[15]),
        .O(\state_reg[1]_0 [15]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[16]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[16]),
        .O(\state_reg[1]_0 [16]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[17]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[17]),
        .O(\state_reg[1]_0 [17]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[18]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[18]),
        .O(\state_reg[1]_0 [18]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[19]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[19]),
        .O(\state_reg[1]_0 [19]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[1]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[1]),
        .O(\state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[20]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[20]),
        .O(\state_reg[1]_0 [20]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[21]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[21]),
        .O(\state_reg[1]_0 [21]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[22]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[22]),
        .O(\state_reg[1]_0 [22]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[23]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[23]),
        .O(\state_reg[1]_0 [23]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[24]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[24]),
        .O(\state_reg[1]_0 [24]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[25]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[25]),
        .O(\state_reg[1]_0 [25]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[26]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[26]),
        .O(\state_reg[1]_0 [26]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[27]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[27]),
        .O(\state_reg[1]_0 [27]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[28]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[28]),
        .O(\state_reg[1]_0 [28]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[29]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[29]),
        .O(\state_reg[1]_0 [29]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[2]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[2]),
        .O(\state_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[30]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[30]),
        .O(\state_reg[1]_0 [30]));
  LUT5 #(
    .INIT(32'hFF00F080)) 
    \tmp[31]_i_1 
       (.I0(res_vhdl_rdy),
        .I1(res_verilog_rdy),
        .I2(\tmp_reg[31] [0]),
        .I3(\tmp_reg[31] [2]),
        .I4(\tmp_reg[31] [1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[31]_i_2 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[31]),
        .O(\state_reg[1]_0 [31]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[3]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[3]),
        .O(\state_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[4]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[4]),
        .O(\state_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[5]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[5]),
        .O(\state_reg[1]_0 [5]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[6]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[6]),
        .O(\state_reg[1]_0 [6]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[7]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[7]),
        .O(\state_reg[1]_0 [7]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[8]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[8]),
        .O(\state_reg[1]_0 [8]));
  LUT6 #(
    .INIT(64'h0055400000000000)) 
    \tmp[9]_i_1 
       (.I0(\tmp_reg[31] [1]),
        .I1(res_verilog_rdy),
        .I2(res_vhdl_rdy),
        .I3(\tmp_reg[31] [0]),
        .I4(\tmp_reg[31] [2]),
        .I5(res_vhdl[9]),
        .O(\state_reg[1]_0 [9]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h00000002FFFFA8AA)) 
    \tmpexp[0]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(next_state_0[0]),
        .I3(\tmpexp[0]_i_2_n_0 ),
        .I4(next_state_0[4]),
        .I5(\tmpexp_reg_n_0_[0] ),
        .O(tmpexp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[0]_i_2 
       (.I0(op1_IBUF[23]),
        .I1(op2_IBUF[23]),
        .O(\tmpexp[0]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[1]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[1]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[1]),
        .O(tmpexp[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[2]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[2]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[2]),
        .O(tmpexp[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[3]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[3]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[3]),
        .O(tmpexp[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_3 
       (.I0(op1_IBUF[26]),
        .I1(op2_IBUF[26]),
        .O(\tmpexp[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_4 
       (.I0(op1_IBUF[25]),
        .I1(op2_IBUF[25]),
        .O(\tmpexp[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_5 
       (.I0(op1_IBUF[24]),
        .I1(op2_IBUF[24]),
        .O(\tmpexp[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[3]_i_6__0 
       (.I0(op1_IBUF[23]),
        .I1(op2_IBUF[23]),
        .O(\tmpexp[3]_i_6__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[4]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[4]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[4]),
        .O(tmpexp[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[5]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[5]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[5]),
        .O(tmpexp[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[6]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[6]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[6]),
        .O(tmpexp[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[7]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[7]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[7]),
        .O(tmpexp[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \tmpexp[7]_i_3 
       (.I0(op2_IBUF[30]),
        .I1(op1_IBUF[30]),
        .O(\tmpexp[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_4 
       (.I0(op1_IBUF[29]),
        .I1(op2_IBUF[29]),
        .O(\tmpexp[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_5 
       (.I0(op1_IBUF[28]),
        .I1(op2_IBUF[28]),
        .O(\tmpexp[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmpexp[7]_i_6 
       (.I0(op1_IBUF[27]),
        .I1(op2_IBUF[27]),
        .O(\tmpexp[7]_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hF0F0A0A2F0F0A080)) 
    \tmpexp[8]_i_1__0 
       (.I0(next_state_0[3]),
        .I1(next_state_0[2]),
        .I2(data1[8]),
        .I3(next_state_0[0]),
        .I4(next_state_0[4]),
        .I5(data0[8]),
        .O(tmpexp[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \tmpexp[8]_i_3 
       (.I0(op2_IBUF[30]),
        .O(\tmpexp[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[0]),
        .Q(\tmpexp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[1]),
        .Q(\tmpexp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[2]),
        .Q(\tmpexp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[3]),
        .Q(\tmpexp_reg_n_0_[3] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpexp_reg[3]_i_2__0 
       (.CI(1'b0),
        .CO({\tmpexp_reg[3]_i_2__0_n_0 ,\NLW_tmpexp_reg[3]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(op1_IBUF[26:23]),
        .O({data0[3:1],\NLW_tmpexp_reg[3]_i_2__0_O_UNCONNECTED [0]}),
        .S({\tmpexp[3]_i_3_n_0 ,\tmpexp[3]_i_4_n_0 ,\tmpexp[3]_i_5_n_0 ,\tmpexp[3]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[4]),
        .Q(\tmpexp_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[5]),
        .Q(\tmpexp_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[6]),
        .Q(\tmpexp_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[7]),
        .Q(\tmpexp_reg_n_0_[7] ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \tmpexp_reg[7]_i_2__0 
       (.CI(\tmpexp_reg[3]_i_2__0_n_0 ),
        .CO({\tmpexp_reg[7]_i_2__0_n_0 ,\NLW_tmpexp_reg[7]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(op1_IBUF[30:27]),
        .O(data0[7:4]),
        .S({\tmpexp[7]_i_3_n_0 ,\tmpexp[7]_i_4_n_0 ,\tmpexp[7]_i_5_n_0 ,\tmpexp[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tmpexp_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpexp0),
        .D(tmpexp[8]),
        .Q(p_0_in),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \tmpexp_reg[8]_i_2 
       (.CI(\tmpexp_reg[7]_i_2__0_n_0 ),
        .CO(\NLW_tmpexp_reg[8]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmpexp_reg[8]_i_2_O_UNCONNECTED [3:1],data0[8]}),
        .S({1'b0,1'b0,1'b0,\tmpexp[8]_i_3_n_0 }));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBB88B888B888B8)) 
    \tmpm[22]_i_1__0 
       (.I0(L[23]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(L[22]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_100),
        .O(\tmpm[22]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[23]_i_1__0 
       (.I0(L[24]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[23]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_99),
        .O(\tmpm[23]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[24]_i_1__0 
       (.I0(L[25]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[24]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_98),
        .O(\tmpm[24]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[25]_i_1__0 
       (.I0(L[26]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[25]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_97),
        .O(\tmpm[25]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[26]_i_1__0 
       (.I0(L[27]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[26]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_96),
        .O(\tmpm[26]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[27]_i_1__0 
       (.I0(L[28]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[27]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_95),
        .O(\tmpm[27]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[28]_i_1__0 
       (.I0(L[29]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[28]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_94),
        .O(\tmpm[28]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[29]_i_1__0 
       (.I0(L[30]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[29]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_93),
        .O(\tmpm[29]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[30]_i_1__0 
       (.I0(L[31]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[30]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_92),
        .O(\tmpm[30]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[31]_i_1__0 
       (.I0(L[32]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[31]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_91),
        .O(\tmpm[31]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[32]_i_1__0 
       (.I0(L[33]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[32]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_90),
        .O(\tmpm[32]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[33]_i_1__0 
       (.I0(L[34]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[33]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_89),
        .O(\tmpm[33]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[34]_i_1__0 
       (.I0(L[35]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[34]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_88),
        .O(\tmpm[34]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[35]_i_1__0 
       (.I0(L[36]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[35]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_87),
        .O(\tmpm[35]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[36]_i_1__0 
       (.I0(L[37]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[36]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_86),
        .O(\tmpm[36]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[37]_i_1__0 
       (.I0(L[38]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[37]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_85),
        .O(\tmpm[37]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[38]_i_1__0 
       (.I0(L[39]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[38]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_84),
        .O(\tmpm[38]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[39]_i_1__0 
       (.I0(L[40]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[39]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_83),
        .O(\tmpm[39]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[40]_i_1__0 
       (.I0(L[41]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[40]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_82),
        .O(\tmpm[40]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[41]_i_1__0 
       (.I0(L[42]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[41]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_81),
        .O(\tmpm[41]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[42]_i_1__0 
       (.I0(L[43]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[42]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_80),
        .O(\tmpm[42]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[43]_i_1__0 
       (.I0(L[44]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[43]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_79),
        .O(\tmpm[43]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[44]_i_1__0 
       (.I0(L[45]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[44]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_78),
        .O(\tmpm[44]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[45]_i_1__0 
       (.I0(L[46]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[45]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_77),
        .O(\tmpm[45]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000002029)) 
    \tmpm[46]_i_1__0 
       (.I0(next_state_0[1]),
        .I1(next_state_0[4]),
        .I2(next_state_0[3]),
        .I3(next_state_0[0]),
        .I4(next_state_0[2]),
        .I5(reset_IBUF),
        .O(tmpm0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBBBBB888B888B888)) 
    \tmpm[46]_i_2 
       (.I0(L[47]),
        .I1(next_state_0[0]),
        .I2(next_state_0[4]),
        .I3(plusOp[46]),
        .I4(next_state_0[3]),
        .I5(multOp__0_n_76),
        .O(\tmpm[46]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFEFFFEEE02000222)) 
    \tmpm[47]_i_1 
       (.I0(\tmpm[47]_i_2__0_n_0 ),
        .I1(reset_IBUF),
        .I2(\tmpm[47]_i_3_n_0 ),
        .I3(next_state_0[1]),
        .I4(\tmpm[47]_i_4_n_0 ),
        .I5(L[47]),
        .O(\tmpm[47]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000004744)) 
    \tmpm[47]_i_2__0 
       (.I0(\state[0]_i_3_n_0 ),
        .I1(state[2]),
        .I2(\tmpm[47]_i_5_n_0 ),
        .I3(\tmpm[47]_i_6_n_0 ),
        .I4(next_state_0[2]),
        .I5(\tmpm[47]_i_7_n_0 ),
        .O(\tmpm[47]_i_2__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFC0C0000FFFFFD5D)) 
    \tmpm[47]_i_3 
       (.I0(next_state_0[4]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(state[2]),
        .I3(\state[0]_i_3_n_0 ),
        .I4(next_state_0[2]),
        .I5(next_state_0[3]),
        .O(\tmpm[47]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hBFBFBFFEFEFEBFFE)) 
    \tmpm[47]_i_4 
       (.I0(next_state_0[4]),
        .I1(next_state_0[3]),
        .I2(next_state_0[2]),
        .I3(\state[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(\state[0]_i_3_n_0 ),
        .O(\tmpm[47]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h004400000000000F)) 
    \tmpm[47]_i_5 
       (.I0(state[0]),
        .I1(L[47]),
        .I2(inrdy_IBUF),
        .I3(state[4]),
        .I4(state[1]),
        .I5(state[3]),
        .O(\tmpm[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6240)) 
    \tmpm[47]_i_6 
       (.I0(state[1]),
        .I1(state[4]),
        .I2(L[23]),
        .I3(\state[0]_i_4_n_0 ),
        .I4(state[3]),
        .I5(state[0]),
        .O(\tmpm[47]_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \tmpm[47]_i_7 
       (.I0(plusOp[47]),
        .I1(next_state_0[4]),
        .I2(next_state_0[3]),
        .I3(multOp__0_n_75),
        .O(\tmpm[47]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[22]_i_1__0_n_0 ),
        .Q(L[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[23]_i_1__0_n_0 ),
        .Q(L[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[24]_i_1__0_n_0 ),
        .Q(L[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[25]_i_1__0_n_0 ),
        .Q(L[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[26]_i_1__0_n_0 ),
        .Q(L[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[27]_i_1__0_n_0 ),
        .Q(L[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[28]_i_1__0_n_0 ),
        .Q(L[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[29]_i_1__0_n_0 ),
        .Q(L[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[30]_i_1__0_n_0 ),
        .Q(L[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[31]_i_1__0_n_0 ),
        .Q(L[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[32]_i_1__0_n_0 ),
        .Q(L[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[33]_i_1__0_n_0 ),
        .Q(L[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[34]_i_1__0_n_0 ),
        .Q(L[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[35]_i_1__0_n_0 ),
        .Q(L[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[36]_i_1__0_n_0 ),
        .Q(L[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[37]_i_1__0_n_0 ),
        .Q(L[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[38]_i_1__0_n_0 ),
        .Q(L[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[39]_i_1__0_n_0 ),
        .Q(L[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[40]_i_1__0_n_0 ),
        .Q(L[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[41]_i_1__0_n_0 ),
        .Q(L[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[42]_i_1__0_n_0 ),
        .Q(L[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[43]_i_1__0_n_0 ),
        .Q(L[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[44]_i_1__0_n_0 ),
        .Q(L[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[45]_i_1__0_n_0 ),
        .Q(L[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(tmpm0),
        .D(\tmpm[46]_i_2_n_0 ),
        .Q(L[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpm_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\tmpm[47]_i_1_n_0 ),
        .Q(L[47]),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "78eb1161" *) 
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

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]inrdy;
  wire [1:0]inrdy_IBUF;
  wire multiplier_verilog_n_1;
  wire multiplier_verilog_n_2;
  wire multiplier_verilog_n_3;
  wire multiplier_verilog_n_4;
  wire multiplier_verilog_n_5;
  wire multiplier_vhdl_n_1;
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
  wire multiplier_vhdl_n_38;
  wire multiplier_vhdl_n_4;
  wire multiplier_vhdl_n_5;
  wire multiplier_vhdl_n_6;
  wire multiplier_vhdl_n_7;
  wire multiplier_vhdl_n_73;
  wire multiplier_vhdl_n_74;
  wire multiplier_vhdl_n_8;
  wire multiplier_vhdl_n_9;
  wire [2:0]next_state;
  wire [31:0]op1;
  wire [31:0]op1_IBUF;
  wire [31:0]op2;
  wire [31:0]op2_IBUF;
  wire [31:0]p_1_in;
  wire [31:0]res;
  wire [31:0]res_OBUF;
  wire [31:0]res_verilog;
  wire res_verilog_rdy;
  wire res_vhdl_rdy;
  wire reset;
  wire reset_IBUF;
  wire [1:0]resrdy;
  wire [1:0]resrdy_OBUF;
  wire [2:0]state;
  wire [31:0]tmp;

initial begin
 $sdf_annotate("tb_time_impl.sdf",,,,"tool_control");
end
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
       (.E(multiplier_verilog_n_5),
        .Q(state),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .inrdy_IBUF(inrdy_IBUF[0]),
        .next_state(next_state[1]),
        .\op1[24] (multiplier_verilog_n_1),
        .\op1[30] (multiplier_verilog_n_4),
        .op1_IBUF(op1_IBUF[30:0]),
        .\op2[24] (multiplier_verilog_n_2),
        .\op2[30] (multiplier_verilog_n_3),
        .op2_IBUF(op2_IBUF[30:0]),
        .\res_reg[31]_0 (res_verilog),
        .res_verilog_rdy(res_verilog_rdy),
        .res_vhdl_rdy(res_vhdl_rdy),
        .reset_IBUF(reset_IBUF),
        .s_reg_0(multiplier_vhdl_n_5),
        .\state[2]_i_4_0 (multiplier_vhdl_n_3),
        .\state[2]_i_4_1 (multiplier_vhdl_n_4),
        .\state_reg[2]_0 (multiplier_vhdl_n_1),
        .\state_reg[2]_1 (multiplier_vhdl_n_2),
        .\state_reg[3]_0 (multiplier_vhdl_n_6));
  mul_ieee754_vhdl multiplier_vhdl
       (.D({multiplier_vhdl_n_7,multiplier_vhdl_n_8,multiplier_vhdl_n_9,multiplier_vhdl_n_10,multiplier_vhdl_n_11,multiplier_vhdl_n_12,multiplier_vhdl_n_13,multiplier_vhdl_n_14,multiplier_vhdl_n_15,multiplier_vhdl_n_16,multiplier_vhdl_n_17,multiplier_vhdl_n_18,multiplier_vhdl_n_19,multiplier_vhdl_n_20,multiplier_vhdl_n_21,multiplier_vhdl_n_22,multiplier_vhdl_n_23,multiplier_vhdl_n_24,multiplier_vhdl_n_25,multiplier_vhdl_n_26,multiplier_vhdl_n_27,multiplier_vhdl_n_28,multiplier_vhdl_n_29,multiplier_vhdl_n_30,multiplier_vhdl_n_31,multiplier_vhdl_n_32,multiplier_vhdl_n_33,multiplier_vhdl_n_34,multiplier_vhdl_n_35,multiplier_vhdl_n_36,multiplier_vhdl_n_37,multiplier_vhdl_n_38}),
        .E(multiplier_vhdl_n_73),
        .Q(tmp),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .g0_b0_i_28_0(multiplier_vhdl_n_6),
        .g0_b0_i_4_0(multiplier_verilog_n_3),
        .g0_b0_i_4_1(multiplier_verilog_n_4),
        .inrdy_IBUF(inrdy_IBUF[1]),
        .next_state({next_state[2],next_state[0]}),
        .\op1[24] (multiplier_vhdl_n_1),
        .\op1[25] (multiplier_vhdl_n_4),
        .\op1[31] (multiplier_vhdl_n_5),
        .op1_IBUF(op1_IBUF),
        .\op2[23] (multiplier_vhdl_n_2),
        .\op2[25] (multiplier_vhdl_n_3),
        .op2_IBUF(op2_IBUF),
        .\res_reg[0]_0 (next_state[1]),
        .\res_reg[31]_0 (res_verilog),
        .res_verilog_rdy(res_verilog_rdy),
        .res_vhdl_rdy(res_vhdl_rdy),
        .reset_IBUF(reset_IBUF),
        .\state[0]_i_2_0 (multiplier_verilog_n_2),
        .\state[0]_i_2_1 (multiplier_verilog_n_1),
        .\state_reg[1]_0 (p_1_in),
        .\state_reg[2]_0 (multiplier_vhdl_n_74),
        .\tmp_reg[31] (state));
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
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_38),
        .Q(res_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_28),
        .Q(res_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_27),
        .Q(res_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_26),
        .Q(res_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_25),
        .Q(res_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_24),
        .Q(res_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_23),
        .Q(res_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_22),
        .Q(res_OBUF[16]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_21),
        .Q(res_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_20),
        .Q(res_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_19),
        .Q(res_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_37),
        .Q(res_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_18),
        .Q(res_OBUF[20]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_17),
        .Q(res_OBUF[21]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_16),
        .Q(res_OBUF[22]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_15),
        .Q(res_OBUF[23]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_14),
        .Q(res_OBUF[24]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_13),
        .Q(res_OBUF[25]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_12),
        .Q(res_OBUF[26]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_11),
        .Q(res_OBUF[27]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_10),
        .Q(res_OBUF[28]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_9),
        .Q(res_OBUF[29]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_36),
        .Q(res_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_8),
        .Q(res_OBUF[30]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_7),
        .Q(res_OBUF[31]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_35),
        .Q(res_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_34),
        .Q(res_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_33),
        .Q(res_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_32),
        .Q(res_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_31),
        .Q(res_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_30),
        .Q(res_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_29),
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
  FDCE #(
    .INIT(1'b0)) 
    \resrdy_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(multiplier_vhdl_n_74),
        .Q(resrdy_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \resrdy_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_verilog_n_5),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(resrdy_OBUF[1]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(state[2]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[0]),
        .Q(tmp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[10]),
        .Q(tmp[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[11]),
        .Q(tmp[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[12]),
        .Q(tmp[12]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[13]),
        .Q(tmp[13]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[14]),
        .Q(tmp[14]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[15]),
        .Q(tmp[15]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[16]),
        .Q(tmp[16]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[17]),
        .Q(tmp[17]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[18]),
        .Q(tmp[18]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[19]),
        .Q(tmp[19]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[1]),
        .Q(tmp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[20]),
        .Q(tmp[20]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[21]),
        .Q(tmp[21]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[22]),
        .Q(tmp[22]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[23]),
        .Q(tmp[23]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[24]),
        .Q(tmp[24]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[25]),
        .Q(tmp[25]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[26]),
        .Q(tmp[26]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[27]),
        .Q(tmp[27]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[28]),
        .Q(tmp[28]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[29]),
        .Q(tmp[29]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[2]),
        .Q(tmp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[30]),
        .Q(tmp[30]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[31]),
        .Q(tmp[31]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[3]),
        .Q(tmp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[4]),
        .Q(tmp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[5]),
        .Q(tmp[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[6]),
        .Q(tmp[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[7]),
        .Q(tmp[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[8]),
        .Q(tmp[8]));
  FDCE #(
    .INIT(1'b0)) 
    \tmp_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(multiplier_vhdl_n_73),
        .CLR(reset_IBUF),
        .D(p_1_in[9]),
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
