-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
-- Date        : Wed Jan  8 15:32:17 2020
-- Host        : parallels-Parallels-Virtual-Platform running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/parallels/Desktop/elaborato_754/mutilplexer_ieee754/mutilplexer_ieee754.sim/sim_1/impl/func/xsim/tb_func_impl.vhd
-- Design      : tl
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul_ieee754_verilog is
  port (
    res_verilog_rdy : out STD_LOGIC;
    \op1[24]\ : out STD_LOGIC;
    \op2[24]\ : out STD_LOGIC;
    \op2[30]\ : out STD_LOGIC;
    \op1[30]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    next_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    \res_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    op2_IBUF : in STD_LOGIC_VECTOR ( 30 downto 0 );
    op1_IBUF : in STD_LOGIC_VECTOR ( 30 downto 0 );
    inrdy_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]_0\ : in STD_LOGIC;
    \state_reg[2]_1\ : in STD_LOGIC;
    \state_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    res_vhdl_rdy : in STD_LOGIC;
    s_reg_0 : in STD_LOGIC;
    \state[2]_i_4_0\ : in STD_LOGIC;
    \state[2]_i_4_1\ : in STD_LOGIC
  );
end mul_ieee754_verilog;

architecture STRUCTURE of mul_ieee754_verilog is
  signal data0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal exp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \exp[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \exp[7]_i_1_n_0\ : STD_LOGIC;
  signal \exp[7]_i_2_n_0\ : STD_LOGIC;
  signal g0_b21_i_10_n_0 : STD_LOGIC;
  signal g0_b21_i_13_n_0 : STD_LOGIC;
  signal g0_b21_i_14_n_0 : STD_LOGIC;
  signal g0_b21_i_15_n_0 : STD_LOGIC;
  signal g0_b21_i_16_n_0 : STD_LOGIC;
  signal g0_b21_i_17_n_0 : STD_LOGIC;
  signal g0_b21_i_3_n_0 : STD_LOGIC;
  signal g0_b21_i_4_n_0 : STD_LOGIC;
  signal g0_b21_i_5_n_0 : STD_LOGIC;
  signal g0_b21_i_6_n_0 : STD_LOGIC;
  signal g0_b21_i_7_n_0 : STD_LOGIC;
  signal g0_b21_i_8_n_0 : STD_LOGIC;
  signal g0_b21_i_9_n_0 : STD_LOGIC;
  signal g0_b21_n_0 : STD_LOGIC;
  signal g0_b22_n_0 : STD_LOGIC;
  signal m : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \m1[0]_i_1_n_0\ : STD_LOGIC;
  signal \m1[10]_i_1_n_0\ : STD_LOGIC;
  signal \m1[11]_i_1_n_0\ : STD_LOGIC;
  signal \m1[12]_i_1_n_0\ : STD_LOGIC;
  signal \m1[13]_i_1_n_0\ : STD_LOGIC;
  signal \m1[14]_i_1_n_0\ : STD_LOGIC;
  signal \m1[15]_i_1_n_0\ : STD_LOGIC;
  signal \m1[16]_i_1_n_0\ : STD_LOGIC;
  signal \m1[17]_i_1_n_0\ : STD_LOGIC;
  signal \m1[18]_i_1_n_0\ : STD_LOGIC;
  signal \m1[19]_i_1_n_0\ : STD_LOGIC;
  signal \m1[1]_i_1_n_0\ : STD_LOGIC;
  signal \m1[20]_i_1_n_0\ : STD_LOGIC;
  signal \m1[21]_i_1_n_0\ : STD_LOGIC;
  signal \m1[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m1[22]_i_2_n_0\ : STD_LOGIC;
  signal \m1[22]_i_3_n_0\ : STD_LOGIC;
  signal \m1[2]_i_1_n_0\ : STD_LOGIC;
  signal \m1[3]_i_1_n_0\ : STD_LOGIC;
  signal \m1[4]_i_1_n_0\ : STD_LOGIC;
  signal \m1[5]_i_1_n_0\ : STD_LOGIC;
  signal \m1[6]_i_1_n_0\ : STD_LOGIC;
  signal \m1[7]_i_1_n_0\ : STD_LOGIC;
  signal \m1[8]_i_1_n_0\ : STD_LOGIC;
  signal \m1[9]_i_1_n_0\ : STD_LOGIC;
  signal \m1_reg_n_0_[0]\ : STD_LOGIC;
  signal \m1_reg_n_0_[10]\ : STD_LOGIC;
  signal \m1_reg_n_0_[11]\ : STD_LOGIC;
  signal \m1_reg_n_0_[12]\ : STD_LOGIC;
  signal \m1_reg_n_0_[13]\ : STD_LOGIC;
  signal \m1_reg_n_0_[14]\ : STD_LOGIC;
  signal \m1_reg_n_0_[15]\ : STD_LOGIC;
  signal \m1_reg_n_0_[16]\ : STD_LOGIC;
  signal \m1_reg_n_0_[17]\ : STD_LOGIC;
  signal \m1_reg_n_0_[18]\ : STD_LOGIC;
  signal \m1_reg_n_0_[19]\ : STD_LOGIC;
  signal \m1_reg_n_0_[1]\ : STD_LOGIC;
  signal \m1_reg_n_0_[20]\ : STD_LOGIC;
  signal \m1_reg_n_0_[21]\ : STD_LOGIC;
  signal \m1_reg_n_0_[22]\ : STD_LOGIC;
  signal \m1_reg_n_0_[2]\ : STD_LOGIC;
  signal \m1_reg_n_0_[3]\ : STD_LOGIC;
  signal \m1_reg_n_0_[4]\ : STD_LOGIC;
  signal \m1_reg_n_0_[5]\ : STD_LOGIC;
  signal \m1_reg_n_0_[6]\ : STD_LOGIC;
  signal \m1_reg_n_0_[7]\ : STD_LOGIC;
  signal \m1_reg_n_0_[8]\ : STD_LOGIC;
  signal \m1_reg_n_0_[9]\ : STD_LOGIC;
  signal \m2[23]_i_1_n_0\ : STD_LOGIC;
  signal \m2_reg_n_0_[0]\ : STD_LOGIC;
  signal \m2_reg_n_0_[10]\ : STD_LOGIC;
  signal \m2_reg_n_0_[11]\ : STD_LOGIC;
  signal \m2_reg_n_0_[12]\ : STD_LOGIC;
  signal \m2_reg_n_0_[13]\ : STD_LOGIC;
  signal \m2_reg_n_0_[14]\ : STD_LOGIC;
  signal \m2_reg_n_0_[15]\ : STD_LOGIC;
  signal \m2_reg_n_0_[16]\ : STD_LOGIC;
  signal \m2_reg_n_0_[17]\ : STD_LOGIC;
  signal \m2_reg_n_0_[18]\ : STD_LOGIC;
  signal \m2_reg_n_0_[19]\ : STD_LOGIC;
  signal \m2_reg_n_0_[1]\ : STD_LOGIC;
  signal \m2_reg_n_0_[20]\ : STD_LOGIC;
  signal \m2_reg_n_0_[21]\ : STD_LOGIC;
  signal \m2_reg_n_0_[22]\ : STD_LOGIC;
  signal \m2_reg_n_0_[23]\ : STD_LOGIC;
  signal \m2_reg_n_0_[2]\ : STD_LOGIC;
  signal \m2_reg_n_0_[3]\ : STD_LOGIC;
  signal \m2_reg_n_0_[4]\ : STD_LOGIC;
  signal \m2_reg_n_0_[5]\ : STD_LOGIC;
  signal \m2_reg_n_0_[6]\ : STD_LOGIC;
  signal \m2_reg_n_0_[7]\ : STD_LOGIC;
  signal \m2_reg_n_0_[8]\ : STD_LOGIC;
  signal \m2_reg_n_0_[9]\ : STD_LOGIC;
  signal \m[0]_i_1_n_0\ : STD_LOGIC;
  signal \m[10]_i_1_n_0\ : STD_LOGIC;
  signal \m[11]_i_1_n_0\ : STD_LOGIC;
  signal \m[12]_i_1_n_0\ : STD_LOGIC;
  signal \m[13]_i_1_n_0\ : STD_LOGIC;
  signal \m[14]_i_1_n_0\ : STD_LOGIC;
  signal \m[15]_i_1_n_0\ : STD_LOGIC;
  signal \m[16]_i_1_n_0\ : STD_LOGIC;
  signal \m[17]_i_1_n_0\ : STD_LOGIC;
  signal \m[18]_i_1_n_0\ : STD_LOGIC;
  signal \m[19]_i_1_n_0\ : STD_LOGIC;
  signal \m[1]_i_1_n_0\ : STD_LOGIC;
  signal \m[20]_i_1_n_0\ : STD_LOGIC;
  signal \m[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \m[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m[22]_i_2_n_0\ : STD_LOGIC;
  signal \m[2]_i_1_n_0\ : STD_LOGIC;
  signal \m[3]_i_1_n_0\ : STD_LOGIC;
  signal \m[4]_i_1_n_0\ : STD_LOGIC;
  signal \m[5]_i_1_n_0\ : STD_LOGIC;
  signal \m[6]_i_1_n_0\ : STD_LOGIC;
  signal \m[7]_i_1_n_0\ : STD_LOGIC;
  signal \m[8]_i_1_n_0\ : STD_LOGIC;
  signal \m[9]_i_1_n_0\ : STD_LOGIC;
  signal \^op1[24]\ : STD_LOGIC;
  signal \^op1[30]\ : STD_LOGIC;
  signal \^op2[24]\ : STD_LOGIC;
  signal \^op2[30]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \p_1_out_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_4_n_0\ : STD_LOGIC;
  signal p_1_out_carry_i_1_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_2_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_3_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_4_n_0 : STD_LOGIC;
  signal p_1_out_carry_i_5_n_0 : STD_LOGIC;
  signal p_1_out_carry_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \res[0]_i_1_n_0\ : STD_LOGIC;
  signal \res[10]_i_1_n_0\ : STD_LOGIC;
  signal \res[11]_i_1_n_0\ : STD_LOGIC;
  signal \res[12]_i_1_n_0\ : STD_LOGIC;
  signal \res[13]_i_1_n_0\ : STD_LOGIC;
  signal \res[14]_i_1_n_0\ : STD_LOGIC;
  signal \res[15]_i_1_n_0\ : STD_LOGIC;
  signal \res[16]_i_1_n_0\ : STD_LOGIC;
  signal \res[17]_i_1_n_0\ : STD_LOGIC;
  signal \res[18]_i_1_n_0\ : STD_LOGIC;
  signal \res[19]_i_1_n_0\ : STD_LOGIC;
  signal \res[1]_i_1_n_0\ : STD_LOGIC;
  signal \res[20]_i_1_n_0\ : STD_LOGIC;
  signal \res[21]_i_1_n_0\ : STD_LOGIC;
  signal \res[22]_i_1_n_0\ : STD_LOGIC;
  signal \res[23]_i_1_n_0\ : STD_LOGIC;
  signal \res[24]_i_1_n_0\ : STD_LOGIC;
  signal \res[25]_i_1_n_0\ : STD_LOGIC;
  signal \res[26]_i_1_n_0\ : STD_LOGIC;
  signal \res[27]_i_1_n_0\ : STD_LOGIC;
  signal \res[28]_i_1_n_0\ : STD_LOGIC;
  signal \res[29]_i_1_n_0\ : STD_LOGIC;
  signal \res[2]_i_1_n_0\ : STD_LOGIC;
  signal \res[30]_i_1_n_0\ : STD_LOGIC;
  signal \res[31]_i_1_n_0\ : STD_LOGIC;
  signal \res[31]_i_2_n_0\ : STD_LOGIC;
  signal \res[3]_i_1_n_0\ : STD_LOGIC;
  signal \res[4]_i_1_n_0\ : STD_LOGIC;
  signal \res[5]_i_1_n_0\ : STD_LOGIC;
  signal \res[6]_i_1_n_0\ : STD_LOGIC;
  signal \res[7]_i_1_n_0\ : STD_LOGIC;
  signal \res[8]_i_1_n_0\ : STD_LOGIC;
  signal \res[9]_i_1_n_0\ : STD_LOGIC;
  signal \^res_verilog_rdy\ : STD_LOGIC;
  signal s : STD_LOGIC;
  signal s_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_11_n_0\ : STD_LOGIC;
  signal \state[2]_i_12_n_0\ : STD_LOGIC;
  signal \state[2]_i_13_n_0\ : STD_LOGIC;
  signal \state[2]_i_14_n_0\ : STD_LOGIC;
  signal \state[2]_i_15_n_0\ : STD_LOGIC;
  signal \state[2]_i_16_n_0\ : STD_LOGIC;
  signal \state[2]_i_17_n_0\ : STD_LOGIC;
  signal \state[2]_i_18_n_0\ : STD_LOGIC;
  signal \state[2]_i_19_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_20_n_0\ : STD_LOGIC;
  signal \state[2]_i_21_n_0\ : STD_LOGIC;
  signal \state[2]_i_22_n_0\ : STD_LOGIC;
  signal \state[2]_i_23_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_8_n_0\ : STD_LOGIC;
  signal \state[2]_i_9_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state[3]_i_3_n_0\ : STD_LOGIC;
  signal \state[3]_i_4_n_0\ : STD_LOGIC;
  signal \state[3]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_2_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_6_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \tmpexp[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[2]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_6_n_0\ : STD_LOGIC;
  signal \tmpexp[4]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[5]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[6]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \tmpexp[8]_i_1_n_0\ : STD_LOGIC;
  signal \tmpexp[8]_i_2_n_0\ : STD_LOGIC;
  signal \tmpexp[8]_i_4_n_0\ : STD_LOGIC;
  signal \tmpexp_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmpexp_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[1]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[2]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[4]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[5]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[6]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[7]\ : STD_LOGIC;
  signal \tmpm0__0_n_100\ : STD_LOGIC;
  signal \tmpm0__0_n_101\ : STD_LOGIC;
  signal \tmpm0__0_n_102\ : STD_LOGIC;
  signal \tmpm0__0_n_103\ : STD_LOGIC;
  signal \tmpm0__0_n_104\ : STD_LOGIC;
  signal \tmpm0__0_n_105\ : STD_LOGIC;
  signal \tmpm0__0_n_75\ : STD_LOGIC;
  signal \tmpm0__0_n_76\ : STD_LOGIC;
  signal \tmpm0__0_n_77\ : STD_LOGIC;
  signal \tmpm0__0_n_78\ : STD_LOGIC;
  signal \tmpm0__0_n_79\ : STD_LOGIC;
  signal \tmpm0__0_n_80\ : STD_LOGIC;
  signal \tmpm0__0_n_81\ : STD_LOGIC;
  signal \tmpm0__0_n_82\ : STD_LOGIC;
  signal \tmpm0__0_n_83\ : STD_LOGIC;
  signal \tmpm0__0_n_84\ : STD_LOGIC;
  signal \tmpm0__0_n_85\ : STD_LOGIC;
  signal \tmpm0__0_n_86\ : STD_LOGIC;
  signal \tmpm0__0_n_87\ : STD_LOGIC;
  signal \tmpm0__0_n_88\ : STD_LOGIC;
  signal \tmpm0__0_n_89\ : STD_LOGIC;
  signal \tmpm0__0_n_90\ : STD_LOGIC;
  signal \tmpm0__0_n_91\ : STD_LOGIC;
  signal \tmpm0__0_n_92\ : STD_LOGIC;
  signal \tmpm0__0_n_93\ : STD_LOGIC;
  signal \tmpm0__0_n_94\ : STD_LOGIC;
  signal \tmpm0__0_n_95\ : STD_LOGIC;
  signal \tmpm0__0_n_96\ : STD_LOGIC;
  signal \tmpm0__0_n_97\ : STD_LOGIC;
  signal \tmpm0__0_n_98\ : STD_LOGIC;
  signal \tmpm0__0_n_99\ : STD_LOGIC;
  signal \tmpm0__1\ : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal tmpm0_n_100 : STD_LOGIC;
  signal tmpm0_n_101 : STD_LOGIC;
  signal tmpm0_n_102 : STD_LOGIC;
  signal tmpm0_n_103 : STD_LOGIC;
  signal tmpm0_n_104 : STD_LOGIC;
  signal tmpm0_n_105 : STD_LOGIC;
  signal tmpm0_n_106 : STD_LOGIC;
  signal tmpm0_n_107 : STD_LOGIC;
  signal tmpm0_n_108 : STD_LOGIC;
  signal tmpm0_n_109 : STD_LOGIC;
  signal tmpm0_n_110 : STD_LOGIC;
  signal tmpm0_n_111 : STD_LOGIC;
  signal tmpm0_n_112 : STD_LOGIC;
  signal tmpm0_n_113 : STD_LOGIC;
  signal tmpm0_n_114 : STD_LOGIC;
  signal tmpm0_n_115 : STD_LOGIC;
  signal tmpm0_n_116 : STD_LOGIC;
  signal tmpm0_n_117 : STD_LOGIC;
  signal tmpm0_n_118 : STD_LOGIC;
  signal tmpm0_n_119 : STD_LOGIC;
  signal tmpm0_n_120 : STD_LOGIC;
  signal tmpm0_n_121 : STD_LOGIC;
  signal tmpm0_n_122 : STD_LOGIC;
  signal tmpm0_n_123 : STD_LOGIC;
  signal tmpm0_n_124 : STD_LOGIC;
  signal tmpm0_n_125 : STD_LOGIC;
  signal tmpm0_n_126 : STD_LOGIC;
  signal tmpm0_n_127 : STD_LOGIC;
  signal tmpm0_n_128 : STD_LOGIC;
  signal tmpm0_n_129 : STD_LOGIC;
  signal tmpm0_n_130 : STD_LOGIC;
  signal tmpm0_n_131 : STD_LOGIC;
  signal tmpm0_n_132 : STD_LOGIC;
  signal tmpm0_n_133 : STD_LOGIC;
  signal tmpm0_n_134 : STD_LOGIC;
  signal tmpm0_n_135 : STD_LOGIC;
  signal tmpm0_n_136 : STD_LOGIC;
  signal tmpm0_n_137 : STD_LOGIC;
  signal tmpm0_n_138 : STD_LOGIC;
  signal tmpm0_n_139 : STD_LOGIC;
  signal tmpm0_n_140 : STD_LOGIC;
  signal tmpm0_n_141 : STD_LOGIC;
  signal tmpm0_n_142 : STD_LOGIC;
  signal tmpm0_n_143 : STD_LOGIC;
  signal tmpm0_n_144 : STD_LOGIC;
  signal tmpm0_n_145 : STD_LOGIC;
  signal tmpm0_n_146 : STD_LOGIC;
  signal tmpm0_n_147 : STD_LOGIC;
  signal tmpm0_n_148 : STD_LOGIC;
  signal tmpm0_n_149 : STD_LOGIC;
  signal tmpm0_n_150 : STD_LOGIC;
  signal tmpm0_n_151 : STD_LOGIC;
  signal tmpm0_n_152 : STD_LOGIC;
  signal tmpm0_n_153 : STD_LOGIC;
  signal tmpm0_n_89 : STD_LOGIC;
  signal tmpm0_n_90 : STD_LOGIC;
  signal tmpm0_n_91 : STD_LOGIC;
  signal tmpm0_n_92 : STD_LOGIC;
  signal tmpm0_n_93 : STD_LOGIC;
  signal tmpm0_n_94 : STD_LOGIC;
  signal tmpm0_n_95 : STD_LOGIC;
  signal tmpm0_n_96 : STD_LOGIC;
  signal tmpm0_n_97 : STD_LOGIC;
  signal tmpm0_n_98 : STD_LOGIC;
  signal tmpm0_n_99 : STD_LOGIC;
  signal \tmpm[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[10]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[11]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[12]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[13]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[14]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[15]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[16]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[17]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[18]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[19]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[20]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[21]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[22]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[22]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[23]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[23]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[24]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[24]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[25]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[25]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[26]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[26]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[27]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[27]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[28]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[28]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[29]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[29]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[2]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[30]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[30]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[31]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[31]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[32]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[32]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[33]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[33]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[34]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[34]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[35]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[35]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[36]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[36]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[37]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[37]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[38]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[38]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[39]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[39]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[3]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[40]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[40]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[41]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[41]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[42]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[42]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[43]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[43]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[44]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[44]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[45]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[45]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[46]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[46]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[4]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[5]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[6]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[7]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[8]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[9]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm_reg[34]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm_reg[38]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm_reg[42]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm_reg[46]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[10]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[11]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[12]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[13]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[14]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[15]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[16]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[17]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[18]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[19]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[1]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[20]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[21]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[2]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[4]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[5]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[6]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[7]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[8]\ : STD_LOGIC;
  signal \tmpm_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_p_1_out_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_1_out_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmpexp_reg[3]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpexp_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpexp_reg[8]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmpexp_reg[8]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_tmpm0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmpm0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmpm0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmpm0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmpm0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmpm0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmpm0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmpm0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmpm0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmpm0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal \NLW_tmpm0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmpm0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmpm0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmpm0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmpm0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmpm0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmpm0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_tmpm0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_tmpm0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmpm0__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal \NLW_tmpm0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_tmpm_reg[26]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpm_reg[30]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpm_reg[34]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpm_reg[38]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpm_reg[42]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpm_reg[46]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpm_reg[47]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmpm_reg[47]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \exp[0]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \exp[0]_i_1__0\ : label is "soft_lutpair4";
  attribute OPT_MODIFIED of \exp[1]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[1]_i_1__0\ : label is "soft_lutpair6";
  attribute OPT_MODIFIED of \exp[2]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[2]_i_1__0\ : label is "soft_lutpair6";
  attribute OPT_MODIFIED of \exp[3]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[3]_i_1__0\ : label is "soft_lutpair7";
  attribute OPT_MODIFIED of \exp[4]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[4]_i_1__0\ : label is "soft_lutpair4";
  attribute OPT_MODIFIED of \exp[5]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[5]_i_1__0\ : label is "soft_lutpair7";
  attribute OPT_MODIFIED of \exp[6]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[6]_i_1__0\ : label is "soft_lutpair9";
  attribute OPT_MODIFIED of \exp[7]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \exp[7]_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[7]_i_2\ : label is "soft_lutpair9";
  attribute OPT_MODIFIED of g0_b21 : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b21_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b21_i_2 : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b22 : label is "RETARGET";
  attribute OPT_MODIFIED of \m1[0]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[0]_i_1\ : label is "soft_lutpair24";
  attribute OPT_MODIFIED of \m1[10]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[10]_i_1\ : label is "soft_lutpair29";
  attribute OPT_MODIFIED of \m1[11]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[11]_i_1\ : label is "soft_lutpair30";
  attribute OPT_MODIFIED of \m1[12]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[12]_i_1\ : label is "soft_lutpair30";
  attribute OPT_MODIFIED of \m1[13]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[13]_i_1\ : label is "soft_lutpair31";
  attribute OPT_MODIFIED of \m1[14]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[14]_i_1\ : label is "soft_lutpair31";
  attribute OPT_MODIFIED of \m1[15]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[15]_i_1\ : label is "soft_lutpair32";
  attribute OPT_MODIFIED of \m1[16]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[16]_i_1\ : label is "soft_lutpair32";
  attribute OPT_MODIFIED of \m1[17]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[17]_i_1\ : label is "soft_lutpair33";
  attribute OPT_MODIFIED of \m1[18]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[18]_i_1\ : label is "soft_lutpair33";
  attribute OPT_MODIFIED of \m1[19]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[19]_i_1\ : label is "soft_lutpair34";
  attribute OPT_MODIFIED of \m1[1]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[1]_i_1\ : label is "soft_lutpair25";
  attribute OPT_MODIFIED of \m1[20]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[20]_i_1\ : label is "soft_lutpair34";
  attribute OPT_MODIFIED of \m1[21]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[21]_i_1\ : label is "soft_lutpair35";
  attribute OPT_MODIFIED of \m1[22]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m1[22]_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[22]_i_2\ : label is "soft_lutpair35";
  attribute OPT_MODIFIED of \m1[2]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[2]_i_1\ : label is "soft_lutpair25";
  attribute OPT_MODIFIED of \m1[3]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[3]_i_1\ : label is "soft_lutpair26";
  attribute OPT_MODIFIED of \m1[4]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[4]_i_1\ : label is "soft_lutpair26";
  attribute OPT_MODIFIED of \m1[5]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[5]_i_1\ : label is "soft_lutpair27";
  attribute OPT_MODIFIED of \m1[6]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[6]_i_1\ : label is "soft_lutpair27";
  attribute OPT_MODIFIED of \m1[7]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[7]_i_1\ : label is "soft_lutpair28";
  attribute OPT_MODIFIED of \m1[8]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[8]_i_1\ : label is "soft_lutpair28";
  attribute OPT_MODIFIED of \m1[9]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m1[9]_i_1\ : label is "soft_lutpair29";
  attribute OPT_MODIFIED of \m2[0]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[0]_i_1\ : label is "soft_lutpair13";
  attribute OPT_MODIFIED of \m2[10]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[10]_i_1\ : label is "soft_lutpair18";
  attribute OPT_MODIFIED of \m2[11]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[11]_i_1\ : label is "soft_lutpair18";
  attribute OPT_MODIFIED of \m2[12]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[12]_i_1\ : label is "soft_lutpair19";
  attribute OPT_MODIFIED of \m2[13]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[13]_i_1\ : label is "soft_lutpair19";
  attribute OPT_MODIFIED of \m2[14]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[14]_i_1\ : label is "soft_lutpair20";
  attribute OPT_MODIFIED of \m2[15]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[15]_i_1\ : label is "soft_lutpair20";
  attribute OPT_MODIFIED of \m2[16]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[16]_i_1\ : label is "soft_lutpair21";
  attribute OPT_MODIFIED of \m2[17]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[17]_i_1\ : label is "soft_lutpair21";
  attribute OPT_MODIFIED of \m2[18]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[18]_i_1\ : label is "soft_lutpair22";
  attribute OPT_MODIFIED of \m2[19]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[19]_i_1\ : label is "soft_lutpair22";
  attribute OPT_MODIFIED of \m2[1]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[1]_i_1\ : label is "soft_lutpair14";
  attribute OPT_MODIFIED of \m2[20]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[20]_i_1\ : label is "soft_lutpair23";
  attribute OPT_MODIFIED of \m2[21]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[21]_i_1\ : label is "soft_lutpair23";
  attribute OPT_MODIFIED of \m2[22]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[22]_i_1\ : label is "soft_lutpair24";
  attribute OPT_MODIFIED of \m2[23]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[23]_i_1\ : label is "soft_lutpair2";
  attribute OPT_MODIFIED of \m2[2]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[2]_i_1\ : label is "soft_lutpair15";
  attribute OPT_MODIFIED of \m2[3]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[3]_i_1\ : label is "soft_lutpair16";
  attribute OPT_MODIFIED of \m2[4]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[4]_i_1\ : label is "soft_lutpair17";
  attribute OPT_MODIFIED of \m2[5]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[5]_i_1\ : label is "soft_lutpair13";
  attribute OPT_MODIFIED of \m2[6]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[6]_i_1\ : label is "soft_lutpair14";
  attribute OPT_MODIFIED of \m2[7]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[7]_i_1\ : label is "soft_lutpair15";
  attribute OPT_MODIFIED of \m2[8]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[8]_i_1\ : label is "soft_lutpair16";
  attribute OPT_MODIFIED of \m2[9]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m2[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m[13]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m[16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m[18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m[19]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m[21]_i_1__0\ : label is "soft_lutpair36";
  attribute OPT_MODIFIED of \m[22]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m[22]_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m[8]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m[9]_i_1\ : label is "soft_lutpair36";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_1_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of p_1_out_carry : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \p_1_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \p_1_out_carry__0\ : label is "SWEEP";
  attribute SOFT_HLUTNM of \res[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \res[10]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \res[11]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \res[12]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \res[13]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \res[14]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \res[15]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \res[16]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \res[17]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \res[18]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \res[19]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \res[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \res[20]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \res[21]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \res[22]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \res[23]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \res[24]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \res[25]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \res[26]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \res[27]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \res[28]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \res[29]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \res[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \res[30]_i_1\ : label is "soft_lutpair12";
  attribute OPT_MODIFIED of \res[31]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \res[31]_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[31]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \res[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \res[4]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \res[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \res[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \res[7]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \res[8]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \res[9]_i_1\ : label is "soft_lutpair57";
  attribute OPT_MODIFIED of s_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[0]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[1]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[2]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[3]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[4]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[5]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[6]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[7]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[8]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[8]_i_2\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp_reg[3]_i_2\ : label is "SWEEP";
  attribute OPT_MODIFIED of \tmpexp_reg[7]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of tmpm0 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute OPT_MODIFIED of tmpm0 : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm0__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm[0]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[10]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[11]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[12]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[13]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[14]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[15]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[16]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[17]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[18]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[19]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[1]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[20]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[21]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[22]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[23]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[24]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[25]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[26]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[27]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[28]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[29]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[2]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[30]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[31]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[32]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[33]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[34]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[35]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[36]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[37]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[38]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[39]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[3]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[40]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[41]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[42]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[43]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[44]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[45]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[46]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[47]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[4]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[5]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[6]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[7]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[8]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[9]_i_1\ : label is "RETARGET";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[26]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm_reg[26]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[30]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm_reg[30]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[34]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm_reg[34]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[38]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm_reg[38]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[42]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm_reg[42]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[46]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm_reg[46]_i_2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpm_reg[47]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \op1[24]\ <= \^op1[24]\;
  \op1[30]\ <= \^op1[30]\;
  \op2[24]\ <= \^op2[24]\;
  \op2[30]\ <= \^op2[30]\;
  res_verilog_rdy <= \^res_verilog_rdy\;
\exp[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[0]\,
      O => \exp[0]_i_1__0_n_0\
    );
\exp[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[1]\,
      O => \exp[1]_i_1__0_n_0\
    );
\exp[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[2]\,
      O => \exp[2]_i_1__0_n_0\
    );
\exp[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[3]\,
      O => \exp[3]_i_1__0_n_0\
    );
\exp[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[4]\,
      O => \exp[4]_i_1__0_n_0\
    );
\exp[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[5]\,
      O => \exp[5]_i_1__0_n_0\
    );
\exp[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[6]\,
      O => \exp[6]_i_1__0_n_0\
    );
\exp[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09220003"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[3]_i_1_n_0\,
      I2 => \state[4]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[0]_i_1_n_0\,
      O => \exp[7]_i_1_n_0\
    );
\exp[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[7]\,
      O => \exp[7]_i_2_n_0\
    );
\exp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[0]_i_1__0_n_0\,
      Q => exp(0)
    );
\exp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[1]_i_1__0_n_0\,
      Q => exp(1)
    );
\exp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[2]_i_1__0_n_0\,
      Q => exp(2)
    );
\exp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[3]_i_1__0_n_0\,
      Q => exp(3)
    );
\exp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[4]_i_1__0_n_0\,
      Q => exp(4)
    );
\exp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[5]_i_1__0_n_0\,
      Q => exp(5)
    );
\exp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[6]_i_1__0_n_0\,
      Q => exp(6)
    );
\exp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \exp[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \exp[7]_i_2_n_0\,
      Q => exp(7)
    );
g0_b0_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => op2_IBUF(30),
      I1 => op2_IBUF(29),
      I2 => op2_IBUF(27),
      I3 => op2_IBUF(28),
      O => \^op2[30]\
    );
g0_b0_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => op1_IBUF(30),
      I1 => op1_IBUF(29),
      I2 => op1_IBUF(27),
      I3 => op1_IBUF(28),
      O => \^op1[30]\
    );
g0_b21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A01"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[0]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      I3 => \state[3]_i_1_n_0\,
      I4 => \state[4]_i_1_n_0\,
      O => g0_b21_n_0
    );
g0_b21_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF01FF01FF0101"
    )
        port map (
      I0 => state(0),
      I1 => g0_b21_i_3_n_0,
      I2 => g0_b21_i_4_n_0,
      I3 => g0_b21_i_5_n_0,
      I4 => state(2),
      I5 => g0_b21_i_6_n_0,
      O => \state[1]_i_1_n_0\
    );
g0_b21_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A20000"
    )
        port map (
      I0 => \state[2]_i_5_n_0\,
      I1 => state(3),
      I2 => g0_b21_i_17_n_0,
      I3 => state(4),
      I4 => state(1),
      O => g0_b21_i_10_n_0
    );
g0_b21_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => op1_IBUF(24),
      I1 => op1_IBUF(23),
      I2 => op1_IBUF(26),
      I3 => op1_IBUF(25),
      I4 => \^op1[30]\,
      O => \^op1[24]\
    );
g0_b21_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => op2_IBUF(24),
      I1 => op2_IBUF(23),
      I2 => op2_IBUF(26),
      I3 => op2_IBUF(25),
      I4 => \^op2[30]\,
      O => \^op2[24]\
    );
g0_b21_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(24),
      I1 => p_0_in(25),
      O => g0_b21_i_13_n_0
    );
g0_b21_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1103550F11030000"
    )
        port map (
      I0 => \^op1[24]\,
      I1 => \^op2[24]\,
      I2 => \state_reg[2]_0\,
      I3 => \state[2]_i_9_n_0\,
      I4 => \state[2]_i_8_n_0\,
      I5 => \state_reg[2]_1\,
      O => g0_b21_i_14_n_0
    );
g0_b21_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(24),
      I1 => p_0_in(25),
      I2 => state(1),
      O => g0_b21_i_15_n_0
    );
g0_b21_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001010000000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => p_2_in,
      I4 => state(3),
      I5 => state(4),
      O => g0_b21_i_16_n_0
    );
g0_b21_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[2]\,
      I1 => \tmpexp_reg_n_0_[6]\,
      I2 => \tmpexp_reg_n_0_[4]\,
      I3 => \state[4]_i_7_n_0\,
      O => g0_b21_i_17_n_0
    );
g0_b21_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF001F"
    )
        port map (
      I0 => g0_b21_i_7_n_0,
      I1 => state(3),
      I2 => g0_b21_i_8_n_0,
      I3 => state(2),
      I4 => g0_b21_i_9_n_0,
      I5 => g0_b21_i_10_n_0,
      O => \state[0]_i_1_n_0\
    );
g0_b21_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(4),
      I1 => state(1),
      O => g0_b21_i_3_n_0
    );
g0_b21_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474747FFFFFF00"
    )
        port map (
      I0 => \state[4]_i_5_n_0\,
      I1 => state(2),
      I2 => p_0_in(25),
      I3 => \^op1[24]\,
      I4 => \^op2[24]\,
      I5 => state(3),
      O => g0_b21_i_4_n_0
    );
g0_b21_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEF0E0C000"
    )
        port map (
      I0 => p_2_in,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => state(4),
      I5 => state(3),
      O => g0_b21_i_5_n_0
    );
g0_b21_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAC0F0FFFAC000"
    )
        port map (
      I0 => inrdy_IBUF(0),
      I1 => g0_b21_i_13_n_0,
      I2 => state(4),
      I3 => state(1),
      I4 => state(0),
      I5 => p_0_in(0),
      O => g0_b21_i_6_n_0
    );
g0_b21_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAEBAAA"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(4),
      I3 => p_0_in(0),
      I4 => g0_b21_i_14_n_0,
      O => g0_b21_i_7_n_0
    );
g0_b21_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFDFFFFFFFF0"
    )
        port map (
      I0 => p_0_in(25),
      I1 => state(0),
      I2 => state(1),
      I3 => state(4),
      I4 => inrdy_IBUF(0),
      I5 => state(3),
      O => g0_b21_i_8_n_0
    );
g0_b21_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(4),
      I4 => g0_b21_i_15_n_0,
      I5 => g0_b21_i_16_n_0,
      O => g0_b21_i_9_n_0
    );
g0_b22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00026A01"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[0]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      I3 => \state[3]_i_1_n_0\,
      I4 => \state[4]_i_1_n_0\,
      O => g0_b22_n_0
    );
\m1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(0),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[0]_i_1_n_0\
    );
\m1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(10),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[10]_i_1_n_0\
    );
\m1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(11),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[11]_i_1_n_0\
    );
\m1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(12),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[12]_i_1_n_0\
    );
\m1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(13),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[13]_i_1_n_0\
    );
\m1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(14),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[14]_i_1_n_0\
    );
\m1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(15),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[15]_i_1_n_0\
    );
\m1[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(16),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[16]_i_1_n_0\
    );
\m1[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(17),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[17]_i_1_n_0\
    );
\m1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(18),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[18]_i_1_n_0\
    );
\m1[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(19),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[19]_i_1_n_0\
    );
\m1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(1),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[1]_i_1_n_0\
    );
\m1[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(20),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[20]_i_1_n_0\
    );
\m1[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(21),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[21]_i_1_n_0\
    );
\m1[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \m1[22]_i_3_n_0\,
      I1 => \state[0]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \m1[22]_i_1__0_n_0\
    );
\m1[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(22),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[22]_i_2_n_0\
    );
\m1[22]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state[4]_i_1_n_0\,
      I1 => \state[3]_i_1_n_0\,
      O => \m1[22]_i_3_n_0\
    );
\m1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(2),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[2]_i_1_n_0\
    );
\m1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(3),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[3]_i_1_n_0\
    );
\m1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(4),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[4]_i_1_n_0\
    );
\m1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(5),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[5]_i_1_n_0\
    );
\m1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(6),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[6]_i_1_n_0\
    );
\m1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(7),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[7]_i_1_n_0\
    );
\m1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(8),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[8]_i_1_n_0\
    );
\m1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(9),
      I1 => \state[1]_i_1_n_0\,
      O => \m1[9]_i_1_n_0\
    );
\m1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[0]_i_1_n_0\,
      Q => \m1_reg_n_0_[0]\
    );
\m1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[10]_i_1_n_0\,
      Q => \m1_reg_n_0_[10]\
    );
\m1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[11]_i_1_n_0\,
      Q => \m1_reg_n_0_[11]\
    );
\m1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[12]_i_1_n_0\,
      Q => \m1_reg_n_0_[12]\
    );
\m1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[13]_i_1_n_0\,
      Q => \m1_reg_n_0_[13]\
    );
\m1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[14]_i_1_n_0\,
      Q => \m1_reg_n_0_[14]\
    );
\m1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[15]_i_1_n_0\,
      Q => \m1_reg_n_0_[15]\
    );
\m1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[16]_i_1_n_0\,
      Q => \m1_reg_n_0_[16]\
    );
\m1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[17]_i_1_n_0\,
      Q => \m1_reg_n_0_[17]\
    );
\m1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[18]_i_1_n_0\,
      Q => \m1_reg_n_0_[18]\
    );
\m1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[19]_i_1_n_0\,
      Q => \m1_reg_n_0_[19]\
    );
\m1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[1]_i_1_n_0\,
      Q => \m1_reg_n_0_[1]\
    );
\m1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[20]_i_1_n_0\,
      Q => \m1_reg_n_0_[20]\
    );
\m1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[21]_i_1_n_0\,
      Q => \m1_reg_n_0_[21]\
    );
\m1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[22]_i_2_n_0\,
      Q => \m1_reg_n_0_[22]\
    );
\m1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[2]_i_1_n_0\,
      Q => \m1_reg_n_0_[2]\
    );
\m1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[3]_i_1_n_0\,
      Q => \m1_reg_n_0_[3]\
    );
\m1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[4]_i_1_n_0\,
      Q => \m1_reg_n_0_[4]\
    );
\m1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[5]_i_1_n_0\,
      Q => \m1_reg_n_0_[5]\
    );
\m1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[6]_i_1_n_0\,
      Q => \m1_reg_n_0_[6]\
    );
\m1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[7]_i_1_n_0\,
      Q => \m1_reg_n_0_[7]\
    );
\m1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[8]_i_1_n_0\,
      Q => \m1_reg_n_0_[8]\
    );
\m1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m1[9]_i_1_n_0\,
      Q => \m1_reg_n_0_[9]\
    );
\m2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(0),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(0)
    );
\m2[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(10),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(10)
    );
\m2[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(11),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(11)
    );
\m2[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(12),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(12)
    );
\m2[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(13),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(13)
    );
\m2[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(14),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(14)
    );
\m2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(15),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(15)
    );
\m2[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(16),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(16)
    );
\m2[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(17),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(17)
    );
\m2[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(18),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(18)
    );
\m2[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(19),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(19)
    );
\m2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(1),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(1)
    );
\m2[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(20),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(20)
    );
\m2[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(21),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(21)
    );
\m2[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(22),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(22)
    );
\m2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0008"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[1]_i_1_n_0\,
      I2 => \state[0]_i_1_n_0\,
      I3 => \m1[22]_i_3_n_0\,
      I4 => \m2_reg_n_0_[23]\,
      O => \m2[23]_i_1_n_0\
    );
\m2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(2),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(2)
    );
\m2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(3),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(3)
    );
\m2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(4),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(4)
    );
\m2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(5),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(5)
    );
\m2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(6),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(6)
    );
\m2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(7),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(7)
    );
\m2[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(8),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(8)
    );
\m2[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op2_IBUF(9),
      I1 => \state[1]_i_1_n_0\,
      O => p_1_in(9)
    );
\m2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(0),
      Q => \m2_reg_n_0_[0]\
    );
\m2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(10),
      Q => \m2_reg_n_0_[10]\
    );
\m2_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(11),
      Q => \m2_reg_n_0_[11]\
    );
\m2_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(12),
      Q => \m2_reg_n_0_[12]\
    );
\m2_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(13),
      Q => \m2_reg_n_0_[13]\
    );
\m2_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(14),
      Q => \m2_reg_n_0_[14]\
    );
\m2_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(15),
      Q => \m2_reg_n_0_[15]\
    );
\m2_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(16),
      Q => \m2_reg_n_0_[16]\
    );
\m2_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(17),
      Q => \m2_reg_n_0_[17]\
    );
\m2_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(18),
      Q => \m2_reg_n_0_[18]\
    );
\m2_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(19),
      Q => \m2_reg_n_0_[19]\
    );
\m2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(1),
      Q => \m2_reg_n_0_[1]\
    );
\m2_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(20),
      Q => \m2_reg_n_0_[20]\
    );
\m2_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(21),
      Q => \m2_reg_n_0_[21]\
    );
\m2_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(22),
      Q => \m2_reg_n_0_[22]\
    );
\m2_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \m2[23]_i_1_n_0\,
      Q => \m2_reg_n_0_[23]\
    );
\m2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(2),
      Q => \m2_reg_n_0_[2]\
    );
\m2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(3),
      Q => \m2_reg_n_0_[3]\
    );
\m2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(4),
      Q => \m2_reg_n_0_[4]\
    );
\m2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(5),
      Q => \m2_reg_n_0_[5]\
    );
\m2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(6),
      Q => \m2_reg_n_0_[6]\
    );
\m2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(7),
      Q => \m2_reg_n_0_[7]\
    );
\m2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(8),
      Q => \m2_reg_n_0_[8]\
    );
\m2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => p_1_in(9),
      Q => \m2_reg_n_0_[9]\
    );
\m[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \state[4]_i_1_n_0\,
      O => \m[0]_i_1_n_0\
    );
\m[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \state[4]_i_1_n_0\,
      O => \m[10]_i_1_n_0\
    );
\m[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \state[4]_i_1_n_0\,
      O => \m[11]_i_1_n_0\
    );
\m[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \state[4]_i_1_n_0\,
      O => \m[12]_i_1_n_0\
    );
\m[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \state[4]_i_1_n_0\,
      O => \m[13]_i_1_n_0\
    );
\m[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \state[4]_i_1_n_0\,
      O => \m[14]_i_1_n_0\
    );
\m[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \state[4]_i_1_n_0\,
      O => \m[15]_i_1_n_0\
    );
\m[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \state[4]_i_1_n_0\,
      O => \m[16]_i_1_n_0\
    );
\m[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \state[4]_i_1_n_0\,
      O => \m[17]_i_1_n_0\
    );
\m[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \state[4]_i_1_n_0\,
      O => \m[18]_i_1_n_0\
    );
\m[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \state[4]_i_1_n_0\,
      O => \m[19]_i_1_n_0\
    );
\m[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \state[4]_i_1_n_0\,
      O => \m[1]_i_1_n_0\
    );
\m[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(21),
      I1 => \state[4]_i_1_n_0\,
      O => \m[20]_i_1_n_0\
    );
\m[21]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(22),
      I1 => \state[4]_i_1_n_0\,
      O => \m[21]_i_1__0_n_0\
    );
\m[22]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01011401"
    )
        port map (
      I0 => \state[3]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \state[0]_i_1_n_0\,
      I4 => \state[2]_i_1_n_0\,
      O => \m[22]_i_1__0_n_0\
    );
\m[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => p_0_in(23),
      I3 => \state[4]_i_1_n_0\,
      O => \m[22]_i_2_n_0\
    );
\m[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \state[4]_i_1_n_0\,
      O => \m[2]_i_1_n_0\
    );
\m[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \state[4]_i_1_n_0\,
      O => \m[3]_i_1_n_0\
    );
\m[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \state[4]_i_1_n_0\,
      O => \m[4]_i_1_n_0\
    );
\m[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \state[4]_i_1_n_0\,
      O => \m[5]_i_1_n_0\
    );
\m[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \state[4]_i_1_n_0\,
      O => \m[6]_i_1_n_0\
    );
\m[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \state[4]_i_1_n_0\,
      O => \m[7]_i_1_n_0\
    );
\m[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \state[4]_i_1_n_0\,
      O => \m[8]_i_1_n_0\
    );
\m[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \state[4]_i_1_n_0\,
      O => \m[9]_i_1_n_0\
    );
\m_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[0]_i_1_n_0\,
      Q => m(0)
    );
\m_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[10]_i_1_n_0\,
      Q => m(10)
    );
\m_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[11]_i_1_n_0\,
      Q => m(11)
    );
\m_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[12]_i_1_n_0\,
      Q => m(12)
    );
\m_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[13]_i_1_n_0\,
      Q => m(13)
    );
\m_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[14]_i_1_n_0\,
      Q => m(14)
    );
\m_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[15]_i_1_n_0\,
      Q => m(15)
    );
\m_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[16]_i_1_n_0\,
      Q => m(16)
    );
\m_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[17]_i_1_n_0\,
      Q => m(17)
    );
\m_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[18]_i_1_n_0\,
      Q => m(18)
    );
\m_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[19]_i_1_n_0\,
      Q => m(19)
    );
\m_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[1]_i_1_n_0\,
      Q => m(1)
    );
\m_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[20]_i_1_n_0\,
      Q => m(20)
    );
\m_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[21]_i_1__0_n_0\,
      Q => m(21)
    );
\m_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[22]_i_2_n_0\,
      Q => m(22)
    );
\m_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[2]_i_1_n_0\,
      Q => m(2)
    );
\m_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[3]_i_1_n_0\,
      Q => m(3)
    );
\m_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[4]_i_1_n_0\,
      Q => m(4)
    );
\m_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[5]_i_1_n_0\,
      Q => m(5)
    );
\m_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[6]_i_1_n_0\,
      Q => m(6)
    );
\m_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[7]_i_1_n_0\,
      Q => m(7)
    );
\m_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[8]_i_1_n_0\,
      Q => m(8)
    );
\m_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m[22]_i_1__0_n_0\,
      CLR => reset_IBUF,
      D => \m[9]_i_1_n_0\,
      Q => m(9)
    );
p_1_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_1_out_carry_n_0,
      CO(2 downto 0) => NLW_p_1_out_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \tmpexp_reg_n_0_[0]\,
      DI(3) => \tmpexp_reg_n_0_[3]\,
      DI(2) => \tmpexp_reg_n_0_[2]\,
      DI(1) => \tmpexp_reg_n_0_[1]\,
      DI(0) => p_1_out_carry_i_1_n_0,
      O(3 downto 0) => data1(4 downto 1),
      S(3) => p_1_out_carry_i_2_n_0,
      S(2) => p_1_out_carry_i_3_n_0,
      S(1) => p_1_out_carry_i_4_n_0,
      S(0) => p_1_out_carry_i_5_n_0
    );
\p_1_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_1_out_carry_n_0,
      CO(3 downto 0) => \NLW_p_1_out_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \tmpexp_reg_n_0_[6]\,
      DI(1) => \tmpexp_reg_n_0_[5]\,
      DI(0) => \tmpexp_reg_n_0_[4]\,
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \p_1_out_carry__0_i_1_n_0\,
      S(2) => \p_1_out_carry__0_i_2_n_0\,
      S(1) => \p_1_out_carry__0_i_3_n_0\,
      S(0) => \p_1_out_carry__0_i_4_n_0\
    );
\p_1_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[7]\,
      I1 => p_2_in,
      O => \p_1_out_carry__0_i_1_n_0\
    );
\p_1_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[6]\,
      I1 => \tmpexp_reg_n_0_[7]\,
      O => \p_1_out_carry__0_i_2_n_0\
    );
\p_1_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[5]\,
      I1 => \tmpexp_reg_n_0_[6]\,
      O => \p_1_out_carry__0_i_3_n_0\
    );
\p_1_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[4]\,
      I1 => \tmpexp_reg_n_0_[5]\,
      O => \p_1_out_carry__0_i_4_n_0\
    );
p_1_out_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      O => p_1_out_carry_i_1_n_0
    );
p_1_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[3]\,
      I1 => \tmpexp_reg_n_0_[4]\,
      O => p_1_out_carry_i_2_n_0
    );
p_1_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[2]\,
      I1 => \tmpexp_reg_n_0_[3]\,
      O => p_1_out_carry_i_3_n_0
    );
p_1_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      I1 => \tmpexp_reg_n_0_[2]\,
      O => p_1_out_carry_i_4_n_0
    );
p_1_out_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      I1 => \state[2]_i_1_n_0\,
      O => p_1_out_carry_i_5_n_0
    );
\res[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(0),
      I1 => \state[4]_i_1_n_0\,
      O => \res[0]_i_1_n_0\
    );
\res[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(10),
      I1 => \state[4]_i_1_n_0\,
      O => \res[10]_i_1_n_0\
    );
\res[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(11),
      I1 => \state[4]_i_1_n_0\,
      O => \res[11]_i_1_n_0\
    );
\res[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(12),
      I1 => \state[4]_i_1_n_0\,
      O => \res[12]_i_1_n_0\
    );
\res[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(13),
      I1 => \state[4]_i_1_n_0\,
      O => \res[13]_i_1_n_0\
    );
\res[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(14),
      I1 => \state[4]_i_1_n_0\,
      O => \res[14]_i_1_n_0\
    );
\res[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(15),
      I1 => \state[4]_i_1_n_0\,
      O => \res[15]_i_1_n_0\
    );
\res[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(16),
      I1 => \state[4]_i_1_n_0\,
      O => \res[16]_i_1_n_0\
    );
\res[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(17),
      I1 => \state[4]_i_1_n_0\,
      O => \res[17]_i_1_n_0\
    );
\res[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(18),
      I1 => \state[4]_i_1_n_0\,
      O => \res[18]_i_1_n_0\
    );
\res[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(19),
      I1 => \state[4]_i_1_n_0\,
      O => \res[19]_i_1_n_0\
    );
\res[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(1),
      I1 => \state[4]_i_1_n_0\,
      O => \res[1]_i_1_n_0\
    );
\res[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(20),
      I1 => \state[4]_i_1_n_0\,
      O => \res[20]_i_1_n_0\
    );
\res[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(21),
      I1 => \state[4]_i_1_n_0\,
      O => \res[21]_i_1_n_0\
    );
\res[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(22),
      I1 => \state[4]_i_1_n_0\,
      O => \res[22]_i_1_n_0\
    );
\res[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(0),
      I1 => \state[4]_i_1_n_0\,
      O => \res[23]_i_1_n_0\
    );
\res[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(1),
      I1 => \state[4]_i_1_n_0\,
      O => \res[24]_i_1_n_0\
    );
\res[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(2),
      I1 => \state[4]_i_1_n_0\,
      O => \res[25]_i_1_n_0\
    );
\res[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(3),
      I1 => \state[4]_i_1_n_0\,
      O => \res[26]_i_1_n_0\
    );
\res[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(4),
      I1 => \state[4]_i_1_n_0\,
      O => \res[27]_i_1_n_0\
    );
\res[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(5),
      I1 => \state[4]_i_1_n_0\,
      O => \res[28]_i_1_n_0\
    );
\res[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(6),
      I1 => \state[4]_i_1_n_0\,
      O => \res[29]_i_1_n_0\
    );
\res[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(2),
      I1 => \state[4]_i_1_n_0\,
      O => \res[2]_i_1_n_0\
    );
\res[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => exp(7),
      I1 => \state[4]_i_1_n_0\,
      O => \res[30]_i_1_n_0\
    );
\res[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC010001"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => \state[1]_i_1_n_0\,
      I2 => \m1[22]_i_3_n_0\,
      I3 => \state[2]_i_1_n_0\,
      I4 => \state[4]_i_1_n_0\,
      O => \res[31]_i_1_n_0\
    );
\res[31]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCDCDCCC"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \^res_verilog_rdy\,
      I4 => res_vhdl_rdy,
      O => E(0)
    );
\res[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => \state[4]_i_1_n_0\,
      I2 => s,
      O => \res[31]_i_2_n_0\
    );
\res[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(3),
      I1 => \state[4]_i_1_n_0\,
      O => \res[3]_i_1_n_0\
    );
\res[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(4),
      I1 => \state[4]_i_1_n_0\,
      O => \res[4]_i_1_n_0\
    );
\res[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(5),
      I1 => \state[4]_i_1_n_0\,
      O => \res[5]_i_1_n_0\
    );
\res[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(6),
      I1 => \state[4]_i_1_n_0\,
      O => \res[6]_i_1_n_0\
    );
\res[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(7),
      I1 => \state[4]_i_1_n_0\,
      O => \res[7]_i_1_n_0\
    );
\res[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(8),
      I1 => \state[4]_i_1_n_0\,
      O => \res[8]_i_1_n_0\
    );
\res[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m(9),
      I1 => \state[4]_i_1_n_0\,
      O => \res[9]_i_1_n_0\
    );
\res_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[0]_i_1_n_0\,
      Q => \res_reg[31]_0\(0)
    );
\res_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[10]_i_1_n_0\,
      Q => \res_reg[31]_0\(10)
    );
\res_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[11]_i_1_n_0\,
      Q => \res_reg[31]_0\(11)
    );
\res_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[12]_i_1_n_0\,
      Q => \res_reg[31]_0\(12)
    );
\res_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[13]_i_1_n_0\,
      Q => \res_reg[31]_0\(13)
    );
\res_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[14]_i_1_n_0\,
      Q => \res_reg[31]_0\(14)
    );
\res_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[15]_i_1_n_0\,
      Q => \res_reg[31]_0\(15)
    );
\res_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[16]_i_1_n_0\,
      Q => \res_reg[31]_0\(16)
    );
\res_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[17]_i_1_n_0\,
      Q => \res_reg[31]_0\(17)
    );
\res_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[18]_i_1_n_0\,
      Q => \res_reg[31]_0\(18)
    );
\res_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[19]_i_1_n_0\,
      Q => \res_reg[31]_0\(19)
    );
\res_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[1]_i_1_n_0\,
      Q => \res_reg[31]_0\(1)
    );
\res_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[20]_i_1_n_0\,
      Q => \res_reg[31]_0\(20)
    );
\res_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[21]_i_1_n_0\,
      Q => \res_reg[31]_0\(21)
    );
\res_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[22]_i_1_n_0\,
      Q => \res_reg[31]_0\(22)
    );
\res_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[23]_i_1_n_0\,
      Q => \res_reg[31]_0\(23)
    );
\res_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[24]_i_1_n_0\,
      Q => \res_reg[31]_0\(24)
    );
\res_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[25]_i_1_n_0\,
      Q => \res_reg[31]_0\(25)
    );
\res_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[26]_i_1_n_0\,
      Q => \res_reg[31]_0\(26)
    );
\res_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[27]_i_1_n_0\,
      Q => \res_reg[31]_0\(27)
    );
\res_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[28]_i_1_n_0\,
      Q => \res_reg[31]_0\(28)
    );
\res_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[29]_i_1_n_0\,
      Q => \res_reg[31]_0\(29)
    );
\res_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[2]_i_1_n_0\,
      Q => \res_reg[31]_0\(2)
    );
\res_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[30]_i_1_n_0\,
      Q => \res_reg[31]_0\(30)
    );
\res_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[31]_i_2_n_0\,
      Q => \res_reg[31]_0\(31)
    );
\res_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[3]_i_1_n_0\,
      Q => \res_reg[31]_0\(3)
    );
\res_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[4]_i_1_n_0\,
      Q => \res_reg[31]_0\(4)
    );
\res_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[5]_i_1_n_0\,
      Q => \res_reg[31]_0\(5)
    );
\res_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[6]_i_1_n_0\,
      Q => \res_reg[31]_0\(6)
    );
\res_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[7]_i_1_n_0\,
      Q => \res_reg[31]_0\(7)
    );
\res_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[8]_i_1_n_0\,
      Q => \res_reg[31]_0\(8)
    );
\res_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \res[9]_i_1_n_0\,
      Q => \res_reg[31]_0\(9)
    );
resrdy_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \res[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \state[4]_i_1_n_0\,
      Q => \^res_verilog_rdy\
    );
s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFEFC00000200"
    )
        port map (
      I0 => s_reg_0,
      I1 => \m1[22]_i_3_n_0\,
      I2 => \state[2]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[0]_i_1_n_0\,
      I5 => s,
      O => s_i_1_n_0
    );
s_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => s_i_1_n_0,
      Q => s
    );
\state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \^res_verilog_rdy\,
      I4 => res_vhdl_rdy,
      O => next_state(0)
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFBBBA"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => state(0),
      I3 => \state[2]_i_4_n_0\,
      I4 => \state[2]_i_5_n_0\,
      I5 => state(4),
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51510051"
    )
        port map (
      I0 => state(3),
      I1 => \state[2]_i_4_0\,
      I2 => \^op2[30]\,
      I3 => \state[2]_i_4_1\,
      I4 => \^op1[30]\,
      O => \state[2]_i_11_n_0\
    );
\state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[15]\,
      I1 => \m2_reg_n_0_[3]\,
      I2 => \m2_reg_n_0_[21]\,
      I3 => \m2_reg_n_0_[19]\,
      O => \state[2]_i_12_n_0\
    );
\state[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[17]\,
      I1 => \m2_reg_n_0_[13]\,
      I2 => \m2_reg_n_0_[8]\,
      I3 => \m2_reg_n_0_[4]\,
      O => \state[2]_i_13_n_0\
    );
\state[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[12]\,
      I1 => \m2_reg_n_0_[10]\,
      I2 => \m2_reg_n_0_[16]\,
      I3 => \m2_reg_n_0_[6]\,
      O => \state[2]_i_14_n_0\
    );
\state[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[7]\,
      I1 => \m2_reg_n_0_[1]\,
      I2 => \m2_reg_n_0_[14]\,
      I3 => \m2_reg_n_0_[2]\,
      O => \state[2]_i_15_n_0\
    );
\state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[9]\,
      I1 => \m2_reg_n_0_[5]\,
      I2 => \m2_reg_n_0_[22]\,
      I3 => \m2_reg_n_0_[11]\,
      O => \state[2]_i_16_n_0\
    );
\state[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[23]\,
      I1 => \m2_reg_n_0_[0]\,
      I2 => \m2_reg_n_0_[20]\,
      I3 => \m2_reg_n_0_[18]\,
      O => \state[2]_i_17_n_0\
    );
\state[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m1_reg_n_0_[14]\,
      I1 => \m1_reg_n_0_[10]\,
      I2 => \m1_reg_n_0_[16]\,
      I3 => \m1_reg_n_0_[5]\,
      O => \state[2]_i_18_n_0\
    );
\state[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m1_reg_n_0_[4]\,
      I1 => \m1_reg_n_0_[3]\,
      I2 => \m1_reg_n_0_[6]\,
      I3 => \m1_reg_n_0_[8]\,
      O => \state[2]_i_19_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080308"
    )
        port map (
      I0 => state(4),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => state(1),
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m1_reg_n_0_[12]\,
      I1 => \m1_reg_n_0_[0]\,
      I2 => \m1_reg_n_0_[11]\,
      I3 => \m2_reg_n_0_[23]\,
      O => \state[2]_i_20_n_0\
    );
\state[2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m1_reg_n_0_[21]\,
      I1 => \m1_reg_n_0_[2]\,
      I2 => \m1_reg_n_0_[19]\,
      I3 => \m1_reg_n_0_[20]\,
      O => \state[2]_i_21_n_0\
    );
\state[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m1_reg_n_0_[7]\,
      I1 => \m1_reg_n_0_[9]\,
      I2 => \m1_reg_n_0_[18]\,
      I3 => \m1_reg_n_0_[22]\,
      O => \state[2]_i_22_n_0\
    );
\state[2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \m1_reg_n_0_[17]\,
      I1 => \m1_reg_n_0_[15]\,
      I2 => \m1_reg_n_0_[13]\,
      I3 => \m1_reg_n_0_[1]\,
      O => \state[2]_i_23_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A8A8AAAAAAAA"
    )
        port map (
      I0 => \state[2]_i_6_n_0\,
      I1 => \state_reg[2]_1\,
      I2 => \state[2]_i_8_n_0\,
      I3 => \state[2]_i_9_n_0\,
      I4 => \state_reg[2]_0\,
      I5 => \state[2]_i_11_n_0\,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => \state_reg[3]_0\,
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(25),
      I1 => state(3),
      O => \state[2]_i_6_n_0\
    );
\state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[2]_i_12_n_0\,
      I1 => \state[2]_i_13_n_0\,
      I2 => \state[2]_i_14_n_0\,
      I3 => \state[2]_i_15_n_0\,
      I4 => \state[2]_i_16_n_0\,
      I5 => \state[2]_i_17_n_0\,
      O => \state[2]_i_8_n_0\
    );
\state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \state[2]_i_18_n_0\,
      I1 => \state[2]_i_19_n_0\,
      I2 => \state[2]_i_20_n_0\,
      I3 => \state[2]_i_21_n_0\,
      I4 => \state[2]_i_22_n_0\,
      I5 => \state[2]_i_23_n_0\,
      O => \state[2]_i_9_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => state(2),
      I2 => state(4),
      I3 => \state[3]_i_3_n_0\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF33F055FF00FF"
    )
        port map (
      I0 => \state[3]_i_4_n_0\,
      I1 => \state[4]_i_5_n_0\,
      I2 => \state_reg[3]_0\,
      I3 => state(3),
      I4 => state(0),
      I5 => state(1),
      O => \state[3]_i_2_n_0\
    );
\state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0000300000"
    )
        port map (
      I0 => \state[4]_i_6_n_0\,
      I1 => \state[3]_i_5_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(4),
      I5 => state(3),
      O => \state[3]_i_3_n_0\
    );
\state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(25),
      I1 => p_0_in(24),
      O => \state[3]_i_4_n_0\
    );
\state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_2_in,
      I1 => state(0),
      O => \state[3]_i_5_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000D500"
    )
        port map (
      I0 => \state[4]_i_2_n_0\,
      I1 => state(3),
      I2 => \state[4]_i_3_n_0\,
      I3 => state(2),
      I4 => state(4),
      I5 => \state[4]_i_4_n_0\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBBB000FBBBB"
    )
        port map (
      I0 => state(3),
      I1 => \state_reg[3]_0\,
      I2 => p_0_in(25),
      I3 => p_0_in(24),
      I4 => state(0),
      I5 => state(1),
      O => \state[4]_i_2_n_0\
    );
\state[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => \state[4]_i_5_n_0\,
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50500FBA001005AA"
    )
        port map (
      I0 => state(4),
      I1 => \state[4]_i_6_n_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      I5 => state(0),
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => p_0_in(24),
      I1 => p_0_in(25),
      I2 => \state[4]_i_7_n_0\,
      I3 => \tmpexp_reg_n_0_[4]\,
      I4 => \tmpexp_reg_n_0_[6]\,
      I5 => \tmpexp_reg_n_0_[2]\,
      O => \state[4]_i_5_n_0\
    );
\state[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => state(0),
      I1 => p_0_in(25),
      I2 => p_0_in(24),
      O => \state[4]_i_6_n_0\
    );
\state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_2_in,
      I1 => \tmpexp_reg_n_0_[7]\,
      I2 => \tmpexp_reg_n_0_[3]\,
      I3 => \tmpexp_reg_n_0_[5]\,
      I4 => \tmpexp_reg_n_0_[1]\,
      I5 => \tmpexp_reg_n_0_[0]\,
      O => \state[4]_i_7_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state[0]_i_1_n_0\,
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state[1]_i_1_n_0\,
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state[2]_i_1_n_0\,
      Q => state(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state[3]_i_1_n_0\,
      Q => state(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state[4]_i_1_n_0\,
      Q => state(4)
    );
\tmpexp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF00F040E0"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(0),
      I2 => \state[3]_i_1_n_0\,
      I3 => \tmpexp_reg_n_0_[0]\,
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[0]_i_1_n_0\
    );
\tmpexp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(1),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(1),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[1]_i_1_n_0\
    );
\tmpexp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(2),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(2),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[2]_i_1_n_0\
    );
\tmpexp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(3),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(3),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[3]_i_1_n_0\
    );
\tmpexp[3]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(26),
      I1 => op2_IBUF(26),
      O => \tmpexp[3]_i_3__0_n_0\
    );
\tmpexp[3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(25),
      I1 => op2_IBUF(25),
      O => \tmpexp[3]_i_4__0_n_0\
    );
\tmpexp[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(24),
      I1 => op2_IBUF(24),
      O => \tmpexp[3]_i_5__0_n_0\
    );
\tmpexp[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(23),
      I1 => op2_IBUF(23),
      O => \tmpexp[3]_i_6_n_0\
    );
\tmpexp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(4),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(4),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[4]_i_1_n_0\
    );
\tmpexp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(5),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(5),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[5]_i_1_n_0\
    );
\tmpexp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(6),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(6),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[6]_i_1_n_0\
    );
\tmpexp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(7),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(7),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[7]_i_1_n_0\
    );
\tmpexp[7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => op2_IBUF(30),
      I1 => op1_IBUF(30),
      O => \tmpexp[7]_i_3__0_n_0\
    );
\tmpexp[7]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(29),
      I1 => op2_IBUF(29),
      O => \tmpexp[7]_i_4__0_n_0\
    );
\tmpexp[7]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(28),
      I1 => op2_IBUF(28),
      O => \tmpexp[7]_i_5__0_n_0\
    );
\tmpexp[7]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(27),
      I1 => op2_IBUF(27),
      O => \tmpexp[7]_i_6__0_n_0\
    );
\tmpexp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78207801"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \state[1]_i_1_n_0\,
      I3 => \state[3]_i_1_n_0\,
      I4 => \state[4]_i_1_n_0\,
      O => \tmpexp[8]_i_1_n_0\
    );
\tmpexp[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F000E040"
    )
        port map (
      I0 => \state[0]_i_1_n_0\,
      I1 => data0(8),
      I2 => \state[3]_i_1_n_0\,
      I3 => data1(8),
      I4 => \state[2]_i_1_n_0\,
      I5 => \state[4]_i_1_n_0\,
      O => \tmpexp[8]_i_2_n_0\
    );
\tmpexp[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => op2_IBUF(30),
      O => \tmpexp[8]_i_4_n_0\
    );
\tmpexp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[0]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[0]\
    );
\tmpexp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[1]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[1]\
    );
\tmpexp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[2]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[2]\
    );
\tmpexp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[3]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[3]\
    );
\tmpexp_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmpexp_reg[3]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpexp_reg[3]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => op1_IBUF(26 downto 23),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \tmpexp[3]_i_3__0_n_0\,
      S(2) => \tmpexp[3]_i_4__0_n_0\,
      S(1) => \tmpexp[3]_i_5__0_n_0\,
      S(0) => \tmpexp[3]_i_6_n_0\
    );
\tmpexp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[4]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[4]\
    );
\tmpexp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[5]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[5]\
    );
\tmpexp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[6]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[6]\
    );
\tmpexp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[7]_i_1_n_0\,
      Q => \tmpexp_reg_n_0_[7]\
    );
\tmpexp_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpexp_reg[3]_i_2_n_0\,
      CO(3) => \tmpexp_reg[7]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpexp_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => op1_IBUF(30 downto 27),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \tmpexp[7]_i_3__0_n_0\,
      S(2) => \tmpexp[7]_i_4__0_n_0\,
      S(1) => \tmpexp[7]_i_5__0_n_0\,
      S(0) => \tmpexp[7]_i_6__0_n_0\
    );
\tmpexp_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tmpexp[8]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tmpexp[8]_i_2_n_0\,
      Q => p_2_in
    );
\tmpexp_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpexp_reg[7]_i_2_n_0\,
      CO(3 downto 0) => \NLW_tmpexp_reg[8]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_tmpexp_reg[8]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(8),
      S(3 downto 1) => B"000",
      S(0) => \tmpexp[8]_i_4_n_0\
    );
tmpm0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 24) => B"000000",
      A(23) => \m2_reg_n_0_[23]\,
      A(22) => \m2_reg_n_0_[22]\,
      A(21) => \m2_reg_n_0_[21]\,
      A(20) => \m2_reg_n_0_[20]\,
      A(19) => \m2_reg_n_0_[19]\,
      A(18) => \m2_reg_n_0_[18]\,
      A(17) => \m2_reg_n_0_[17]\,
      A(16) => \m2_reg_n_0_[16]\,
      A(15) => \m2_reg_n_0_[15]\,
      A(14) => \m2_reg_n_0_[14]\,
      A(13) => \m2_reg_n_0_[13]\,
      A(12) => \m2_reg_n_0_[12]\,
      A(11) => \m2_reg_n_0_[11]\,
      A(10) => \m2_reg_n_0_[10]\,
      A(9) => \m2_reg_n_0_[9]\,
      A(8) => \m2_reg_n_0_[8]\,
      A(7) => \m2_reg_n_0_[7]\,
      A(6) => \m2_reg_n_0_[6]\,
      A(5) => \m2_reg_n_0_[5]\,
      A(4) => \m2_reg_n_0_[4]\,
      A(3) => \m2_reg_n_0_[3]\,
      A(2) => \m2_reg_n_0_[2]\,
      A(1) => \m2_reg_n_0_[1]\,
      A(0) => \m2_reg_n_0_[0]\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmpm0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => \m1_reg_n_0_[16]\,
      B(15) => \m1_reg_n_0_[15]\,
      B(14) => \m1_reg_n_0_[14]\,
      B(13) => \m1_reg_n_0_[13]\,
      B(12) => \m1_reg_n_0_[12]\,
      B(11) => \m1_reg_n_0_[11]\,
      B(10) => \m1_reg_n_0_[10]\,
      B(9) => \m1_reg_n_0_[9]\,
      B(8) => \m1_reg_n_0_[8]\,
      B(7) => \m1_reg_n_0_[7]\,
      B(6) => \m1_reg_n_0_[6]\,
      B(5) => \m1_reg_n_0_[5]\,
      B(4) => \m1_reg_n_0_[4]\,
      B(3) => \m1_reg_n_0_[3]\,
      B(2) => \m1_reg_n_0_[2]\,
      B(1) => \m1_reg_n_0_[1]\,
      B(0) => \m1_reg_n_0_[0]\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmpm0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmpm0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmpm0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmpm0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_tmpm0_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_tmpm0_P_UNCONNECTED(47 downto 17),
      P(16) => tmpm0_n_89,
      P(15) => tmpm0_n_90,
      P(14) => tmpm0_n_91,
      P(13) => tmpm0_n_92,
      P(12) => tmpm0_n_93,
      P(11) => tmpm0_n_94,
      P(10) => tmpm0_n_95,
      P(9) => tmpm0_n_96,
      P(8) => tmpm0_n_97,
      P(7) => tmpm0_n_98,
      P(6) => tmpm0_n_99,
      P(5) => tmpm0_n_100,
      P(4) => tmpm0_n_101,
      P(3) => tmpm0_n_102,
      P(2) => tmpm0_n_103,
      P(1) => tmpm0_n_104,
      P(0) => tmpm0_n_105,
      PATTERNBDETECT => NLW_tmpm0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmpm0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => tmpm0_n_106,
      PCOUT(46) => tmpm0_n_107,
      PCOUT(45) => tmpm0_n_108,
      PCOUT(44) => tmpm0_n_109,
      PCOUT(43) => tmpm0_n_110,
      PCOUT(42) => tmpm0_n_111,
      PCOUT(41) => tmpm0_n_112,
      PCOUT(40) => tmpm0_n_113,
      PCOUT(39) => tmpm0_n_114,
      PCOUT(38) => tmpm0_n_115,
      PCOUT(37) => tmpm0_n_116,
      PCOUT(36) => tmpm0_n_117,
      PCOUT(35) => tmpm0_n_118,
      PCOUT(34) => tmpm0_n_119,
      PCOUT(33) => tmpm0_n_120,
      PCOUT(32) => tmpm0_n_121,
      PCOUT(31) => tmpm0_n_122,
      PCOUT(30) => tmpm0_n_123,
      PCOUT(29) => tmpm0_n_124,
      PCOUT(28) => tmpm0_n_125,
      PCOUT(27) => tmpm0_n_126,
      PCOUT(26) => tmpm0_n_127,
      PCOUT(25) => tmpm0_n_128,
      PCOUT(24) => tmpm0_n_129,
      PCOUT(23) => tmpm0_n_130,
      PCOUT(22) => tmpm0_n_131,
      PCOUT(21) => tmpm0_n_132,
      PCOUT(20) => tmpm0_n_133,
      PCOUT(19) => tmpm0_n_134,
      PCOUT(18) => tmpm0_n_135,
      PCOUT(17) => tmpm0_n_136,
      PCOUT(16) => tmpm0_n_137,
      PCOUT(15) => tmpm0_n_138,
      PCOUT(14) => tmpm0_n_139,
      PCOUT(13) => tmpm0_n_140,
      PCOUT(12) => tmpm0_n_141,
      PCOUT(11) => tmpm0_n_142,
      PCOUT(10) => tmpm0_n_143,
      PCOUT(9) => tmpm0_n_144,
      PCOUT(8) => tmpm0_n_145,
      PCOUT(7) => tmpm0_n_146,
      PCOUT(6) => tmpm0_n_147,
      PCOUT(5) => tmpm0_n_148,
      PCOUT(4) => tmpm0_n_149,
      PCOUT(3) => tmpm0_n_150,
      PCOUT(2) => tmpm0_n_151,
      PCOUT(1) => tmpm0_n_152,
      PCOUT(0) => tmpm0_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmpm0_UNDERFLOW_UNCONNECTED
    );
\tmpm0__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 24) => B"000000",
      A(23) => \m2_reg_n_0_[23]\,
      A(22) => \m2_reg_n_0_[22]\,
      A(21) => \m2_reg_n_0_[21]\,
      A(20) => \m2_reg_n_0_[20]\,
      A(19) => \m2_reg_n_0_[19]\,
      A(18) => \m2_reg_n_0_[18]\,
      A(17) => \m2_reg_n_0_[17]\,
      A(16) => \m2_reg_n_0_[16]\,
      A(15) => \m2_reg_n_0_[15]\,
      A(14) => \m2_reg_n_0_[14]\,
      A(13) => \m2_reg_n_0_[13]\,
      A(12) => \m2_reg_n_0_[12]\,
      A(11) => \m2_reg_n_0_[11]\,
      A(10) => \m2_reg_n_0_[10]\,
      A(9) => \m2_reg_n_0_[9]\,
      A(8) => \m2_reg_n_0_[8]\,
      A(7) => \m2_reg_n_0_[7]\,
      A(6) => \m2_reg_n_0_[6]\,
      A(5) => \m2_reg_n_0_[5]\,
      A(4) => \m2_reg_n_0_[4]\,
      A(3) => \m2_reg_n_0_[3]\,
      A(2) => \m2_reg_n_0_[2]\,
      A(1) => \m2_reg_n_0_[1]\,
      A(0) => \m2_reg_n_0_[0]\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_tmpm0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 7) => B"00000000000",
      B(6) => \m2_reg_n_0_[23]\,
      B(5) => \m1_reg_n_0_[22]\,
      B(4) => \m1_reg_n_0_[21]\,
      B(3) => \m1_reg_n_0_[20]\,
      B(2) => \m1_reg_n_0_[19]\,
      B(1) => \m1_reg_n_0_[18]\,
      B(0) => \m1_reg_n_0_[17]\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_tmpm0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_tmpm0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_tmpm0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_tmpm0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_tmpm0__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 31) => \NLW_tmpm0__0_P_UNCONNECTED\(47 downto 31),
      P(30) => \tmpm0__0_n_75\,
      P(29) => \tmpm0__0_n_76\,
      P(28) => \tmpm0__0_n_77\,
      P(27) => \tmpm0__0_n_78\,
      P(26) => \tmpm0__0_n_79\,
      P(25) => \tmpm0__0_n_80\,
      P(24) => \tmpm0__0_n_81\,
      P(23) => \tmpm0__0_n_82\,
      P(22) => \tmpm0__0_n_83\,
      P(21) => \tmpm0__0_n_84\,
      P(20) => \tmpm0__0_n_85\,
      P(19) => \tmpm0__0_n_86\,
      P(18) => \tmpm0__0_n_87\,
      P(17) => \tmpm0__0_n_88\,
      P(16) => \tmpm0__0_n_89\,
      P(15) => \tmpm0__0_n_90\,
      P(14) => \tmpm0__0_n_91\,
      P(13) => \tmpm0__0_n_92\,
      P(12) => \tmpm0__0_n_93\,
      P(11) => \tmpm0__0_n_94\,
      P(10) => \tmpm0__0_n_95\,
      P(9) => \tmpm0__0_n_96\,
      P(8) => \tmpm0__0_n_97\,
      P(7) => \tmpm0__0_n_98\,
      P(6) => \tmpm0__0_n_99\,
      P(5) => \tmpm0__0_n_100\,
      P(4) => \tmpm0__0_n_101\,
      P(3) => \tmpm0__0_n_102\,
      P(2) => \tmpm0__0_n_103\,
      P(1) => \tmpm0__0_n_104\,
      P(0) => \tmpm0__0_n_105\,
      PATTERNBDETECT => \NLW_tmpm0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_tmpm0__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => tmpm0_n_106,
      PCIN(46) => tmpm0_n_107,
      PCIN(45) => tmpm0_n_108,
      PCIN(44) => tmpm0_n_109,
      PCIN(43) => tmpm0_n_110,
      PCIN(42) => tmpm0_n_111,
      PCIN(41) => tmpm0_n_112,
      PCIN(40) => tmpm0_n_113,
      PCIN(39) => tmpm0_n_114,
      PCIN(38) => tmpm0_n_115,
      PCIN(37) => tmpm0_n_116,
      PCIN(36) => tmpm0_n_117,
      PCIN(35) => tmpm0_n_118,
      PCIN(34) => tmpm0_n_119,
      PCIN(33) => tmpm0_n_120,
      PCIN(32) => tmpm0_n_121,
      PCIN(31) => tmpm0_n_122,
      PCIN(30) => tmpm0_n_123,
      PCIN(29) => tmpm0_n_124,
      PCIN(28) => tmpm0_n_125,
      PCIN(27) => tmpm0_n_126,
      PCIN(26) => tmpm0_n_127,
      PCIN(25) => tmpm0_n_128,
      PCIN(24) => tmpm0_n_129,
      PCIN(23) => tmpm0_n_130,
      PCIN(22) => tmpm0_n_131,
      PCIN(21) => tmpm0_n_132,
      PCIN(20) => tmpm0_n_133,
      PCIN(19) => tmpm0_n_134,
      PCIN(18) => tmpm0_n_135,
      PCIN(17) => tmpm0_n_136,
      PCIN(16) => tmpm0_n_137,
      PCIN(15) => tmpm0_n_138,
      PCIN(14) => tmpm0_n_139,
      PCIN(13) => tmpm0_n_140,
      PCIN(12) => tmpm0_n_141,
      PCIN(11) => tmpm0_n_142,
      PCIN(10) => tmpm0_n_143,
      PCIN(9) => tmpm0_n_144,
      PCIN(8) => tmpm0_n_145,
      PCIN(7) => tmpm0_n_146,
      PCIN(6) => tmpm0_n_147,
      PCIN(5) => tmpm0_n_148,
      PCIN(4) => tmpm0_n_149,
      PCIN(3) => tmpm0_n_150,
      PCIN(2) => tmpm0_n_151,
      PCIN(1) => tmpm0_n_152,
      PCIN(0) => tmpm0_n_153,
      PCOUT(47 downto 0) => \NLW_tmpm0__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_tmpm0__0_UNDERFLOW_UNCONNECTED\
    );
\tmpm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20222000"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[1]\,
      I3 => \state[0]_i_1_n_0\,
      I4 => tmpm0_n_105,
      O => \tmpm[0]_i_1_n_0\
    );
\tmpm[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[9]\,
      I3 => tmpm0_n_95,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[11]\,
      O => \tmpm[10]_i_1_n_0\
    );
\tmpm[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[10]\,
      I3 => tmpm0_n_94,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[12]\,
      O => \tmpm[11]_i_1_n_0\
    );
\tmpm[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[11]\,
      I3 => tmpm0_n_93,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[13]\,
      O => \tmpm[12]_i_1_n_0\
    );
\tmpm[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[12]\,
      I3 => tmpm0_n_92,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[14]\,
      O => \tmpm[13]_i_1_n_0\
    );
\tmpm[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[13]\,
      I3 => tmpm0_n_91,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[15]\,
      O => \tmpm[14]_i_1_n_0\
    );
\tmpm[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[14]\,
      I3 => tmpm0_n_90,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[16]\,
      O => \tmpm[15]_i_1_n_0\
    );
\tmpm[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[15]\,
      I3 => tmpm0_n_89,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[17]\,
      O => \tmpm[16]_i_1_n_0\
    );
\tmpm[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[16]\,
      I3 => \tmpm0__0_n_105\,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[18]\,
      O => \tmpm[17]_i_1_n_0\
    );
\tmpm[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[17]\,
      I3 => \tmpm0__0_n_104\,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[19]\,
      O => \tmpm[18]_i_1_n_0\
    );
\tmpm[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[18]\,
      I3 => \tmpm0__0_n_103\,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[20]\,
      O => \tmpm[19]_i_1_n_0\
    );
\tmpm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[0]\,
      I3 => tmpm0_n_104,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[2]\,
      O => \tmpm[1]_i_1_n_0\
    );
\tmpm[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[19]\,
      I3 => \tmpm0__0_n_102\,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[21]\,
      O => \tmpm[20]_i_1_n_0\
    );
\tmpm[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[20]\,
      I3 => \tmpm0__0_n_101\,
      I4 => \state[0]_i_1_n_0\,
      I5 => p_0_in(0),
      O => \tmpm[21]_i_1_n_0\
    );
\tmpm[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFA300A000A300"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[22]_i_2_n_0\,
      O => \tmpm[22]_i_1_n_0\
    );
\tmpm[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tmpm_reg_n_0_[21]\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_100\,
      O => \tmpm[22]_i_2_n_0\
    );
\tmpm[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \tmpm0__1\(1),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[23]_i_2_n_0\,
      O => \tmpm[23]_i_1_n_0\
    );
\tmpm[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_99\,
      O => \tmpm[23]_i_2_n_0\
    );
\tmpm[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \tmpm0__1\(2),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[24]_i_2_n_0\,
      O => \tmpm[24]_i_1_n_0\
    );
\tmpm[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_98\,
      O => \tmpm[24]_i_2_n_0\
    );
\tmpm[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \tmpm0__1\(3),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[25]_i_2_n_0\,
      O => \tmpm[25]_i_1_n_0\
    );
\tmpm[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_97\,
      O => \tmpm[25]_i_2_n_0\
    );
\tmpm[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \tmpm0__1\(4),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[26]_i_3_n_0\,
      O => \tmpm[26]_i_1_n_0\
    );
\tmpm[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_96\,
      O => \tmpm[26]_i_3_n_0\
    );
\tmpm[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \tmpm0__1\(5),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[27]_i_2_n_0\,
      O => \tmpm[27]_i_1_n_0\
    );
\tmpm[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_95\,
      O => \tmpm[27]_i_2_n_0\
    );
\tmpm[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \tmpm0__1\(6),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[28]_i_2_n_0\,
      O => \tmpm[28]_i_1_n_0\
    );
\tmpm[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_94\,
      O => \tmpm[28]_i_2_n_0\
    );
\tmpm[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \tmpm0__1\(7),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[29]_i_2_n_0\,
      O => \tmpm[29]_i_1_n_0\
    );
\tmpm[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(6),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_93\,
      O => \tmpm[29]_i_2_n_0\
    );
\tmpm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[1]\,
      I3 => tmpm0_n_103,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[3]\,
      O => \tmpm[2]_i_1_n_0\
    );
\tmpm[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \tmpm0__1\(8),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[30]_i_3_n_0\,
      O => \tmpm[30]_i_1_n_0\
    );
\tmpm[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_92\,
      O => \tmpm[30]_i_3_n_0\
    );
\tmpm[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \tmpm0__1\(9),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[31]_i_2_n_0\,
      O => \tmpm[31]_i_1_n_0\
    );
\tmpm[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(8),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_91\,
      O => \tmpm[31]_i_2_n_0\
    );
\tmpm[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \tmpm0__1\(10),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[32]_i_2_n_0\,
      O => \tmpm[32]_i_1_n_0\
    );
\tmpm[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_90\,
      O => \tmpm[32]_i_2_n_0\
    );
\tmpm[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \tmpm0__1\(11),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[33]_i_2_n_0\,
      O => \tmpm[33]_i_1_n_0\
    );
\tmpm[33]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_89\,
      O => \tmpm[33]_i_2_n_0\
    );
\tmpm[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \tmpm0__1\(12),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[34]_i_3_n_0\,
      O => \tmpm[34]_i_1_n_0\
    );
\tmpm[34]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_88\,
      O => \tmpm[34]_i_3_n_0\
    );
\tmpm[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \tmpm0__1\(13),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[35]_i_2_n_0\,
      O => \tmpm[35]_i_1_n_0\
    );
\tmpm[35]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_87\,
      O => \tmpm[35]_i_2_n_0\
    );
\tmpm[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \tmpm0__1\(14),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[36]_i_2_n_0\,
      O => \tmpm[36]_i_1_n_0\
    );
\tmpm[36]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_86\,
      O => \tmpm[36]_i_2_n_0\
    );
\tmpm[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \tmpm0__1\(15),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[37]_i_2_n_0\,
      O => \tmpm[37]_i_1_n_0\
    );
\tmpm[37]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_85\,
      O => \tmpm[37]_i_2_n_0\
    );
\tmpm[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \tmpm0__1\(16),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[38]_i_3_n_0\,
      O => \tmpm[38]_i_1_n_0\
    );
\tmpm[38]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_84\,
      O => \tmpm[38]_i_3_n_0\
    );
\tmpm[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \tmpm0__1\(17),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[39]_i_2_n_0\,
      O => \tmpm[39]_i_1_n_0\
    );
\tmpm[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_83\,
      O => \tmpm[39]_i_2_n_0\
    );
\tmpm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[2]\,
      I3 => tmpm0_n_102,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[4]\,
      O => \tmpm[3]_i_1_n_0\
    );
\tmpm[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \tmpm0__1\(18),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[40]_i_2_n_0\,
      O => \tmpm[40]_i_1_n_0\
    );
\tmpm[40]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_82\,
      O => \tmpm[40]_i_2_n_0\
    );
\tmpm[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \tmpm0__1\(19),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[41]_i_2_n_0\,
      O => \tmpm[41]_i_1_n_0\
    );
\tmpm[41]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_81\,
      O => \tmpm[41]_i_2_n_0\
    );
\tmpm[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(21),
      I1 => \tmpm0__1\(20),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[42]_i_3_n_0\,
      O => \tmpm[42]_i_1_n_0\
    );
\tmpm[42]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_80\,
      O => \tmpm[42]_i_3_n_0\
    );
\tmpm[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(22),
      I1 => \tmpm0__1\(21),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[43]_i_2_n_0\,
      O => \tmpm[43]_i_1_n_0\
    );
\tmpm[43]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_79\,
      O => \tmpm[43]_i_2_n_0\
    );
\tmpm[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(23),
      I1 => \tmpm0__1\(22),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[44]_i_2_n_0\,
      O => \tmpm[44]_i_1_n_0\
    );
\tmpm[44]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(21),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_78\,
      O => \tmpm[44]_i_2_n_0\
    );
\tmpm[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(24),
      I1 => \tmpm0__1\(23),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[45]_i_2_n_0\,
      O => \tmpm[45]_i_1_n_0\
    );
\tmpm[45]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(22),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_77\,
      O => \tmpm[45]_i_2_n_0\
    );
\tmpm[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFAC00A000AC00"
    )
        port map (
      I0 => p_0_in(25),
      I1 => \tmpm0__1\(24),
      I2 => \state[0]_i_1_n_0\,
      I3 => \state[1]_i_1_n_0\,
      I4 => \state[3]_i_1_n_0\,
      I5 => \tmpm[46]_i_3_n_0\,
      O => \tmpm[46]_i_1_n_0\
    );
\tmpm[46]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(23),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm0__0_n_76\,
      O => \tmpm[46]_i_3_n_0\
    );
\tmpm[47]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008B8888"
    )
        port map (
      I0 => p_0_in(24),
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm[47]_i_2_n_0\,
      I3 => \state[0]_i_1_n_0\,
      I4 => \state[1]_i_1_n_0\,
      O => \tmpm[47]_i_1__0_n_0\
    );
\tmpm[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \tmpm0__0_n_75\,
      I1 => \state[3]_i_1_n_0\,
      I2 => \tmpm0__1\(25),
      O => \tmpm[47]_i_2_n_0\
    );
\tmpm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[3]\,
      I3 => tmpm0_n_101,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[5]\,
      O => \tmpm[4]_i_1_n_0\
    );
\tmpm[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[4]\,
      I3 => tmpm0_n_100,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[6]\,
      O => \tmpm[5]_i_1_n_0\
    );
\tmpm[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[5]\,
      I3 => tmpm0_n_99,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[7]\,
      O => \tmpm[6]_i_1_n_0\
    );
\tmpm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[6]\,
      I3 => tmpm0_n_98,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[8]\,
      O => \tmpm[7]_i_1_n_0\
    );
\tmpm[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[7]\,
      I3 => tmpm0_n_97,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[9]\,
      O => \tmpm[8]_i_1_n_0\
    );
\tmpm[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2C0C0C0E2C0"
    )
        port map (
      I0 => \state[1]_i_1_n_0\,
      I1 => \state[2]_i_1_n_0\,
      I2 => \tmpm_reg_n_0_[8]\,
      I3 => tmpm0_n_96,
      I4 => \state[0]_i_1_n_0\,
      I5 => \tmpm_reg_n_0_[10]\,
      O => \tmpm[9]_i_1_n_0\
    );
\tmpm_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[0]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[0]\
    );
\tmpm_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[10]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[10]\
    );
\tmpm_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[11]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[11]\
    );
\tmpm_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[12]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[12]\
    );
\tmpm_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[13]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[13]\
    );
\tmpm_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[14]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[14]\
    );
\tmpm_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[15]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[15]\
    );
\tmpm_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[16]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[16]\
    );
\tmpm_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[17]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[17]\
    );
\tmpm_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[18]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[18]\
    );
\tmpm_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[19]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[19]\
    );
\tmpm_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[1]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[1]\
    );
\tmpm_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[20]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[20]\
    );
\tmpm_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[21]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[21]\
    );
\tmpm_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[22]_i_1_n_0\,
      Q => p_0_in(0)
    );
\tmpm_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[23]_i_1_n_0\,
      Q => p_0_in(1)
    );
\tmpm_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[24]_i_1_n_0\,
      Q => p_0_in(2)
    );
\tmpm_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[25]_i_1_n_0\,
      Q => p_0_in(3)
    );
\tmpm_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[26]_i_1_n_0\,
      Q => p_0_in(4)
    );
\tmpm_reg[26]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmpm_reg[26]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpm_reg[26]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \tmpm0__1\(4 downto 1),
      S(3 downto 0) => p_0_in(4 downto 1)
    );
\tmpm_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[27]_i_1_n_0\,
      Q => p_0_in(5)
    );
\tmpm_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[28]_i_1_n_0\,
      Q => p_0_in(6)
    );
\tmpm_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[29]_i_1_n_0\,
      Q => p_0_in(7)
    );
\tmpm_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[2]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[2]\
    );
\tmpm_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[30]_i_1_n_0\,
      Q => p_0_in(8)
    );
\tmpm_reg[30]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpm_reg[26]_i_2_n_0\,
      CO(3) => \tmpm_reg[30]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpm_reg[30]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \tmpm0__1\(8 downto 5),
      S(3 downto 0) => p_0_in(8 downto 5)
    );
\tmpm_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[31]_i_1_n_0\,
      Q => p_0_in(9)
    );
\tmpm_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[32]_i_1_n_0\,
      Q => p_0_in(10)
    );
\tmpm_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[33]_i_1_n_0\,
      Q => p_0_in(11)
    );
\tmpm_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[34]_i_1_n_0\,
      Q => p_0_in(12)
    );
\tmpm_reg[34]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpm_reg[30]_i_2_n_0\,
      CO(3) => \tmpm_reg[34]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpm_reg[34]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \tmpm0__1\(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
\tmpm_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[35]_i_1_n_0\,
      Q => p_0_in(13)
    );
\tmpm_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[36]_i_1_n_0\,
      Q => p_0_in(14)
    );
\tmpm_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[37]_i_1_n_0\,
      Q => p_0_in(15)
    );
\tmpm_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[38]_i_1_n_0\,
      Q => p_0_in(16)
    );
\tmpm_reg[38]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpm_reg[34]_i_2_n_0\,
      CO(3) => \tmpm_reg[38]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpm_reg[38]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \tmpm0__1\(16 downto 13),
      S(3 downto 0) => p_0_in(16 downto 13)
    );
\tmpm_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[39]_i_1_n_0\,
      Q => p_0_in(17)
    );
\tmpm_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[3]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[3]\
    );
\tmpm_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[40]_i_1_n_0\,
      Q => p_0_in(18)
    );
\tmpm_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[41]_i_1_n_0\,
      Q => p_0_in(19)
    );
\tmpm_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[42]_i_1_n_0\,
      Q => p_0_in(20)
    );
\tmpm_reg[42]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpm_reg[38]_i_2_n_0\,
      CO(3) => \tmpm_reg[42]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpm_reg[42]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \tmpm0__1\(20 downto 17),
      S(3 downto 0) => p_0_in(20 downto 17)
    );
\tmpm_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[43]_i_1_n_0\,
      Q => p_0_in(21)
    );
\tmpm_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[44]_i_1_n_0\,
      Q => p_0_in(22)
    );
\tmpm_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[45]_i_1_n_0\,
      Q => p_0_in(23)
    );
\tmpm_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[46]_i_1_n_0\,
      Q => p_0_in(24)
    );
\tmpm_reg[46]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpm_reg[42]_i_2_n_0\,
      CO(3) => \tmpm_reg[46]_i_2_n_0\,
      CO(2 downto 0) => \NLW_tmpm_reg[46]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \tmpm0__1\(24 downto 21),
      S(3 downto 0) => p_0_in(24 downto 21)
    );
\tmpm_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b22_n_0,
      CLR => reset_IBUF,
      D => \tmpm[47]_i_1__0_n_0\,
      Q => p_0_in(25)
    );
\tmpm_reg[47]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpm_reg[46]_i_2_n_0\,
      CO(3 downto 0) => \NLW_tmpm_reg[47]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_tmpm_reg[47]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \tmpm0__1\(25),
      S(3 downto 1) => B"000",
      S(0) => p_0_in(25)
    );
\tmpm_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[4]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[4]\
    );
\tmpm_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[5]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[5]\
    );
\tmpm_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[6]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[6]\
    );
\tmpm_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[7]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[7]\
    );
\tmpm_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[8]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[8]\
    );
\tmpm_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => g0_b21_n_0,
      CLR => reset_IBUF,
      D => \tmpm[9]_i_1_n_0\,
      Q => \tmpm_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mul_ieee754_vhdl is
  port (
    res_vhdl_rdy : out STD_LOGIC;
    \op1[24]\ : out STD_LOGIC;
    \op2[23]\ : out STD_LOGIC;
    \op2[25]\ : out STD_LOGIC;
    \op1[25]\ : out STD_LOGIC;
    \op1[31]\ : out STD_LOGIC;
    g0_b0_i_28_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    next_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    \state[0]_i_2_0\ : in STD_LOGIC;
    \state[0]_i_2_1\ : in STD_LOGIC;
    op1_IBUF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    g0_b0_i_4_0 : in STD_LOGIC;
    g0_b0_i_4_1 : in STD_LOGIC;
    op2_IBUF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inrdy_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \res_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \res_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_reg[31]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    res_verilog_rdy : in STD_LOGIC
  );
end mul_ieee754_vhdl;

architecture STRUCTURE of mul_ieee754_vhdl is
  signal L : STD_LOGIC_VECTOR ( 47 downto 22 );
  signal data0 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal data1 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal exp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal exp0 : STD_LOGIC;
  signal \exp[0]_i_1_n_0\ : STD_LOGIC;
  signal \exp[1]_i_1_n_0\ : STD_LOGIC;
  signal \exp[2]_i_1_n_0\ : STD_LOGIC;
  signal \exp[3]_i_1_n_0\ : STD_LOGIC;
  signal \exp[4]_i_1_n_0\ : STD_LOGIC;
  signal \exp[5]_i_1_n_0\ : STD_LOGIC;
  signal \exp[6]_i_1_n_0\ : STD_LOGIC;
  signal \exp[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \g0_b0__0__0_n_0\ : STD_LOGIC;
  signal g0_b0_i_10_n_0 : STD_LOGIC;
  signal g0_b0_i_11_n_0 : STD_LOGIC;
  signal g0_b0_i_12_n_0 : STD_LOGIC;
  signal g0_b0_i_13_n_0 : STD_LOGIC;
  signal g0_b0_i_14_n_0 : STD_LOGIC;
  signal g0_b0_i_15_n_0 : STD_LOGIC;
  signal g0_b0_i_16_n_0 : STD_LOGIC;
  signal g0_b0_i_17_n_0 : STD_LOGIC;
  signal g0_b0_i_18_n_0 : STD_LOGIC;
  signal g0_b0_i_19_n_0 : STD_LOGIC;
  signal g0_b0_i_20_n_0 : STD_LOGIC;
  signal g0_b0_i_21_n_0 : STD_LOGIC;
  signal g0_b0_i_22_n_0 : STD_LOGIC;
  signal g0_b0_i_23_n_0 : STD_LOGIC;
  signal g0_b0_i_24_n_0 : STD_LOGIC;
  signal g0_b0_i_25_n_0 : STD_LOGIC;
  signal g0_b0_i_26_n_0 : STD_LOGIC;
  signal g0_b0_i_27_n_0 : STD_LOGIC;
  signal \^g0_b0_i_28_0\ : STD_LOGIC;
  signal g0_b0_i_28_n_0 : STD_LOGIC;
  signal g0_b0_i_29_n_0 : STD_LOGIC;
  signal g0_b0_i_30_n_0 : STD_LOGIC;
  signal g0_b0_i_31_n_0 : STD_LOGIC;
  signal g0_b0_i_36_n_0 : STD_LOGIC;
  signal g0_b0_i_37_n_0 : STD_LOGIC;
  signal g0_b0_i_38_n_0 : STD_LOGIC;
  signal g0_b0_i_39_n_0 : STD_LOGIC;
  signal g0_b0_i_40_n_0 : STD_LOGIC;
  signal g0_b0_i_41_n_0 : STD_LOGIC;
  signal g0_b0_i_42_n_0 : STD_LOGIC;
  signal g0_b0_i_43_n_0 : STD_LOGIC;
  signal g0_b0_i_44_n_0 : STD_LOGIC;
  signal g0_b0_i_45_n_0 : STD_LOGIC;
  signal g0_b0_i_46_n_0 : STD_LOGIC;
  signal g0_b0_i_47_n_0 : STD_LOGIC;
  signal g0_b0_i_48_n_0 : STD_LOGIC;
  signal g0_b0_i_49_n_0 : STD_LOGIC;
  signal g0_b0_i_50_n_0 : STD_LOGIC;
  signal g0_b0_i_51_n_0 : STD_LOGIC;
  signal g0_b0_i_5_n_0 : STD_LOGIC;
  signal g0_b0_i_6_n_0 : STD_LOGIC;
  signal g0_b0_i_7_n_0 : STD_LOGIC;
  signal g0_b0_i_9_n_0 : STD_LOGIC;
  signal m : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal m0 : STD_LOGIC;
  signal m1 : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \m1[22]_i_1_n_0\ : STD_LOGIC;
  signal \m1[22]_i_2__0_n_0\ : STD_LOGIC;
  signal \m2[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \m2_reg_n_0_[0]\ : STD_LOGIC;
  signal \m2_reg_n_0_[10]\ : STD_LOGIC;
  signal \m2_reg_n_0_[11]\ : STD_LOGIC;
  signal \m2_reg_n_0_[12]\ : STD_LOGIC;
  signal \m2_reg_n_0_[13]\ : STD_LOGIC;
  signal \m2_reg_n_0_[14]\ : STD_LOGIC;
  signal \m2_reg_n_0_[15]\ : STD_LOGIC;
  signal \m2_reg_n_0_[16]\ : STD_LOGIC;
  signal \m2_reg_n_0_[17]\ : STD_LOGIC;
  signal \m2_reg_n_0_[18]\ : STD_LOGIC;
  signal \m2_reg_n_0_[19]\ : STD_LOGIC;
  signal \m2_reg_n_0_[1]\ : STD_LOGIC;
  signal \m2_reg_n_0_[20]\ : STD_LOGIC;
  signal \m2_reg_n_0_[21]\ : STD_LOGIC;
  signal \m2_reg_n_0_[22]\ : STD_LOGIC;
  signal \m2_reg_n_0_[23]\ : STD_LOGIC;
  signal \m2_reg_n_0_[2]\ : STD_LOGIC;
  signal \m2_reg_n_0_[3]\ : STD_LOGIC;
  signal \m2_reg_n_0_[4]\ : STD_LOGIC;
  signal \m2_reg_n_0_[5]\ : STD_LOGIC;
  signal \m2_reg_n_0_[6]\ : STD_LOGIC;
  signal \m2_reg_n_0_[7]\ : STD_LOGIC;
  signal \m2_reg_n_0_[8]\ : STD_LOGIC;
  signal \m2_reg_n_0_[9]\ : STD_LOGIC;
  signal \m[21]_i_1_n_0\ : STD_LOGIC;
  signal \m[22]_i_1_n_0\ : STD_LOGIC;
  signal \m[22]_i_2__0_n_0\ : STD_LOGIC;
  signal \m[22]_i_3_n_0\ : STD_LOGIC;
  signal \m[22]_i_4_n_0\ : STD_LOGIC;
  signal \multOp__0_n_100\ : STD_LOGIC;
  signal \multOp__0_n_75\ : STD_LOGIC;
  signal \multOp__0_n_76\ : STD_LOGIC;
  signal \multOp__0_n_77\ : STD_LOGIC;
  signal \multOp__0_n_78\ : STD_LOGIC;
  signal \multOp__0_n_79\ : STD_LOGIC;
  signal \multOp__0_n_80\ : STD_LOGIC;
  signal \multOp__0_n_81\ : STD_LOGIC;
  signal \multOp__0_n_82\ : STD_LOGIC;
  signal \multOp__0_n_83\ : STD_LOGIC;
  signal \multOp__0_n_84\ : STD_LOGIC;
  signal \multOp__0_n_85\ : STD_LOGIC;
  signal \multOp__0_n_86\ : STD_LOGIC;
  signal \multOp__0_n_87\ : STD_LOGIC;
  signal \multOp__0_n_88\ : STD_LOGIC;
  signal \multOp__0_n_89\ : STD_LOGIC;
  signal \multOp__0_n_90\ : STD_LOGIC;
  signal \multOp__0_n_91\ : STD_LOGIC;
  signal \multOp__0_n_92\ : STD_LOGIC;
  signal \multOp__0_n_93\ : STD_LOGIC;
  signal \multOp__0_n_94\ : STD_LOGIC;
  signal \multOp__0_n_95\ : STD_LOGIC;
  signal \multOp__0_n_96\ : STD_LOGIC;
  signal \multOp__0_n_97\ : STD_LOGIC;
  signal \multOp__0_n_98\ : STD_LOGIC;
  signal \multOp__0_n_99\ : STD_LOGIC;
  signal multOp_i_10_n_0 : STD_LOGIC;
  signal multOp_i_11_n_0 : STD_LOGIC;
  signal multOp_i_12_n_0 : STD_LOGIC;
  signal multOp_i_13_n_0 : STD_LOGIC;
  signal multOp_i_14_n_0 : STD_LOGIC;
  signal multOp_i_15_n_0 : STD_LOGIC;
  signal multOp_i_16_n_0 : STD_LOGIC;
  signal multOp_i_17_n_0 : STD_LOGIC;
  signal multOp_i_1_n_0 : STD_LOGIC;
  signal multOp_i_2_n_0 : STD_LOGIC;
  signal multOp_i_3_n_0 : STD_LOGIC;
  signal multOp_i_4_n_0 : STD_LOGIC;
  signal multOp_i_5_n_0 : STD_LOGIC;
  signal multOp_i_6_n_0 : STD_LOGIC;
  signal multOp_i_7_n_0 : STD_LOGIC;
  signal multOp_i_8_n_0 : STD_LOGIC;
  signal multOp_i_9_n_0 : STD_LOGIC;
  signal multOp_n_106 : STD_LOGIC;
  signal multOp_n_107 : STD_LOGIC;
  signal multOp_n_108 : STD_LOGIC;
  signal multOp_n_109 : STD_LOGIC;
  signal multOp_n_110 : STD_LOGIC;
  signal multOp_n_111 : STD_LOGIC;
  signal multOp_n_112 : STD_LOGIC;
  signal multOp_n_113 : STD_LOGIC;
  signal multOp_n_114 : STD_LOGIC;
  signal multOp_n_115 : STD_LOGIC;
  signal multOp_n_116 : STD_LOGIC;
  signal multOp_n_117 : STD_LOGIC;
  signal multOp_n_118 : STD_LOGIC;
  signal multOp_n_119 : STD_LOGIC;
  signal multOp_n_120 : STD_LOGIC;
  signal multOp_n_121 : STD_LOGIC;
  signal multOp_n_122 : STD_LOGIC;
  signal multOp_n_123 : STD_LOGIC;
  signal multOp_n_124 : STD_LOGIC;
  signal multOp_n_125 : STD_LOGIC;
  signal multOp_n_126 : STD_LOGIC;
  signal multOp_n_127 : STD_LOGIC;
  signal multOp_n_128 : STD_LOGIC;
  signal multOp_n_129 : STD_LOGIC;
  signal multOp_n_130 : STD_LOGIC;
  signal multOp_n_131 : STD_LOGIC;
  signal multOp_n_132 : STD_LOGIC;
  signal multOp_n_133 : STD_LOGIC;
  signal multOp_n_134 : STD_LOGIC;
  signal multOp_n_135 : STD_LOGIC;
  signal multOp_n_136 : STD_LOGIC;
  signal multOp_n_137 : STD_LOGIC;
  signal multOp_n_138 : STD_LOGIC;
  signal multOp_n_139 : STD_LOGIC;
  signal multOp_n_140 : STD_LOGIC;
  signal multOp_n_141 : STD_LOGIC;
  signal multOp_n_142 : STD_LOGIC;
  signal multOp_n_143 : STD_LOGIC;
  signal multOp_n_144 : STD_LOGIC;
  signal multOp_n_145 : STD_LOGIC;
  signal multOp_n_146 : STD_LOGIC;
  signal multOp_n_147 : STD_LOGIC;
  signal multOp_n_148 : STD_LOGIC;
  signal multOp_n_149 : STD_LOGIC;
  signal multOp_n_150 : STD_LOGIC;
  signal multOp_n_151 : STD_LOGIC;
  signal multOp_n_152 : STD_LOGIC;
  signal multOp_n_153 : STD_LOGIC;
  signal \^next_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal next_state_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^op1[24]\ : STD_LOGIC;
  signal \^op1[25]\ : STD_LOGIC;
  signal \^op1[31]\ : STD_LOGIC;
  signal \^op2[23]\ : STD_LOGIC;
  signal \^op2[25]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_1_out_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \p_1_out_carry_i_5__0_n_0\ : STD_LOGIC;
  signal p_1_out_carry_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 47 downto 23 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal \res[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[31]_i_2__1_n_0\ : STD_LOGIC;
  signal \res[31]_i_3_n_0\ : STD_LOGIC;
  signal \res[31]_i_4_n_0\ : STD_LOGIC;
  signal \res[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \res[9]_i_1__1_n_0\ : STD_LOGIC;
  signal res_vhdl : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^res_vhdl_rdy\ : STD_LOGIC;
  signal resrdy0 : STD_LOGIC;
  signal resrdy_i_1_n_0 : STD_LOGIC;
  signal \s__0\ : STD_LOGIC;
  signal \s_i_1__0_n_0\ : STD_LOGIC;
  signal \s_i_2__0_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal tmpexp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal tmpexp0 : STD_LOGIC;
  signal \tmpexp[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_3_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_5_n_0\ : STD_LOGIC;
  signal \tmpexp[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_3_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_4_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_5_n_0\ : STD_LOGIC;
  signal \tmpexp[7]_i_6_n_0\ : STD_LOGIC;
  signal \tmpexp[8]_i_3_n_0\ : STD_LOGIC;
  signal \tmpexp_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmpexp_reg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[1]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[2]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[4]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[5]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[6]\ : STD_LOGIC;
  signal \tmpexp_reg_n_0_[7]\ : STD_LOGIC;
  signal tmpm0 : STD_LOGIC_VECTOR ( 46 to 46 );
  signal \tmpm[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[37]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[38]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[39]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[40]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[41]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[42]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[43]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[44]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[45]_i_1__0_n_0\ : STD_LOGIC;
  signal \tmpm[46]_i_2_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_1_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_2__0_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_3_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_4_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_5_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_6_n_0\ : STD_LOGIC;
  signal \tmpm[47]_i_7_n_0\ : STD_LOGIC;
  signal NLW_multOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_multOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_multOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_multOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_multOp__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_multOp__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_multOp__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_multOp__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__0_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_multOp__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_1_out_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_p_1_out_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tmpexp_reg[3]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpexp_reg[3]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_tmpexp_reg[7]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmpexp_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmpexp_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \exp[0]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \exp[0]_i_1\ : label is "soft_lutpair91";
  attribute OPT_MODIFIED of \exp[1]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[1]_i_1\ : label is "soft_lutpair92";
  attribute OPT_MODIFIED of \exp[2]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[2]_i_1\ : label is "soft_lutpair93";
  attribute OPT_MODIFIED of \exp[3]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[3]_i_1\ : label is "soft_lutpair94";
  attribute OPT_MODIFIED of \exp[4]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[4]_i_1\ : label is "soft_lutpair94";
  attribute OPT_MODIFIED of \exp[5]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[5]_i_1\ : label is "soft_lutpair93";
  attribute OPT_MODIFIED of \exp[6]_i_1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[6]_i_1\ : label is "soft_lutpair92";
  attribute OPT_MODIFIED of \exp[7]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \exp[7]_i_1__0\ : label is "soft_lutpair91";
  attribute OPT_MODIFIED of g0_b0 : label is "RETARGET";
  attribute OPT_MODIFIED of \g0_b0__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \g0_b0__0__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b0_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b0_i_2 : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b0_i_3 : label is "RETARGET";
  attribute OPT_MODIFIED of g0_b0_i_4 : label is "RETARGET";
  attribute OPT_MODIFIED of \m1[22]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m1[22]_i_2__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m2[23]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m[21]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m[21]_i_2\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m[22]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m[22]_i_2__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \m[22]_i_3\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \m[22]_i_3\ : label is "soft_lutpair66";
  attribute OPT_MODIFIED of \m[22]_i_4\ : label is "RETARGET";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of multOp : label is "{SYNTH-11 {cell *THIS*}}";
  attribute OPT_MODIFIED of multOp : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \multOp__0\ : label is "{SYNTH-13 {cell *THIS*}}";
  attribute OPT_MODIFIED of \multOp__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of multOp_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_10 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_11 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_12 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_13 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_14 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_15 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_16 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_17 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_2 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_3 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_4 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_5 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_6 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_7 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_8 : label is "RETARGET";
  attribute OPT_MODIFIED of multOp_i_9 : label is "RETARGET";
  attribute METHODOLOGY_DRC_VIOS of p_1_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of p_1_out_carry : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \p_1_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \p_1_out_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \p_1_out_carry_i_5__0\ : label is "RETARGET";
  attribute METHODOLOGY_DRC_VIOS of plusOp_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of plusOp_carry : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \plusOp_carry__0\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \plusOp_carry__1\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \plusOp_carry__2\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \plusOp_carry__3\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \plusOp_carry__4\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \plusOp_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \res[0]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[0]_i_1__1\ : label is "soft_lutpair73";
  attribute OPT_MODIFIED of \res[10]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[10]_i_1__1\ : label is "soft_lutpair90";
  attribute OPT_MODIFIED of \res[11]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[11]_i_1__1\ : label is "soft_lutpair83";
  attribute OPT_MODIFIED of \res[12]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[12]_i_1__1\ : label is "soft_lutpair84";
  attribute OPT_MODIFIED of \res[13]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[13]_i_1__1\ : label is "soft_lutpair90";
  attribute OPT_MODIFIED of \res[14]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[14]_i_1__1\ : label is "soft_lutpair85";
  attribute OPT_MODIFIED of \res[15]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[15]_i_1__1\ : label is "soft_lutpair86";
  attribute OPT_MODIFIED of \res[16]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[16]_i_1__1\ : label is "soft_lutpair87";
  attribute OPT_MODIFIED of \res[17]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[17]_i_1__1\ : label is "soft_lutpair87";
  attribute OPT_MODIFIED of \res[18]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[18]_i_1__1\ : label is "soft_lutpair86";
  attribute OPT_MODIFIED of \res[19]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[19]_i_1__1\ : label is "soft_lutpair85";
  attribute OPT_MODIFIED of \res[1]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[1]_i_1__1\ : label is "soft_lutpair74";
  attribute OPT_MODIFIED of \res[20]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[20]_i_1__1\ : label is "soft_lutpair84";
  attribute OPT_MODIFIED of \res[21]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[21]_i_1__1\ : label is "soft_lutpair83";
  attribute OPT_MODIFIED of \res[22]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[22]_i_1__1\ : label is "soft_lutpair82";
  attribute OPT_MODIFIED of \res[23]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[23]_i_1__1\ : label is "soft_lutpair81";
  attribute OPT_MODIFIED of \res[24]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[24]_i_1__1\ : label is "soft_lutpair80";
  attribute OPT_MODIFIED of \res[25]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[25]_i_1__1\ : label is "soft_lutpair79";
  attribute OPT_MODIFIED of \res[26]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[26]_i_1__1\ : label is "soft_lutpair78";
  attribute OPT_MODIFIED of \res[27]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[27]_i_1__1\ : label is "soft_lutpair77";
  attribute OPT_MODIFIED of \res[28]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[28]_i_1__1\ : label is "soft_lutpair76";
  attribute OPT_MODIFIED of \res[29]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[29]_i_1__1\ : label is "soft_lutpair75";
  attribute OPT_MODIFIED of \res[2]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[2]_i_1__1\ : label is "soft_lutpair75";
  attribute OPT_MODIFIED of \res[30]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[30]_i_1__1\ : label is "soft_lutpair74";
  attribute OPT_MODIFIED of \res[31]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \res[31]_i_2__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[31]_i_2__1\ : label is "soft_lutpair73";
  attribute OPT_MODIFIED of \res[31]_i_3\ : label is "RETARGET";
  attribute OPT_MODIFIED of \res[3]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[3]_i_1__1\ : label is "soft_lutpair76";
  attribute OPT_MODIFIED of \res[4]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[4]_i_1__1\ : label is "soft_lutpair77";
  attribute OPT_MODIFIED of \res[5]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[5]_i_1__1\ : label is "soft_lutpair78";
  attribute OPT_MODIFIED of \res[6]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[6]_i_1__1\ : label is "soft_lutpair79";
  attribute OPT_MODIFIED of \res[7]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[7]_i_1__1\ : label is "soft_lutpair80";
  attribute OPT_MODIFIED of \res[8]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[8]_i_1__1\ : label is "soft_lutpair81";
  attribute OPT_MODIFIED of \res[9]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \res[9]_i_1__1\ : label is "soft_lutpair82";
  attribute OPT_MODIFIED of resrdy_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of \s_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \s_i_2__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \s_i_2__0\ : label is "soft_lutpair72";
  attribute OPT_MODIFIED of \tmpexp[0]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[1]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[2]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[3]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[4]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[5]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[6]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[7]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpexp[8]_i_1__0\ : label is "RETARGET";
  attribute METHODOLOGY_DRC_VIOS of \tmpexp_reg[3]_i_2__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpexp_reg[3]_i_2__0\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpexp_reg[7]_i_2__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpexp_reg[7]_i_2__0\ : label is "SWEEP";
  attribute METHODOLOGY_DRC_VIOS of \tmpexp_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \tmpm[22]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[23]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[24]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[25]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[26]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[27]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[28]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[29]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[30]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[31]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[32]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[33]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[34]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[35]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[36]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[37]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[38]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[39]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[40]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[41]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[42]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[43]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[44]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[45]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[46]_i_1__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[46]_i_2\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[47]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[47]_i_2__0\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[47]_i_3\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[47]_i_4\ : label is "RETARGET";
  attribute OPT_MODIFIED of \tmpm[47]_i_7\ : label is "RETARGET";
begin
  g0_b0_i_28_0 <= \^g0_b0_i_28_0\;
  next_state(1 downto 0) <= \^next_state\(1 downto 0);
  \op1[24]\ <= \^op1[24]\;
  \op1[25]\ <= \^op1[25]\;
  \op1[31]\ <= \^op1[31]\;
  \op2[23]\ <= \^op2[23]\;
  \op2[25]\ <= \^op2[25]\;
  res_vhdl_rdy <= \^res_vhdl_rdy\;
\exp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[0]\,
      I1 => next_state_0(1),
      O => \exp[0]_i_1_n_0\
    );
\exp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      I1 => next_state_0(1),
      O => \exp[1]_i_1_n_0\
    );
\exp[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[2]\,
      I1 => next_state_0(1),
      O => \exp[2]_i_1_n_0\
    );
\exp[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[3]\,
      I1 => next_state_0(1),
      O => \exp[3]_i_1_n_0\
    );
\exp[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[4]\,
      I1 => next_state_0(1),
      O => \exp[4]_i_1_n_0\
    );
\exp[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[5]\,
      I1 => next_state_0(1),
      O => \exp[5]_i_1_n_0\
    );
\exp[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[6]\,
      I1 => next_state_0(1),
      O => \exp[6]_i_1_n_0\
    );
\exp[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[7]\,
      I1 => next_state_0(1),
      O => \exp[7]_i_1__0_n_0\
    );
\exp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[0]_i_1_n_0\,
      Q => exp(0),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[1]_i_1_n_0\,
      Q => exp(1),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[2]_i_1_n_0\,
      Q => exp(2),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[3]_i_1_n_0\,
      Q => exp(3),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[4]_i_1_n_0\,
      Q => exp(4),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[5]_i_1_n_0\,
      Q => exp(5),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[6]_i_1_n_0\,
      Q => exp(6),
      R => \g0_b0__0__0_n_0\
    );
\exp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => exp0,
      D => \exp[7]_i_1__0_n_0\,
      Q => exp(7),
      R => \g0_b0__0__0_n_0\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004604041"
    )
        port map (
      I0 => next_state_0(4),
      I1 => next_state_0(3),
      I2 => next_state_0(1),
      I3 => next_state_0(2),
      I4 => next_state_0(0),
      I5 => reset_IBUF,
      O => tmpexp0
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000043100101"
    )
        port map (
      I0 => next_state_0(4),
      I1 => next_state_0(3),
      I2 => next_state_0(1),
      I3 => next_state_0(2),
      I4 => next_state_0(0),
      I5 => reset_IBUF,
      O => exp0
    );
\g0_b0__0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002100001"
    )
        port map (
      I0 => next_state_0(4),
      I1 => next_state_0(3),
      I2 => next_state_0(1),
      I3 => next_state_0(2),
      I4 => next_state_0(0),
      I5 => reset_IBUF,
      O => \g0_b0__0__0_n_0\
    );
g0_b0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55545454"
    )
        port map (
      I0 => g0_b0_i_5_n_0,
      I1 => g0_b0_i_6_n_0,
      I2 => g0_b0_i_7_n_0,
      I3 => \^g0_b0_i_28_0\,
      I4 => g0_b0_i_9_n_0,
      I5 => g0_b0_i_10_n_0,
      O => next_state_0(4)
    );
g0_b0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00333033C0D43000"
    )
        port map (
      I0 => g0_b0_i_29_n_0,
      I1 => state(3),
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      I5 => state(4),
      O => g0_b0_i_10_n_0
    );
g0_b0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => state(1),
      I1 => state(3),
      I2 => state(0),
      O => g0_b0_i_11_n_0
    );
g0_b0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FFFF"
    )
        port map (
      I0 => L(46),
      I1 => L(47),
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      O => g0_b0_i_12_n_0
    );
g0_b0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDDDDDDDD5"
    )
        port map (
      I0 => state(1),
      I1 => \state[0]_i_5_n_0\,
      I2 => \tmpexp_reg_n_0_[1]\,
      I3 => \tmpexp_reg_n_0_[4]\,
      I4 => \tmpexp_reg_n_0_[3]\,
      I5 => g0_b0_i_23_n_0,
      O => g0_b0_i_13_n_0
    );
g0_b0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008F0088008F008F"
    )
        port map (
      I0 => g0_b0_i_30_n_0,
      I1 => state(2),
      I2 => g0_b0_i_31_n_0,
      I3 => state(0),
      I4 => L(47),
      I5 => L(46),
      O => g0_b0_i_14_n_0
    );
g0_b0_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => state(3),
      I1 => \^op2[25]\,
      I2 => g0_b0_i_4_0,
      I3 => \^op1[25]\,
      I4 => g0_b0_i_4_1,
      O => g0_b0_i_15_n_0
    );
g0_b0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B00FF000000"
    )
        port map (
      I0 => g0_b0_i_23_n_0,
      I1 => g0_b0_i_24_n_0,
      I2 => L(46),
      I3 => state(3),
      I4 => L(47),
      I5 => state(2),
      O => g0_b0_i_16_n_0
    );
g0_b0_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(4),
      I1 => state(0),
      O => g0_b0_i_17_n_0
    );
g0_b0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AE000000AA"
    )
        port map (
      I0 => state(0),
      I1 => L(46),
      I2 => L(47),
      I3 => state(2),
      I4 => state(3),
      I5 => state(4),
      O => g0_b0_i_18_n_0
    );
g0_b0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => g0_b0_i_36_n_0,
      I1 => g0_b0_i_37_n_0,
      I2 => state(1),
      O => g0_b0_i_19_n_0
    );
g0_b0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001F11"
    )
        port map (
      I0 => g0_b0_i_11_n_0,
      I1 => \^g0_b0_i_28_0\,
      I2 => g0_b0_i_12_n_0,
      I3 => g0_b0_i_13_n_0,
      I4 => g0_b0_i_5_n_0,
      I5 => g0_b0_i_14_n_0,
      O => next_state_0(3)
    );
g0_b0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DDD"
    )
        port map (
      I0 => g0_b0_i_38_n_0,
      I1 => \^op2[23]\,
      I2 => g0_b0_i_39_n_0,
      I3 => \^op1[24]\,
      O => g0_b0_i_20_n_0
    );
g0_b0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF0808FF"
    )
        port map (
      I0 => L(47),
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => state(4),
      O => g0_b0_i_21_n_0
    );
g0_b0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030007C0030005C0"
    )
        port map (
      I0 => state(1),
      I1 => state(4),
      I2 => state(0),
      I3 => state(2),
      I4 => state(3),
      I5 => \^g0_b0_i_28_0\,
      O => g0_b0_i_22_n_0
    );
g0_b0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_0_in,
      I1 => \tmpexp_reg_n_0_[7]\,
      I2 => \tmpexp_reg_n_0_[2]\,
      I3 => \tmpexp_reg_n_0_[0]\,
      I4 => \tmpexp_reg_n_0_[5]\,
      I5 => \tmpexp_reg_n_0_[6]\,
      O => g0_b0_i_23_n_0
    );
g0_b0_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[3]\,
      I1 => \tmpexp_reg_n_0_[4]\,
      I2 => \tmpexp_reg_n_0_[1]\,
      O => g0_b0_i_24_n_0
    );
g0_b0_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => op1_IBUF(30),
      I1 => op1_IBUF(29),
      I2 => op1_IBUF(27),
      I3 => op1_IBUF(28),
      O => g0_b0_i_25_n_0
    );
g0_b0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => op1_IBUF(25),
      I1 => op1_IBUF(26),
      I2 => op1_IBUF(23),
      I3 => op1_IBUF(24),
      O => g0_b0_i_26_n_0
    );
g0_b0_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => op2_IBUF(28),
      I1 => op2_IBUF(29),
      I2 => op2_IBUF(24),
      I3 => op2_IBUF(26),
      O => g0_b0_i_27_n_0
    );
g0_b0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => op2_IBUF(27),
      I1 => op2_IBUF(25),
      I2 => op2_IBUF(30),
      I3 => op2_IBUF(23),
      O => g0_b0_i_28_n_0
    );
g0_b0_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => state(0),
      I1 => L(47),
      I2 => L(46),
      O => g0_b0_i_29_n_0
    );
g0_b0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA00A2"
    )
        port map (
      I0 => state(1),
      I1 => g0_b0_i_15_n_0,
      I2 => g0_b0_i_16_n_0,
      I3 => g0_b0_i_17_n_0,
      I4 => g0_b0_i_18_n_0,
      I5 => g0_b0_i_19_n_0,
      O => next_state_0(1)
    );
g0_b0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(1),
      I1 => state(4),
      I2 => state(3),
      I3 => p_0_in,
      O => g0_b0_i_30_n_0
    );
g0_b0_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(4),
      O => g0_b0_i_31_n_0
    );
g0_b0_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => op2_IBUF(25),
      I1 => op2_IBUF(26),
      I2 => op2_IBUF(23),
      I3 => op2_IBUF(24),
      O => \^op2[25]\
    );
g0_b0_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => op1_IBUF(25),
      I1 => op1_IBUF(26),
      I2 => op1_IBUF(23),
      I3 => op1_IBUF(24),
      O => \^op1[25]\
    );
g0_b0_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00115400"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => inrdy_IBUF(0),
      I3 => state(0),
      I4 => state(2),
      O => g0_b0_i_36_n_0
    );
g0_b0_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEE00FFFF0FFF"
    )
        port map (
      I0 => state(0),
      I1 => p_0_in,
      I2 => L(23),
      I3 => state(4),
      I4 => state(3),
      I5 => state(2),
      O => g0_b0_i_37_n_0
    );
g0_b0_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => g0_b0_i_40_n_0,
      I1 => g0_b0_i_41_n_0,
      I2 => g0_b0_i_42_n_0,
      I3 => g0_b0_i_43_n_0,
      I4 => g0_b0_i_44_n_0,
      I5 => g0_b0_i_45_n_0,
      O => g0_b0_i_38_n_0
    );
g0_b0_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => g0_b0_i_46_n_0,
      I1 => g0_b0_i_47_n_0,
      I2 => g0_b0_i_48_n_0,
      I3 => g0_b0_i_49_n_0,
      I4 => g0_b0_i_50_n_0,
      I5 => g0_b0_i_51_n_0,
      O => g0_b0_i_39_n_0
    );
g0_b0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00FE"
    )
        port map (
      I0 => g0_b0_i_15_n_0,
      I1 => g0_b0_i_20_n_0,
      I2 => state(0),
      I3 => g0_b0_i_21_n_0,
      I4 => g0_b0_i_22_n_0,
      O => next_state_0(2)
    );
g0_b0_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[7]\,
      I1 => \m2_reg_n_0_[9]\,
      I2 => \m2_reg_n_0_[18]\,
      I3 => \m2_reg_n_0_[23]\,
      O => g0_b0_i_40_n_0
    );
g0_b0_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \m2_reg_n_0_[17]\,
      I1 => \m2_reg_n_0_[15]\,
      I2 => \m2_reg_n_0_[13]\,
      I3 => \m2_reg_n_0_[1]\,
      O => g0_b0_i_41_n_0
    );
g0_b0_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[14]\,
      I1 => \m2_reg_n_0_[10]\,
      I2 => \m2_reg_n_0_[16]\,
      I3 => \m2_reg_n_0_[5]\,
      O => g0_b0_i_42_n_0
    );
g0_b0_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[4]\,
      I1 => \m2_reg_n_0_[3]\,
      I2 => \m2_reg_n_0_[6]\,
      I3 => \m2_reg_n_0_[8]\,
      O => g0_b0_i_43_n_0
    );
g0_b0_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[12]\,
      I1 => \m2_reg_n_0_[0]\,
      I2 => \m2_reg_n_0_[20]\,
      I3 => \m2_reg_n_0_[11]\,
      O => g0_b0_i_44_n_0
    );
g0_b0_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m2_reg_n_0_[21]\,
      I1 => \m2_reg_n_0_[2]\,
      I2 => \m2_reg_n_0_[19]\,
      I3 => \m2_reg_n_0_[22]\,
      O => g0_b0_i_45_n_0
    );
g0_b0_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m1(7),
      I1 => m1(9),
      I2 => m1(18),
      I3 => m1(22),
      O => g0_b0_i_46_n_0
    );
g0_b0_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => m1(17),
      I1 => m1(15),
      I2 => m1(13),
      I3 => m1(1),
      O => g0_b0_i_47_n_0
    );
g0_b0_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m1(14),
      I1 => m1(10),
      I2 => m1(16),
      I3 => m1(5),
      O => g0_b0_i_48_n_0
    );
g0_b0_i_49: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m1(4),
      I1 => m1(3),
      I2 => m1(6),
      I3 => m1(8),
      O => g0_b0_i_49_n_0
    );
g0_b0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      O => g0_b0_i_5_n_0
    );
g0_b0_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m1(12),
      I1 => m1(0),
      I2 => m1(11),
      I3 => \m2_reg_n_0_[23]\,
      O => g0_b0_i_50_n_0
    );
g0_b0_i_51: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => m1(21),
      I1 => m1(2),
      I2 => m1(19),
      I3 => m1(20),
      O => g0_b0_i_51_n_0
    );
g0_b0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA2000000000"
    )
        port map (
      I0 => state(3),
      I1 => g0_b0_i_23_n_0,
      I2 => g0_b0_i_24_n_0,
      I3 => L(46),
      I4 => L(47),
      I5 => state(1),
      O => g0_b0_i_6_n_0
    );
g0_b0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD55"
    )
        port map (
      I0 => state(3),
      I1 => L(47),
      I2 => L(46),
      I3 => state(0),
      I4 => state(1),
      O => g0_b0_i_7_n_0
    );
g0_b0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
        port map (
      I0 => g0_b0_i_25_n_0,
      I1 => g0_b0_i_26_n_0,
      I2 => g0_b0_i_27_n_0,
      I3 => g0_b0_i_28_n_0,
      O => \^g0_b0_i_28_0\
    );
g0_b0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      O => g0_b0_i_9_n_0
    );
\m1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => next_state_0(1),
      I1 => next_state_0(3),
      I2 => reset_IBUF,
      I3 => next_state_0(4),
      I4 => next_state_0(2),
      I5 => next_state_0(0),
      O => \m1[22]_i_1_n_0\
    );
\m1[22]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => next_state_0(0),
      I1 => next_state_0(2),
      I2 => next_state_0(4),
      I3 => reset_IBUF,
      I4 => next_state_0(3),
      O => \m1[22]_i_2__0_n_0\
    );
\m1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(0),
      Q => m1(0),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(10),
      Q => m1(10),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(11),
      Q => m1(11),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(12),
      Q => m1(12),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(13),
      Q => m1(13),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(14),
      Q => m1(14),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(15),
      Q => m1(15),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(16),
      Q => m1(16),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(17),
      Q => m1(17),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(18),
      Q => m1(18),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(19),
      Q => m1(19),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(1),
      Q => m1(1),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(20),
      Q => m1(20),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(21),
      Q => m1(21),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(22),
      Q => m1(22),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(2),
      Q => m1(2),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(3),
      Q => m1(3),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(4),
      Q => m1(4),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(5),
      Q => m1(5),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(6),
      Q => m1(6),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(7),
      Q => m1(7),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(8),
      Q => m1(8),
      R => \m1[22]_i_1_n_0\
    );
\m1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op1_IBUF(9),
      Q => m1(9),
      R => \m1[22]_i_1_n_0\
    );
\m2[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE01000000"
    )
        port map (
      I0 => next_state_0(0),
      I1 => next_state_0(4),
      I2 => \m[22]_i_4_n_0\,
      I3 => next_state_0(2),
      I4 => next_state_0(1),
      I5 => \m2_reg_n_0_[23]\,
      O => \m2[23]_i_1__0_n_0\
    );
\m2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(0),
      Q => \m2_reg_n_0_[0]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(10),
      Q => \m2_reg_n_0_[10]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(11),
      Q => \m2_reg_n_0_[11]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(12),
      Q => \m2_reg_n_0_[12]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(13),
      Q => \m2_reg_n_0_[13]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(14),
      Q => \m2_reg_n_0_[14]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(15),
      Q => \m2_reg_n_0_[15]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(16),
      Q => \m2_reg_n_0_[16]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(17),
      Q => \m2_reg_n_0_[17]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(18),
      Q => \m2_reg_n_0_[18]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(19),
      Q => \m2_reg_n_0_[19]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(1),
      Q => \m2_reg_n_0_[1]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(20),
      Q => \m2_reg_n_0_[20]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(21),
      Q => \m2_reg_n_0_[21]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(22),
      Q => \m2_reg_n_0_[22]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \m2[23]_i_1__0_n_0\,
      Q => \m2_reg_n_0_[23]\,
      R => '0'
    );
\m2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(2),
      Q => \m2_reg_n_0_[2]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(3),
      Q => \m2_reg_n_0_[3]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(4),
      Q => \m2_reg_n_0_[4]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(5),
      Q => \m2_reg_n_0_[5]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(6),
      Q => \m2_reg_n_0_[6]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(7),
      Q => \m2_reg_n_0_[7]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(8),
      Q => \m2_reg_n_0_[8]\,
      R => \m1[22]_i_1_n_0\
    );
\m2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \m1[22]_i_2__0_n_0\,
      D => op2_IBUF(9),
      Q => \m2_reg_n_0_[9]\,
      R => \m1[22]_i_1_n_0\
    );
\m[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000101000001"
    )
        port map (
      I0 => next_state_0(3),
      I1 => reset_IBUF,
      I2 => next_state_0(4),
      I3 => next_state_0(1),
      I4 => next_state_0(0),
      I5 => next_state_0(2),
      O => \m[21]_i_1_n_0\
    );
\m[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000044B"
    )
        port map (
      I0 => next_state_0(2),
      I1 => next_state_0(0),
      I2 => next_state_0(1),
      I3 => next_state_0(4),
      I4 => reset_IBUF,
      I5 => next_state_0(3),
      O => m0
    );
\m[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEB00000228"
    )
        port map (
      I0 => \m[22]_i_2__0_n_0\,
      I1 => \m[22]_i_3_n_0\,
      I2 => next_state_0(1),
      I3 => next_state_0(4),
      I4 => \m[22]_i_4_n_0\,
      I5 => m(22),
      O => \m[22]_i_1_n_0\
    );
\m[22]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E2E2000000"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => state(2),
      I2 => \state[0]_i_3_n_0\,
      I3 => L(45),
      I4 => next_state_0(4),
      I5 => next_state_0(2),
      O => \m[22]_i_2__0_n_0\
    );
\m[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF02F2"
    )
        port map (
      I0 => \tmpm[47]_i_6_n_0\,
      I1 => \tmpm[47]_i_5_n_0\,
      I2 => state(2),
      I3 => \state[0]_i_3_n_0\,
      I4 => next_state_0(2),
      O => \m[22]_i_3_n_0\
    );
\m[22]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset_IBUF,
      I1 => next_state_0(3),
      O => \m[22]_i_4_n_0\
    );
\m_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(23),
      Q => m(0),
      R => \m[21]_i_1_n_0\
    );
\m_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(33),
      Q => m(10),
      R => \m[21]_i_1_n_0\
    );
\m_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(34),
      Q => m(11),
      R => \m[21]_i_1_n_0\
    );
\m_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(35),
      Q => m(12),
      R => \m[21]_i_1_n_0\
    );
\m_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(36),
      Q => m(13),
      R => \m[21]_i_1_n_0\
    );
\m_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(37),
      Q => m(14),
      R => \m[21]_i_1_n_0\
    );
\m_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(38),
      Q => m(15),
      R => \m[21]_i_1_n_0\
    );
\m_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(39),
      Q => m(16),
      R => \m[21]_i_1_n_0\
    );
\m_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(40),
      Q => m(17),
      R => \m[21]_i_1_n_0\
    );
\m_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(41),
      Q => m(18),
      R => \m[21]_i_1_n_0\
    );
\m_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(42),
      Q => m(19),
      R => \m[21]_i_1_n_0\
    );
\m_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(24),
      Q => m(1),
      R => \m[21]_i_1_n_0\
    );
\m_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(43),
      Q => m(20),
      R => \m[21]_i_1_n_0\
    );
\m_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(44),
      Q => m(21),
      R => \m[21]_i_1_n_0\
    );
\m_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \m[22]_i_1_n_0\,
      Q => m(22),
      R => '0'
    );
\m_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(25),
      Q => m(2),
      R => \m[21]_i_1_n_0\
    );
\m_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(26),
      Q => m(3),
      R => \m[21]_i_1_n_0\
    );
\m_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(27),
      Q => m(4),
      R => \m[21]_i_1_n_0\
    );
\m_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(28),
      Q => m(5),
      R => \m[21]_i_1_n_0\
    );
\m_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(29),
      Q => m(6),
      R => \m[21]_i_1_n_0\
    );
\m_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(30),
      Q => m(7),
      R => \m[21]_i_1_n_0\
    );
\m_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(31),
      Q => m(8),
      R => \m[21]_i_1_n_0\
    );
\m_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => m0,
      D => L(32),
      Q => m(9),
      R => \m[21]_i_1_n_0\
    );
multOp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 24) => B"000000",
      A(23) => \m2_reg_n_0_[23]\,
      A(22) => \m2_reg_n_0_[22]\,
      A(21) => \m2_reg_n_0_[21]\,
      A(20) => \m2_reg_n_0_[20]\,
      A(19) => \m2_reg_n_0_[19]\,
      A(18) => \m2_reg_n_0_[18]\,
      A(17) => \m2_reg_n_0_[17]\,
      A(16) => \m2_reg_n_0_[16]\,
      A(15) => \m2_reg_n_0_[15]\,
      A(14) => \m2_reg_n_0_[14]\,
      A(13) => \m2_reg_n_0_[13]\,
      A(12) => \m2_reg_n_0_[12]\,
      A(11) => \m2_reg_n_0_[11]\,
      A(10) => \m2_reg_n_0_[10]\,
      A(9) => \m2_reg_n_0_[9]\,
      A(8) => \m2_reg_n_0_[8]\,
      A(7) => \m2_reg_n_0_[7]\,
      A(6) => \m2_reg_n_0_[6]\,
      A(5) => \m2_reg_n_0_[5]\,
      A(4) => \m2_reg_n_0_[4]\,
      A(3) => \m2_reg_n_0_[3]\,
      A(2) => \m2_reg_n_0_[2]\,
      A(1) => \m2_reg_n_0_[1]\,
      A(0) => \m2_reg_n_0_[0]\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_multOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => multOp_i_1_n_0,
      B(15) => multOp_i_2_n_0,
      B(14) => multOp_i_3_n_0,
      B(13) => multOp_i_4_n_0,
      B(12) => multOp_i_5_n_0,
      B(11) => multOp_i_6_n_0,
      B(10) => multOp_i_7_n_0,
      B(9) => multOp_i_8_n_0,
      B(8) => multOp_i_9_n_0,
      B(7) => multOp_i_10_n_0,
      B(6) => multOp_i_11_n_0,
      B(5) => multOp_i_12_n_0,
      B(4) => multOp_i_13_n_0,
      B(3) => multOp_i_14_n_0,
      B(2) => multOp_i_15_n_0,
      B(1) => multOp_i_16_n_0,
      B(0) => multOp_i_17_n_0,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_multOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_multOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_multOp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \m1[22]_i_2__0_n_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk_IBUF_BUFG,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_multOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_multOp_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_multOp_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_multOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_multOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => multOp_n_106,
      PCOUT(46) => multOp_n_107,
      PCOUT(45) => multOp_n_108,
      PCOUT(44) => multOp_n_109,
      PCOUT(43) => multOp_n_110,
      PCOUT(42) => multOp_n_111,
      PCOUT(41) => multOp_n_112,
      PCOUT(40) => multOp_n_113,
      PCOUT(39) => multOp_n_114,
      PCOUT(38) => multOp_n_115,
      PCOUT(37) => multOp_n_116,
      PCOUT(36) => multOp_n_117,
      PCOUT(35) => multOp_n_118,
      PCOUT(34) => multOp_n_119,
      PCOUT(33) => multOp_n_120,
      PCOUT(32) => multOp_n_121,
      PCOUT(31) => multOp_n_122,
      PCOUT(30) => multOp_n_123,
      PCOUT(29) => multOp_n_124,
      PCOUT(28) => multOp_n_125,
      PCOUT(27) => multOp_n_126,
      PCOUT(26) => multOp_n_127,
      PCOUT(25) => multOp_n_128,
      PCOUT(24) => multOp_n_129,
      PCOUT(23) => multOp_n_130,
      PCOUT(22) => multOp_n_131,
      PCOUT(21) => multOp_n_132,
      PCOUT(20) => multOp_n_133,
      PCOUT(19) => multOp_n_134,
      PCOUT(18) => multOp_n_135,
      PCOUT(17) => multOp_n_136,
      PCOUT(16) => multOp_n_137,
      PCOUT(15) => multOp_n_138,
      PCOUT(14) => multOp_n_139,
      PCOUT(13) => multOp_n_140,
      PCOUT(12) => multOp_n_141,
      PCOUT(11) => multOp_n_142,
      PCOUT(10) => multOp_n_143,
      PCOUT(9) => multOp_n_144,
      PCOUT(8) => multOp_n_145,
      PCOUT(7) => multOp_n_146,
      PCOUT(6) => multOp_n_147,
      PCOUT(5) => multOp_n_148,
      PCOUT(4) => multOp_n_149,
      PCOUT(3) => multOp_n_150,
      PCOUT(2) => multOp_n_151,
      PCOUT(1) => multOp_n_152,
      PCOUT(0) => multOp_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_multOp_UNDERFLOW_UNCONNECTED
    );
\multOp__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 24) => B"000000",
      A(23) => \m2_reg_n_0_[23]\,
      A(22) => \m2_reg_n_0_[22]\,
      A(21) => \m2_reg_n_0_[21]\,
      A(20) => \m2_reg_n_0_[20]\,
      A(19) => \m2_reg_n_0_[19]\,
      A(18) => \m2_reg_n_0_[18]\,
      A(17) => \m2_reg_n_0_[17]\,
      A(16) => \m2_reg_n_0_[16]\,
      A(15) => \m2_reg_n_0_[15]\,
      A(14) => \m2_reg_n_0_[14]\,
      A(13) => \m2_reg_n_0_[13]\,
      A(12) => \m2_reg_n_0_[12]\,
      A(11) => \m2_reg_n_0_[11]\,
      A(10) => \m2_reg_n_0_[10]\,
      A(9) => \m2_reg_n_0_[9]\,
      A(8) => \m2_reg_n_0_[8]\,
      A(7) => \m2_reg_n_0_[7]\,
      A(6) => \m2_reg_n_0_[6]\,
      A(5) => \m2_reg_n_0_[5]\,
      A(4) => \m2_reg_n_0_[4]\,
      A(3) => \m2_reg_n_0_[3]\,
      A(2) => \m2_reg_n_0_[2]\,
      A(1) => \m2_reg_n_0_[1]\,
      A(0) => \m2_reg_n_0_[0]\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_multOp__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 7) => B"00000000000",
      B(6) => \m2_reg_n_0_[23]\,
      B(5 downto 0) => m1(22 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_multOp__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_multOp__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_multOp__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_multOp__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_multOp__0_OVERFLOW_UNCONNECTED\,
      P(47 downto 31) => \NLW_multOp__0_P_UNCONNECTED\(47 downto 31),
      P(30) => \multOp__0_n_75\,
      P(29) => \multOp__0_n_76\,
      P(28) => \multOp__0_n_77\,
      P(27) => \multOp__0_n_78\,
      P(26) => \multOp__0_n_79\,
      P(25) => \multOp__0_n_80\,
      P(24) => \multOp__0_n_81\,
      P(23) => \multOp__0_n_82\,
      P(22) => \multOp__0_n_83\,
      P(21) => \multOp__0_n_84\,
      P(20) => \multOp__0_n_85\,
      P(19) => \multOp__0_n_86\,
      P(18) => \multOp__0_n_87\,
      P(17) => \multOp__0_n_88\,
      P(16) => \multOp__0_n_89\,
      P(15) => \multOp__0_n_90\,
      P(14) => \multOp__0_n_91\,
      P(13) => \multOp__0_n_92\,
      P(12) => \multOp__0_n_93\,
      P(11) => \multOp__0_n_94\,
      P(10) => \multOp__0_n_95\,
      P(9) => \multOp__0_n_96\,
      P(8) => \multOp__0_n_97\,
      P(7) => \multOp__0_n_98\,
      P(6) => \multOp__0_n_99\,
      P(5) => \multOp__0_n_100\,
      P(4 downto 0) => \NLW_multOp__0_P_UNCONNECTED\(4 downto 0),
      PATTERNBDETECT => \NLW_multOp__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_multOp__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => multOp_n_106,
      PCIN(46) => multOp_n_107,
      PCIN(45) => multOp_n_108,
      PCIN(44) => multOp_n_109,
      PCIN(43) => multOp_n_110,
      PCIN(42) => multOp_n_111,
      PCIN(41) => multOp_n_112,
      PCIN(40) => multOp_n_113,
      PCIN(39) => multOp_n_114,
      PCIN(38) => multOp_n_115,
      PCIN(37) => multOp_n_116,
      PCIN(36) => multOp_n_117,
      PCIN(35) => multOp_n_118,
      PCIN(34) => multOp_n_119,
      PCIN(33) => multOp_n_120,
      PCIN(32) => multOp_n_121,
      PCIN(31) => multOp_n_122,
      PCIN(30) => multOp_n_123,
      PCIN(29) => multOp_n_124,
      PCIN(28) => multOp_n_125,
      PCIN(27) => multOp_n_126,
      PCIN(26) => multOp_n_127,
      PCIN(25) => multOp_n_128,
      PCIN(24) => multOp_n_129,
      PCIN(23) => multOp_n_130,
      PCIN(22) => multOp_n_131,
      PCIN(21) => multOp_n_132,
      PCIN(20) => multOp_n_133,
      PCIN(19) => multOp_n_134,
      PCIN(18) => multOp_n_135,
      PCIN(17) => multOp_n_136,
      PCIN(16) => multOp_n_137,
      PCIN(15) => multOp_n_138,
      PCIN(14) => multOp_n_139,
      PCIN(13) => multOp_n_140,
      PCIN(12) => multOp_n_141,
      PCIN(11) => multOp_n_142,
      PCIN(10) => multOp_n_143,
      PCIN(9) => multOp_n_144,
      PCIN(8) => multOp_n_145,
      PCIN(7) => multOp_n_146,
      PCIN(6) => multOp_n_147,
      PCIN(5) => multOp_n_148,
      PCIN(4) => multOp_n_149,
      PCIN(3) => multOp_n_150,
      PCIN(2) => multOp_n_151,
      PCIN(1) => multOp_n_152,
      PCIN(0) => multOp_n_153,
      PCOUT(47 downto 0) => \NLW_multOp__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_multOp__0_UNDERFLOW_UNCONNECTED\
    );
multOp_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(16),
      I1 => next_state_0(1),
      O => multOp_i_1_n_0
    );
multOp_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(7),
      I1 => next_state_0(1),
      O => multOp_i_10_n_0
    );
multOp_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(6),
      I1 => next_state_0(1),
      O => multOp_i_11_n_0
    );
multOp_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(5),
      I1 => next_state_0(1),
      O => multOp_i_12_n_0
    );
multOp_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(4),
      I1 => next_state_0(1),
      O => multOp_i_13_n_0
    );
multOp_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(3),
      I1 => next_state_0(1),
      O => multOp_i_14_n_0
    );
multOp_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(2),
      I1 => next_state_0(1),
      O => multOp_i_15_n_0
    );
multOp_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(1),
      I1 => next_state_0(1),
      O => multOp_i_16_n_0
    );
multOp_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(0),
      I1 => next_state_0(1),
      O => multOp_i_17_n_0
    );
multOp_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(15),
      I1 => next_state_0(1),
      O => multOp_i_2_n_0
    );
multOp_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(14),
      I1 => next_state_0(1),
      O => multOp_i_3_n_0
    );
multOp_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(13),
      I1 => next_state_0(1),
      O => multOp_i_4_n_0
    );
multOp_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(12),
      I1 => next_state_0(1),
      O => multOp_i_5_n_0
    );
multOp_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(11),
      I1 => next_state_0(1),
      O => multOp_i_6_n_0
    );
multOp_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(10),
      I1 => next_state_0(1),
      O => multOp_i_7_n_0
    );
multOp_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(9),
      I1 => next_state_0(1),
      O => multOp_i_8_n_0
    );
multOp_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => op1_IBUF(8),
      I1 => next_state_0(1),
      O => multOp_i_9_n_0
    );
p_1_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_1_out_carry_n_0,
      CO(2 downto 0) => NLW_p_1_out_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \tmpexp_reg_n_0_[0]\,
      DI(3) => \tmpexp_reg_n_0_[3]\,
      DI(2) => \tmpexp_reg_n_0_[2]\,
      DI(1) => \tmpexp_reg_n_0_[1]\,
      DI(0) => \p_1_out_carry_i_1__0_n_0\,
      O(3 downto 0) => data1(4 downto 1),
      S(3) => \p_1_out_carry_i_2__0_n_0\,
      S(2) => \p_1_out_carry_i_3__0_n_0\,
      S(1) => \p_1_out_carry_i_4__0_n_0\,
      S(0) => \p_1_out_carry_i_5__0_n_0\
    );
\p_1_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_1_out_carry_n_0,
      CO(3 downto 0) => \NLW_p_1_out_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \tmpexp_reg_n_0_[6]\,
      DI(1) => \tmpexp_reg_n_0_[5]\,
      DI(0) => \tmpexp_reg_n_0_[4]\,
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \p_1_out_carry__0_i_1__0_n_0\,
      S(2) => \p_1_out_carry__0_i_2__0_n_0\,
      S(1) => \p_1_out_carry__0_i_3__0_n_0\,
      S(0) => \p_1_out_carry__0_i_4__0_n_0\
    );
\p_1_out_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[7]\,
      I1 => p_0_in,
      O => \p_1_out_carry__0_i_1__0_n_0\
    );
\p_1_out_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[6]\,
      I1 => \tmpexp_reg_n_0_[7]\,
      O => \p_1_out_carry__0_i_2__0_n_0\
    );
\p_1_out_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[5]\,
      I1 => \tmpexp_reg_n_0_[6]\,
      O => \p_1_out_carry__0_i_3__0_n_0\
    );
\p_1_out_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[4]\,
      I1 => \tmpexp_reg_n_0_[5]\,
      O => \p_1_out_carry__0_i_4__0_n_0\
    );
\p_1_out_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      O => \p_1_out_carry_i_1__0_n_0\
    );
\p_1_out_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[3]\,
      I1 => \tmpexp_reg_n_0_[4]\,
      O => \p_1_out_carry_i_2__0_n_0\
    );
\p_1_out_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[2]\,
      I1 => \tmpexp_reg_n_0_[3]\,
      O => \p_1_out_carry_i_3__0_n_0\
    );
\p_1_out_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      I1 => \tmpexp_reg_n_0_[2]\,
      O => \p_1_out_carry_i_4__0_n_0\
    );
\p_1_out_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      I1 => next_state_0(2),
      O => \p_1_out_carry_i_5__0_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2 downto 0) => NLW_plusOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => L(22),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(26 downto 23),
      S(3 downto 0) => L(26 downto 23)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(30 downto 27),
      S(3 downto 0) => L(30 downto 27)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(34 downto 31),
      S(3 downto 0) => L(34 downto 31)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(38 downto 35),
      S(3 downto 0) => L(38 downto 35)
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(42 downto 39),
      S(3 downto 0) => L(42 downto 39)
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(46 downto 43),
      S(3 downto 0) => L(46 downto 43)
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => plusOp(47),
      S(3 downto 1) => B"000",
      S(0) => L(47)
    );
\res[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(0),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(0),
      I5 => \^next_state\(0),
      O => D(0)
    );
\res[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(0),
      I2 => next_state_0(4),
      O => \res[0]_i_1__1_n_0\
    );
\res[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(10),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(10),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(10),
      I5 => \^next_state\(0),
      O => D(10)
    );
\res[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(10),
      I2 => next_state_0(4),
      O => \res[10]_i_1__1_n_0\
    );
\res[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(11),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(11),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(11),
      I5 => \^next_state\(0),
      O => D(11)
    );
\res[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(11),
      I2 => next_state_0(4),
      O => \res[11]_i_1__1_n_0\
    );
\res[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(12),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(12),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(12),
      I5 => \^next_state\(0),
      O => D(12)
    );
\res[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(12),
      I2 => next_state_0(4),
      O => \res[12]_i_1__1_n_0\
    );
\res[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(13),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(13),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(13),
      I5 => \^next_state\(0),
      O => D(13)
    );
\res[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(13),
      I2 => next_state_0(4),
      O => \res[13]_i_1__1_n_0\
    );
\res[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(14),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(14),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(14),
      I5 => \^next_state\(0),
      O => D(14)
    );
\res[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(14),
      I2 => next_state_0(4),
      O => \res[14]_i_1__1_n_0\
    );
\res[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(15),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(15),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(15),
      I5 => \^next_state\(0),
      O => D(15)
    );
\res[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(15),
      I2 => next_state_0(4),
      O => \res[15]_i_1__1_n_0\
    );
\res[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(16),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(16),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(16),
      I5 => \^next_state\(0),
      O => D(16)
    );
\res[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(16),
      I2 => next_state_0(4),
      O => \res[16]_i_1__1_n_0\
    );
\res[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(17),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(17),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(17),
      I5 => \^next_state\(0),
      O => D(17)
    );
\res[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(17),
      I2 => next_state_0(4),
      O => \res[17]_i_1__1_n_0\
    );
\res[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(18),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(18),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(18),
      I5 => \^next_state\(0),
      O => D(18)
    );
\res[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(18),
      I2 => next_state_0(4),
      O => \res[18]_i_1__1_n_0\
    );
\res[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(19),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(19),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(19),
      I5 => \^next_state\(0),
      O => D(19)
    );
\res[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(19),
      I2 => next_state_0(4),
      O => \res[19]_i_1__1_n_0\
    );
\res[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(1),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(1),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(1),
      I5 => \^next_state\(0),
      O => D(1)
    );
\res[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(1),
      I2 => next_state_0(4),
      O => \res[1]_i_1__1_n_0\
    );
\res[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(20),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(20),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(20),
      I5 => \^next_state\(0),
      O => D(20)
    );
\res[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(20),
      I2 => next_state_0(4),
      O => \res[20]_i_1__1_n_0\
    );
\res[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(21),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(21),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(21),
      I5 => \^next_state\(0),
      O => D(21)
    );
\res[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(21),
      I2 => next_state_0(4),
      O => \res[21]_i_1__1_n_0\
    );
\res[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(22),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(22),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(22),
      I5 => \^next_state\(0),
      O => D(22)
    );
\res[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(22),
      I2 => next_state_0(4),
      O => \res[22]_i_1__1_n_0\
    );
\res[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(23),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(23),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(23),
      I5 => \^next_state\(0),
      O => D(23)
    );
\res[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(0),
      I2 => next_state_0(4),
      O => \res[23]_i_1__1_n_0\
    );
\res[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(24),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(24),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(24),
      I5 => \^next_state\(0),
      O => D(24)
    );
\res[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(1),
      I2 => next_state_0(4),
      O => \res[24]_i_1__1_n_0\
    );
\res[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(25),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(25),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(25),
      I5 => \^next_state\(0),
      O => D(25)
    );
\res[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(2),
      I2 => next_state_0(4),
      O => \res[25]_i_1__1_n_0\
    );
\res[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(26),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(26),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(26),
      I5 => \^next_state\(0),
      O => D(26)
    );
\res[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(3),
      I2 => next_state_0(4),
      O => \res[26]_i_1__1_n_0\
    );
\res[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(27),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(27),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(27),
      I5 => \^next_state\(0),
      O => D(27)
    );
\res[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(4),
      I2 => next_state_0(4),
      O => \res[27]_i_1__1_n_0\
    );
\res[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(28),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(28),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(28),
      I5 => \^next_state\(0),
      O => D(28)
    );
\res[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(5),
      I2 => next_state_0(4),
      O => \res[28]_i_1__1_n_0\
    );
\res[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(29),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(29),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(29),
      I5 => \^next_state\(0),
      O => D(29)
    );
\res[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(6),
      I2 => next_state_0(4),
      O => \res[29]_i_1__1_n_0\
    );
\res[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(2),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(2),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(2),
      I5 => \^next_state\(0),
      O => D(2)
    );
\res[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(2),
      I2 => next_state_0(4),
      O => \res[2]_i_1__1_n_0\
    );
\res[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(30),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(30),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(30),
      I5 => \^next_state\(0),
      O => D(30)
    );
\res[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => exp(7),
      I2 => next_state_0(4),
      O => \res[30]_i_1__1_n_0\
    );
\res[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00000000001D"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => state(2),
      I2 => \state[0]_i_3_n_0\,
      I3 => \res[31]_i_3_n_0\,
      I4 => next_state_0(4),
      I5 => next_state_0(2),
      O => resrdy0
    );
\res[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(31),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(31),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(31),
      I5 => \^next_state\(0),
      O => D(31)
    );
\res[31]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => \s__0\,
      I2 => next_state_0(4),
      O => \res[31]_i_2__1_n_0\
    );
\res[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF55A6"
    )
        port map (
      I0 => next_state_0(1),
      I1 => \res[31]_i_4_n_0\,
      I2 => g0_b0_i_21_n_0,
      I3 => g0_b0_i_22_n_0,
      I4 => next_state_0(3),
      I5 => reset_IBUF,
      O => \res[31]_i_3_n_0\
    );
\res[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAFBFBFB"
    )
        port map (
      I0 => g0_b0_i_15_n_0,
      I1 => g0_b0_i_38_n_0,
      I2 => \^op2[23]\,
      I3 => g0_b0_i_39_n_0,
      I4 => \^op1[24]\,
      I5 => state(0),
      O => \res[31]_i_4_n_0\
    );
\res[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(3),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(3),
      I5 => \^next_state\(0),
      O => D(3)
    );
\res[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(3),
      I2 => next_state_0(4),
      O => \res[3]_i_1__1_n_0\
    );
\res[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(4),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(4),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(4),
      I5 => \^next_state\(0),
      O => D(4)
    );
\res[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(4),
      I2 => next_state_0(4),
      O => \res[4]_i_1__1_n_0\
    );
\res[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(5),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(5),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(5),
      I5 => \^next_state\(0),
      O => D(5)
    );
\res[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(5),
      I2 => next_state_0(4),
      O => \res[5]_i_1__1_n_0\
    );
\res[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(6),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(6),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(6),
      I5 => \^next_state\(0),
      O => D(6)
    );
\res[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(6),
      I2 => next_state_0(4),
      O => \res[6]_i_1__1_n_0\
    );
\res[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(7),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(7),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(7),
      I5 => \^next_state\(0),
      O => D(7)
    );
\res[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(7),
      I2 => next_state_0(4),
      O => \res[7]_i_1__1_n_0\
    );
\res[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(8),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(8),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(8),
      I5 => \^next_state\(0),
      O => D(8)
    );
\res[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(8),
      I2 => next_state_0(4),
      O => \res[8]_i_1__1_n_0\
    );
\res[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFC0C0C0"
    )
        port map (
      I0 => Q(9),
      I1 => \^next_state\(1),
      I2 => \res_reg[31]_0\(9),
      I3 => \res_reg[0]_0\(0),
      I4 => res_vhdl(9),
      I5 => \^next_state\(0),
      O => D(9)
    );
\res[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => next_state_0(0),
      I1 => m(9),
      I2 => next_state_0(4),
      O => \res[9]_i_1__1_n_0\
    );
\res_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[0]_i_1__1_n_0\,
      Q => res_vhdl(0),
      R => '0'
    );
\res_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[10]_i_1__1_n_0\,
      Q => res_vhdl(10),
      R => '0'
    );
\res_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[11]_i_1__1_n_0\,
      Q => res_vhdl(11),
      R => '0'
    );
\res_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[12]_i_1__1_n_0\,
      Q => res_vhdl(12),
      R => '0'
    );
\res_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[13]_i_1__1_n_0\,
      Q => res_vhdl(13),
      R => '0'
    );
\res_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[14]_i_1__1_n_0\,
      Q => res_vhdl(14),
      R => '0'
    );
\res_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[15]_i_1__1_n_0\,
      Q => res_vhdl(15),
      R => '0'
    );
\res_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[16]_i_1__1_n_0\,
      Q => res_vhdl(16),
      R => '0'
    );
\res_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[17]_i_1__1_n_0\,
      Q => res_vhdl(17),
      R => '0'
    );
\res_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[18]_i_1__1_n_0\,
      Q => res_vhdl(18),
      R => '0'
    );
\res_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[19]_i_1__1_n_0\,
      Q => res_vhdl(19),
      R => '0'
    );
\res_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[1]_i_1__1_n_0\,
      Q => res_vhdl(1),
      R => '0'
    );
\res_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[20]_i_1__1_n_0\,
      Q => res_vhdl(20),
      R => '0'
    );
\res_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[21]_i_1__1_n_0\,
      Q => res_vhdl(21),
      R => '0'
    );
\res_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[22]_i_1__1_n_0\,
      Q => res_vhdl(22),
      R => '0'
    );
\res_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[23]_i_1__1_n_0\,
      Q => res_vhdl(23),
      R => '0'
    );
\res_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[24]_i_1__1_n_0\,
      Q => res_vhdl(24),
      R => '0'
    );
\res_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[25]_i_1__1_n_0\,
      Q => res_vhdl(25),
      R => '0'
    );
\res_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[26]_i_1__1_n_0\,
      Q => res_vhdl(26),
      R => '0'
    );
\res_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[27]_i_1__1_n_0\,
      Q => res_vhdl(27),
      R => '0'
    );
\res_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[28]_i_1__1_n_0\,
      Q => res_vhdl(28),
      R => '0'
    );
\res_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[29]_i_1__1_n_0\,
      Q => res_vhdl(29),
      R => '0'
    );
\res_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[2]_i_1__1_n_0\,
      Q => res_vhdl(2),
      R => '0'
    );
\res_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[30]_i_1__1_n_0\,
      Q => res_vhdl(30),
      R => '0'
    );
\res_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[31]_i_2__1_n_0\,
      Q => res_vhdl(31),
      R => '0'
    );
\res_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[3]_i_1__1_n_0\,
      Q => res_vhdl(3),
      R => '0'
    );
\res_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[4]_i_1__1_n_0\,
      Q => res_vhdl(4),
      R => '0'
    );
\res_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[5]_i_1__1_n_0\,
      Q => res_vhdl(5),
      R => '0'
    );
\res_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[6]_i_1__1_n_0\,
      Q => res_vhdl(6),
      R => '0'
    );
\res_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[7]_i_1__1_n_0\,
      Q => res_vhdl(7),
      R => '0'
    );
\res_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[8]_i_1__1_n_0\,
      Q => res_vhdl(8),
      R => '0'
    );
\res_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => resrdy0,
      D => \res[9]_i_1__1_n_0\,
      Q => res_vhdl(9),
      R => '0'
    );
\resrdy[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \tmp_reg[31]\(2),
      I1 => \tmp_reg[31]\(0),
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(1),
      O => \state_reg[2]_0\(0)
    );
resrdy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACC"
    )
        port map (
      I0 => next_state_0(1),
      I1 => \^res_vhdl_rdy\,
      I2 => next_state_0(3),
      I3 => resrdy0,
      O => resrdy_i_1_n_0
    );
resrdy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => resrdy_i_1_n_0,
      Q => \^res_vhdl_rdy\,
      R => '0'
    );
\s_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEF3FC00020000"
    )
        port map (
      I0 => \^op1[31]\,
      I1 => next_state_0(0),
      I2 => \s_i_2__0_n_0\,
      I3 => next_state_0(2),
      I4 => next_state_0(1),
      I5 => \s__0\,
      O => \s_i_1__0_n_0\
    );
s_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(31),
      I1 => op2_IBUF(31),
      O => \^op1[31]\
    );
\s_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => next_state_0(3),
      I1 => reset_IBUF,
      I2 => next_state_0(4),
      O => \s_i_2__0_n_0\
    );
s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \s_i_1__0_n_0\,
      Q => \s__0\,
      R => '0'
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2377"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => \tmp_reg[31]\(2),
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      O => \^next_state\(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAEAEAAEEEEEE"
    )
        port map (
      I0 => \tmpm[47]_i_5_n_0\,
      I1 => g0_b0_i_9_n_0,
      I2 => \state[0]_i_4_n_0\,
      I3 => L(23),
      I4 => state(4),
      I5 => state(1),
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
        port map (
      I0 => state(4),
      I1 => state(1),
      I2 => \state[0]_i_5_n_0\,
      I3 => state(3),
      I4 => state(0),
      I5 => \state[0]_i_6_n_0\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F33000005110511"
    )
        port map (
      I0 => \state[0]_i_2_0\,
      I1 => \state[0]_i_2_1\,
      I2 => \^op1[24]\,
      I3 => g0_b0_i_39_n_0,
      I4 => \^op2[23]\,
      I5 => g0_b0_i_38_n_0,
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(47),
      I1 => L(46),
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3226302412061004"
    )
        port map (
      I0 => state(1),
      I1 => state(4),
      I2 => state(3),
      I3 => p_0_in,
      I4 => \^g0_b0_i_28_0\,
      I5 => \state[0]_i_7_n_0\,
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \tmpexp_reg_n_0_[1]\,
      I1 => \tmpexp_reg_n_0_[4]\,
      I2 => \tmpexp_reg_n_0_[3]\,
      I3 => g0_b0_i_23_n_0,
      O => \state[0]_i_7_n_0\
    );
\state[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => op1_IBUF(24),
      I1 => op1_IBUF(23),
      I2 => op1_IBUF(26),
      I3 => op1_IBUF(25),
      I4 => g0_b0_i_25_n_0,
      O => \^op1[24]\
    );
\state[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006222"
    )
        port map (
      I0 => \tmp_reg[31]\(2),
      I1 => \tmp_reg[31]\(0),
      I2 => \^res_vhdl_rdy\,
      I3 => res_verilog_rdy,
      I4 => \tmp_reg[31]\(1),
      O => \^next_state\(1)
    );
\state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => op2_IBUF(23),
      I1 => op2_IBUF(30),
      I2 => op2_IBUF(25),
      I3 => op2_IBUF(27),
      I4 => g0_b0_i_27_n_0,
      O => \^op2[23]\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => next_state_0(0),
      Q => state(0)
    );
\state_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[0]_i_3_n_0\,
      O => next_state_0(0),
      S => state(2)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => next_state_0(1),
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => next_state_0(2),
      Q => state(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => next_state_0(3),
      Q => state(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => next_state_0(4),
      Q => state(4)
    );
\tmp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(0),
      O => \state_reg[1]_0\(0)
    );
\tmp[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(10),
      O => \state_reg[1]_0\(10)
    );
\tmp[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(11),
      O => \state_reg[1]_0\(11)
    );
\tmp[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(12),
      O => \state_reg[1]_0\(12)
    );
\tmp[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(13),
      O => \state_reg[1]_0\(13)
    );
\tmp[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(14),
      O => \state_reg[1]_0\(14)
    );
\tmp[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(15),
      O => \state_reg[1]_0\(15)
    );
\tmp[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(16),
      O => \state_reg[1]_0\(16)
    );
\tmp[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(17),
      O => \state_reg[1]_0\(17)
    );
\tmp[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(18),
      O => \state_reg[1]_0\(18)
    );
\tmp[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(19),
      O => \state_reg[1]_0\(19)
    );
\tmp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(1),
      O => \state_reg[1]_0\(1)
    );
\tmp[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(20),
      O => \state_reg[1]_0\(20)
    );
\tmp[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(21),
      O => \state_reg[1]_0\(21)
    );
\tmp[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(22),
      O => \state_reg[1]_0\(22)
    );
\tmp[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(23),
      O => \state_reg[1]_0\(23)
    );
\tmp[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(24),
      O => \state_reg[1]_0\(24)
    );
\tmp[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(25),
      O => \state_reg[1]_0\(25)
    );
\tmp[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(26),
      O => \state_reg[1]_0\(26)
    );
\tmp[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(27),
      O => \state_reg[1]_0\(27)
    );
\tmp[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(28),
      O => \state_reg[1]_0\(28)
    );
\tmp[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(29),
      O => \state_reg[1]_0\(29)
    );
\tmp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(2),
      O => \state_reg[1]_0\(2)
    );
\tmp[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(30),
      O => \state_reg[1]_0\(30)
    );
\tmp[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F080"
    )
        port map (
      I0 => \^res_vhdl_rdy\,
      I1 => res_verilog_rdy,
      I2 => \tmp_reg[31]\(0),
      I3 => \tmp_reg[31]\(2),
      I4 => \tmp_reg[31]\(1),
      O => E(0)
    );
\tmp[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(31),
      O => \state_reg[1]_0\(31)
    );
\tmp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(3),
      O => \state_reg[1]_0\(3)
    );
\tmp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(4),
      O => \state_reg[1]_0\(4)
    );
\tmp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(5),
      O => \state_reg[1]_0\(5)
    );
\tmp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(6),
      O => \state_reg[1]_0\(6)
    );
\tmp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(7),
      O => \state_reg[1]_0\(7)
    );
\tmp[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(8),
      O => \state_reg[1]_0\(8)
    );
\tmp[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055400000000000"
    )
        port map (
      I0 => \tmp_reg[31]\(1),
      I1 => res_verilog_rdy,
      I2 => \^res_vhdl_rdy\,
      I3 => \tmp_reg[31]\(0),
      I4 => \tmp_reg[31]\(2),
      I5 => res_vhdl(9),
      O => \state_reg[1]_0\(9)
    );
\tmpexp[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFA8AA"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => next_state_0(0),
      I3 => \tmpexp[0]_i_2_n_0\,
      I4 => next_state_0(4),
      I5 => \tmpexp_reg_n_0_[0]\,
      O => tmpexp(0)
    );
\tmpexp[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(23),
      I1 => op2_IBUF(23),
      O => \tmpexp[0]_i_2_n_0\
    );
\tmpexp[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(1),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(1),
      O => tmpexp(1)
    );
\tmpexp[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(2),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(2),
      O => tmpexp(2)
    );
\tmpexp[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(3),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(3),
      O => tmpexp(3)
    );
\tmpexp[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(26),
      I1 => op2_IBUF(26),
      O => \tmpexp[3]_i_3_n_0\
    );
\tmpexp[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(25),
      I1 => op2_IBUF(25),
      O => \tmpexp[3]_i_4_n_0\
    );
\tmpexp[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(24),
      I1 => op2_IBUF(24),
      O => \tmpexp[3]_i_5_n_0\
    );
\tmpexp[3]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(23),
      I1 => op2_IBUF(23),
      O => \tmpexp[3]_i_6__0_n_0\
    );
\tmpexp[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(4),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(4),
      O => tmpexp(4)
    );
\tmpexp[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(5),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(5),
      O => tmpexp(5)
    );
\tmpexp[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(6),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(6),
      O => tmpexp(6)
    );
\tmpexp[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(7),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(7),
      O => tmpexp(7)
    );
\tmpexp[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => op2_IBUF(30),
      I1 => op1_IBUF(30),
      O => \tmpexp[7]_i_3_n_0\
    );
\tmpexp[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(29),
      I1 => op2_IBUF(29),
      O => \tmpexp[7]_i_4_n_0\
    );
\tmpexp[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(28),
      I1 => op2_IBUF(28),
      O => \tmpexp[7]_i_5_n_0\
    );
\tmpexp[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => op1_IBUF(27),
      I1 => op2_IBUF(27),
      O => \tmpexp[7]_i_6_n_0\
    );
\tmpexp[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0A0A2F0F0A080"
    )
        port map (
      I0 => next_state_0(3),
      I1 => next_state_0(2),
      I2 => data1(8),
      I3 => next_state_0(0),
      I4 => next_state_0(4),
      I5 => data0(8),
      O => tmpexp(8)
    );
\tmpexp[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => op2_IBUF(30),
      O => \tmpexp[8]_i_3_n_0\
    );
\tmpexp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(0),
      Q => \tmpexp_reg_n_0_[0]\,
      R => '0'
    );
\tmpexp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(1),
      Q => \tmpexp_reg_n_0_[1]\,
      R => '0'
    );
\tmpexp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(2),
      Q => \tmpexp_reg_n_0_[2]\,
      R => '0'
    );
\tmpexp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(3),
      Q => \tmpexp_reg_n_0_[3]\,
      R => '0'
    );
\tmpexp_reg[3]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmpexp_reg[3]_i_2__0_n_0\,
      CO(2 downto 0) => \NLW_tmpexp_reg[3]_i_2__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => op1_IBUF(26 downto 23),
      O(3 downto 1) => data0(3 downto 1),
      O(0) => \NLW_tmpexp_reg[3]_i_2__0_O_UNCONNECTED\(0),
      S(3) => \tmpexp[3]_i_3_n_0\,
      S(2) => \tmpexp[3]_i_4_n_0\,
      S(1) => \tmpexp[3]_i_5_n_0\,
      S(0) => \tmpexp[3]_i_6__0_n_0\
    );
\tmpexp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(4),
      Q => \tmpexp_reg_n_0_[4]\,
      R => '0'
    );
\tmpexp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(5),
      Q => \tmpexp_reg_n_0_[5]\,
      R => '0'
    );
\tmpexp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(6),
      Q => \tmpexp_reg_n_0_[6]\,
      R => '0'
    );
\tmpexp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(7),
      Q => \tmpexp_reg_n_0_[7]\,
      R => '0'
    );
\tmpexp_reg[7]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpexp_reg[3]_i_2__0_n_0\,
      CO(3) => \tmpexp_reg[7]_i_2__0_n_0\,
      CO(2 downto 0) => \NLW_tmpexp_reg[7]_i_2__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => op1_IBUF(30 downto 27),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \tmpexp[7]_i_3_n_0\,
      S(2) => \tmpexp[7]_i_4_n_0\,
      S(1) => \tmpexp[7]_i_5_n_0\,
      S(0) => \tmpexp[7]_i_6_n_0\
    );
\tmpexp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpexp0,
      D => tmpexp(8),
      Q => p_0_in,
      R => '0'
    );
\tmpexp_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmpexp_reg[7]_i_2__0_n_0\,
      CO(3 downto 0) => \NLW_tmpexp_reg[8]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_tmpexp_reg[8]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(8),
      S(3 downto 1) => B"000",
      S(0) => \tmpexp[8]_i_3_n_0\
    );
\tmpm[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB88B888B888B8"
    )
        port map (
      I0 => L(23),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => L(22),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_100\,
      O => \tmpm[22]_i_1__0_n_0\
    );
\tmpm[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(24),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(23),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_99\,
      O => \tmpm[23]_i_1__0_n_0\
    );
\tmpm[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(25),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(24),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_98\,
      O => \tmpm[24]_i_1__0_n_0\
    );
\tmpm[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(26),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(25),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_97\,
      O => \tmpm[25]_i_1__0_n_0\
    );
\tmpm[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(27),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(26),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_96\,
      O => \tmpm[26]_i_1__0_n_0\
    );
\tmpm[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(28),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(27),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_95\,
      O => \tmpm[27]_i_1__0_n_0\
    );
\tmpm[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(29),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(28),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_94\,
      O => \tmpm[28]_i_1__0_n_0\
    );
\tmpm[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(30),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(29),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_93\,
      O => \tmpm[29]_i_1__0_n_0\
    );
\tmpm[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(31),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(30),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_92\,
      O => \tmpm[30]_i_1__0_n_0\
    );
\tmpm[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(32),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(31),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_91\,
      O => \tmpm[31]_i_1__0_n_0\
    );
\tmpm[32]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(33),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(32),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_90\,
      O => \tmpm[32]_i_1__0_n_0\
    );
\tmpm[33]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(34),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(33),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_89\,
      O => \tmpm[33]_i_1__0_n_0\
    );
\tmpm[34]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(35),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(34),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_88\,
      O => \tmpm[34]_i_1__0_n_0\
    );
\tmpm[35]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(36),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(35),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_87\,
      O => \tmpm[35]_i_1__0_n_0\
    );
\tmpm[36]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(37),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(36),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_86\,
      O => \tmpm[36]_i_1__0_n_0\
    );
\tmpm[37]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(38),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(37),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_85\,
      O => \tmpm[37]_i_1__0_n_0\
    );
\tmpm[38]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(39),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(38),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_84\,
      O => \tmpm[38]_i_1__0_n_0\
    );
\tmpm[39]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(40),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(39),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_83\,
      O => \tmpm[39]_i_1__0_n_0\
    );
\tmpm[40]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(41),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(40),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_82\,
      O => \tmpm[40]_i_1__0_n_0\
    );
\tmpm[41]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(42),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(41),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_81\,
      O => \tmpm[41]_i_1__0_n_0\
    );
\tmpm[42]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(43),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(42),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_80\,
      O => \tmpm[42]_i_1__0_n_0\
    );
\tmpm[43]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(44),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(43),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_79\,
      O => \tmpm[43]_i_1__0_n_0\
    );
\tmpm[44]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(45),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(44),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_78\,
      O => \tmpm[44]_i_1__0_n_0\
    );
\tmpm[45]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(46),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(45),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_77\,
      O => \tmpm[45]_i_1__0_n_0\
    );
\tmpm[46]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002029"
    )
        port map (
      I0 => next_state_0(1),
      I1 => next_state_0(4),
      I2 => next_state_0(3),
      I3 => next_state_0(0),
      I4 => next_state_0(2),
      I5 => reset_IBUF,
      O => tmpm0(46)
    );
\tmpm[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB888B888B888"
    )
        port map (
      I0 => L(47),
      I1 => next_state_0(0),
      I2 => next_state_0(4),
      I3 => plusOp(46),
      I4 => next_state_0(3),
      I5 => \multOp__0_n_76\,
      O => \tmpm[46]_i_2_n_0\
    );
\tmpm[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEEE02000222"
    )
        port map (
      I0 => \tmpm[47]_i_2__0_n_0\,
      I1 => reset_IBUF,
      I2 => \tmpm[47]_i_3_n_0\,
      I3 => next_state_0(1),
      I4 => \tmpm[47]_i_4_n_0\,
      I5 => L(47),
      O => \tmpm[47]_i_1_n_0\
    );
\tmpm[47]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004744"
    )
        port map (
      I0 => \state[0]_i_3_n_0\,
      I1 => state(2),
      I2 => \tmpm[47]_i_5_n_0\,
      I3 => \tmpm[47]_i_6_n_0\,
      I4 => next_state_0(2),
      I5 => \tmpm[47]_i_7_n_0\,
      O => \tmpm[47]_i_2__0_n_0\
    );
\tmpm[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0C0000FFFFFD5D"
    )
        port map (
      I0 => next_state_0(4),
      I1 => \state[0]_i_2_n_0\,
      I2 => state(2),
      I3 => \state[0]_i_3_n_0\,
      I4 => next_state_0(2),
      I5 => next_state_0(3),
      O => \tmpm[47]_i_3_n_0\
    );
\tmpm[47]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFFEFEFEBFFE"
    )
        port map (
      I0 => next_state_0(4),
      I1 => next_state_0(3),
      I2 => next_state_0(2),
      I3 => \state[0]_i_2_n_0\,
      I4 => state(2),
      I5 => \state[0]_i_3_n_0\,
      O => \tmpm[47]_i_4_n_0\
    );
\tmpm[47]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004400000000000F"
    )
        port map (
      I0 => state(0),
      I1 => L(47),
      I2 => inrdy_IBUF(0),
      I3 => state(4),
      I4 => state(1),
      I5 => state(3),
      O => \tmpm[47]_i_5_n_0\
    );
\tmpm[47]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6240"
    )
        port map (
      I0 => state(1),
      I1 => state(4),
      I2 => L(23),
      I3 => \state[0]_i_4_n_0\,
      I4 => state(3),
      I5 => state(0),
      O => \tmpm[47]_i_6_n_0\
    );
\tmpm[47]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => plusOp(47),
      I1 => next_state_0(4),
      I2 => next_state_0(3),
      I3 => \multOp__0_n_75\,
      O => \tmpm[47]_i_7_n_0\
    );
\tmpm_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[22]_i_1__0_n_0\,
      Q => L(22),
      R => '0'
    );
\tmpm_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[23]_i_1__0_n_0\,
      Q => L(23),
      R => '0'
    );
\tmpm_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[24]_i_1__0_n_0\,
      Q => L(24),
      R => '0'
    );
\tmpm_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[25]_i_1__0_n_0\,
      Q => L(25),
      R => '0'
    );
\tmpm_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[26]_i_1__0_n_0\,
      Q => L(26),
      R => '0'
    );
\tmpm_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[27]_i_1__0_n_0\,
      Q => L(27),
      R => '0'
    );
\tmpm_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[28]_i_1__0_n_0\,
      Q => L(28),
      R => '0'
    );
\tmpm_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[29]_i_1__0_n_0\,
      Q => L(29),
      R => '0'
    );
\tmpm_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[30]_i_1__0_n_0\,
      Q => L(30),
      R => '0'
    );
\tmpm_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[31]_i_1__0_n_0\,
      Q => L(31),
      R => '0'
    );
\tmpm_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[32]_i_1__0_n_0\,
      Q => L(32),
      R => '0'
    );
\tmpm_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[33]_i_1__0_n_0\,
      Q => L(33),
      R => '0'
    );
\tmpm_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[34]_i_1__0_n_0\,
      Q => L(34),
      R => '0'
    );
\tmpm_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[35]_i_1__0_n_0\,
      Q => L(35),
      R => '0'
    );
\tmpm_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[36]_i_1__0_n_0\,
      Q => L(36),
      R => '0'
    );
\tmpm_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[37]_i_1__0_n_0\,
      Q => L(37),
      R => '0'
    );
\tmpm_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[38]_i_1__0_n_0\,
      Q => L(38),
      R => '0'
    );
\tmpm_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[39]_i_1__0_n_0\,
      Q => L(39),
      R => '0'
    );
\tmpm_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[40]_i_1__0_n_0\,
      Q => L(40),
      R => '0'
    );
\tmpm_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[41]_i_1__0_n_0\,
      Q => L(41),
      R => '0'
    );
\tmpm_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[42]_i_1__0_n_0\,
      Q => L(42),
      R => '0'
    );
\tmpm_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[43]_i_1__0_n_0\,
      Q => L(43),
      R => '0'
    );
\tmpm_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[44]_i_1__0_n_0\,
      Q => L(44),
      R => '0'
    );
\tmpm_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[45]_i_1__0_n_0\,
      Q => L(45),
      R => '0'
    );
\tmpm_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tmpm0(46),
      D => \tmpm[46]_i_2_n_0\,
      Q => L(46),
      R => '0'
    );
\tmpm_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \tmpm[47]_i_1_n_0\,
      Q => L(47),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tl is
  port (
    op1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    op2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inrdy : in STD_LOGIC_VECTOR ( 1 downto 0 );
    res : out STD_LOGIC_VECTOR ( 31 downto 0 );
    resrdy : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of tl : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of tl : entity is "78eb1161";
end tl;

architecture STRUCTURE of tl is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal inrdy_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal multiplier_verilog_n_1 : STD_LOGIC;
  signal multiplier_verilog_n_2 : STD_LOGIC;
  signal multiplier_verilog_n_3 : STD_LOGIC;
  signal multiplier_verilog_n_4 : STD_LOGIC;
  signal multiplier_verilog_n_5 : STD_LOGIC;
  signal multiplier_vhdl_n_1 : STD_LOGIC;
  signal multiplier_vhdl_n_10 : STD_LOGIC;
  signal multiplier_vhdl_n_11 : STD_LOGIC;
  signal multiplier_vhdl_n_12 : STD_LOGIC;
  signal multiplier_vhdl_n_13 : STD_LOGIC;
  signal multiplier_vhdl_n_14 : STD_LOGIC;
  signal multiplier_vhdl_n_15 : STD_LOGIC;
  signal multiplier_vhdl_n_16 : STD_LOGIC;
  signal multiplier_vhdl_n_17 : STD_LOGIC;
  signal multiplier_vhdl_n_18 : STD_LOGIC;
  signal multiplier_vhdl_n_19 : STD_LOGIC;
  signal multiplier_vhdl_n_2 : STD_LOGIC;
  signal multiplier_vhdl_n_20 : STD_LOGIC;
  signal multiplier_vhdl_n_21 : STD_LOGIC;
  signal multiplier_vhdl_n_22 : STD_LOGIC;
  signal multiplier_vhdl_n_23 : STD_LOGIC;
  signal multiplier_vhdl_n_24 : STD_LOGIC;
  signal multiplier_vhdl_n_25 : STD_LOGIC;
  signal multiplier_vhdl_n_26 : STD_LOGIC;
  signal multiplier_vhdl_n_27 : STD_LOGIC;
  signal multiplier_vhdl_n_28 : STD_LOGIC;
  signal multiplier_vhdl_n_29 : STD_LOGIC;
  signal multiplier_vhdl_n_3 : STD_LOGIC;
  signal multiplier_vhdl_n_30 : STD_LOGIC;
  signal multiplier_vhdl_n_31 : STD_LOGIC;
  signal multiplier_vhdl_n_32 : STD_LOGIC;
  signal multiplier_vhdl_n_33 : STD_LOGIC;
  signal multiplier_vhdl_n_34 : STD_LOGIC;
  signal multiplier_vhdl_n_35 : STD_LOGIC;
  signal multiplier_vhdl_n_36 : STD_LOGIC;
  signal multiplier_vhdl_n_37 : STD_LOGIC;
  signal multiplier_vhdl_n_38 : STD_LOGIC;
  signal multiplier_vhdl_n_4 : STD_LOGIC;
  signal multiplier_vhdl_n_5 : STD_LOGIC;
  signal multiplier_vhdl_n_6 : STD_LOGIC;
  signal multiplier_vhdl_n_7 : STD_LOGIC;
  signal multiplier_vhdl_n_73 : STD_LOGIC;
  signal multiplier_vhdl_n_74 : STD_LOGIC;
  signal multiplier_vhdl_n_8 : STD_LOGIC;
  signal multiplier_vhdl_n_9 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal op1_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal op2_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal res_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal res_verilog : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal res_verilog_rdy : STD_LOGIC;
  signal res_vhdl_rdy : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal resrdy_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tmp : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\inrdy_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inrdy(0),
      O => inrdy_IBUF(0)
    );
\inrdy_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => inrdy(1),
      O => inrdy_IBUF(1)
    );
multiplier_verilog: entity work.mul_ieee754_verilog
     port map (
      E(0) => multiplier_verilog_n_5,
      Q(2 downto 0) => state(2 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      inrdy_IBUF(0) => inrdy_IBUF(0),
      next_state(0) => next_state(1),
      \op1[24]\ => multiplier_verilog_n_1,
      \op1[30]\ => multiplier_verilog_n_4,
      op1_IBUF(30 downto 0) => op1_IBUF(30 downto 0),
      \op2[24]\ => multiplier_verilog_n_2,
      \op2[30]\ => multiplier_verilog_n_3,
      op2_IBUF(30 downto 0) => op2_IBUF(30 downto 0),
      \res_reg[31]_0\(31 downto 0) => res_verilog(31 downto 0),
      res_verilog_rdy => res_verilog_rdy,
      res_vhdl_rdy => res_vhdl_rdy,
      reset_IBUF => reset_IBUF,
      s_reg_0 => multiplier_vhdl_n_5,
      \state[2]_i_4_0\ => multiplier_vhdl_n_3,
      \state[2]_i_4_1\ => multiplier_vhdl_n_4,
      \state_reg[2]_0\ => multiplier_vhdl_n_1,
      \state_reg[2]_1\ => multiplier_vhdl_n_2,
      \state_reg[3]_0\ => multiplier_vhdl_n_6
    );
multiplier_vhdl: entity work.mul_ieee754_vhdl
     port map (
      D(31) => multiplier_vhdl_n_7,
      D(30) => multiplier_vhdl_n_8,
      D(29) => multiplier_vhdl_n_9,
      D(28) => multiplier_vhdl_n_10,
      D(27) => multiplier_vhdl_n_11,
      D(26) => multiplier_vhdl_n_12,
      D(25) => multiplier_vhdl_n_13,
      D(24) => multiplier_vhdl_n_14,
      D(23) => multiplier_vhdl_n_15,
      D(22) => multiplier_vhdl_n_16,
      D(21) => multiplier_vhdl_n_17,
      D(20) => multiplier_vhdl_n_18,
      D(19) => multiplier_vhdl_n_19,
      D(18) => multiplier_vhdl_n_20,
      D(17) => multiplier_vhdl_n_21,
      D(16) => multiplier_vhdl_n_22,
      D(15) => multiplier_vhdl_n_23,
      D(14) => multiplier_vhdl_n_24,
      D(13) => multiplier_vhdl_n_25,
      D(12) => multiplier_vhdl_n_26,
      D(11) => multiplier_vhdl_n_27,
      D(10) => multiplier_vhdl_n_28,
      D(9) => multiplier_vhdl_n_29,
      D(8) => multiplier_vhdl_n_30,
      D(7) => multiplier_vhdl_n_31,
      D(6) => multiplier_vhdl_n_32,
      D(5) => multiplier_vhdl_n_33,
      D(4) => multiplier_vhdl_n_34,
      D(3) => multiplier_vhdl_n_35,
      D(2) => multiplier_vhdl_n_36,
      D(1) => multiplier_vhdl_n_37,
      D(0) => multiplier_vhdl_n_38,
      E(0) => multiplier_vhdl_n_73,
      Q(31 downto 0) => tmp(31 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      g0_b0_i_28_0 => multiplier_vhdl_n_6,
      g0_b0_i_4_0 => multiplier_verilog_n_3,
      g0_b0_i_4_1 => multiplier_verilog_n_4,
      inrdy_IBUF(0) => inrdy_IBUF(1),
      next_state(1) => next_state(2),
      next_state(0) => next_state(0),
      \op1[24]\ => multiplier_vhdl_n_1,
      \op1[25]\ => multiplier_vhdl_n_4,
      \op1[31]\ => multiplier_vhdl_n_5,
      op1_IBUF(31 downto 0) => op1_IBUF(31 downto 0),
      \op2[23]\ => multiplier_vhdl_n_2,
      \op2[25]\ => multiplier_vhdl_n_3,
      op2_IBUF(31 downto 0) => op2_IBUF(31 downto 0),
      \res_reg[0]_0\(0) => next_state(1),
      \res_reg[31]_0\(31 downto 0) => res_verilog(31 downto 0),
      res_verilog_rdy => res_verilog_rdy,
      res_vhdl_rdy => res_vhdl_rdy,
      reset_IBUF => reset_IBUF,
      \state[0]_i_2_0\ => multiplier_verilog_n_2,
      \state[0]_i_2_1\ => multiplier_verilog_n_1,
      \state_reg[1]_0\(31 downto 0) => p_1_in(31 downto 0),
      \state_reg[2]_0\(0) => multiplier_vhdl_n_74,
      \tmp_reg[31]\(2 downto 0) => state(2 downto 0)
    );
\op1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(0),
      O => op1_IBUF(0)
    );
\op1_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(10),
      O => op1_IBUF(10)
    );
\op1_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(11),
      O => op1_IBUF(11)
    );
\op1_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(12),
      O => op1_IBUF(12)
    );
\op1_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(13),
      O => op1_IBUF(13)
    );
\op1_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(14),
      O => op1_IBUF(14)
    );
\op1_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(15),
      O => op1_IBUF(15)
    );
\op1_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(16),
      O => op1_IBUF(16)
    );
\op1_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(17),
      O => op1_IBUF(17)
    );
\op1_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(18),
      O => op1_IBUF(18)
    );
\op1_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(19),
      O => op1_IBUF(19)
    );
\op1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(1),
      O => op1_IBUF(1)
    );
\op1_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(20),
      O => op1_IBUF(20)
    );
\op1_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(21),
      O => op1_IBUF(21)
    );
\op1_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(22),
      O => op1_IBUF(22)
    );
\op1_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(23),
      O => op1_IBUF(23)
    );
\op1_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(24),
      O => op1_IBUF(24)
    );
\op1_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(25),
      O => op1_IBUF(25)
    );
\op1_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(26),
      O => op1_IBUF(26)
    );
\op1_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(27),
      O => op1_IBUF(27)
    );
\op1_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(28),
      O => op1_IBUF(28)
    );
\op1_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(29),
      O => op1_IBUF(29)
    );
\op1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(2),
      O => op1_IBUF(2)
    );
\op1_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(30),
      O => op1_IBUF(30)
    );
\op1_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(31),
      O => op1_IBUF(31)
    );
\op1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(3),
      O => op1_IBUF(3)
    );
\op1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(4),
      O => op1_IBUF(4)
    );
\op1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(5),
      O => op1_IBUF(5)
    );
\op1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(6),
      O => op1_IBUF(6)
    );
\op1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(7),
      O => op1_IBUF(7)
    );
\op1_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(8),
      O => op1_IBUF(8)
    );
\op1_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op1(9),
      O => op1_IBUF(9)
    );
\op2_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(0),
      O => op2_IBUF(0)
    );
\op2_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(10),
      O => op2_IBUF(10)
    );
\op2_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(11),
      O => op2_IBUF(11)
    );
\op2_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(12),
      O => op2_IBUF(12)
    );
\op2_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(13),
      O => op2_IBUF(13)
    );
\op2_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(14),
      O => op2_IBUF(14)
    );
\op2_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(15),
      O => op2_IBUF(15)
    );
\op2_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(16),
      O => op2_IBUF(16)
    );
\op2_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(17),
      O => op2_IBUF(17)
    );
\op2_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(18),
      O => op2_IBUF(18)
    );
\op2_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(19),
      O => op2_IBUF(19)
    );
\op2_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(1),
      O => op2_IBUF(1)
    );
\op2_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(20),
      O => op2_IBUF(20)
    );
\op2_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(21),
      O => op2_IBUF(21)
    );
\op2_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(22),
      O => op2_IBUF(22)
    );
\op2_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(23),
      O => op2_IBUF(23)
    );
\op2_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(24),
      O => op2_IBUF(24)
    );
\op2_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(25),
      O => op2_IBUF(25)
    );
\op2_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(26),
      O => op2_IBUF(26)
    );
\op2_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(27),
      O => op2_IBUF(27)
    );
\op2_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(28),
      O => op2_IBUF(28)
    );
\op2_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(29),
      O => op2_IBUF(29)
    );
\op2_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(2),
      O => op2_IBUF(2)
    );
\op2_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(30),
      O => op2_IBUF(30)
    );
\op2_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(31),
      O => op2_IBUF(31)
    );
\op2_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(3),
      O => op2_IBUF(3)
    );
\op2_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(4),
      O => op2_IBUF(4)
    );
\op2_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(5),
      O => op2_IBUF(5)
    );
\op2_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(6),
      O => op2_IBUF(6)
    );
\op2_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(7),
      O => op2_IBUF(7)
    );
\op2_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(8),
      O => op2_IBUF(8)
    );
\op2_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => op2(9),
      O => op2_IBUF(9)
    );
\res_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(0),
      O => res(0)
    );
\res_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(10),
      O => res(10)
    );
\res_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(11),
      O => res(11)
    );
\res_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(12),
      O => res(12)
    );
\res_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(13),
      O => res(13)
    );
\res_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(14),
      O => res(14)
    );
\res_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(15),
      O => res(15)
    );
\res_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(16),
      O => res(16)
    );
\res_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(17),
      O => res(17)
    );
\res_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(18),
      O => res(18)
    );
\res_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(19),
      O => res(19)
    );
\res_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(1),
      O => res(1)
    );
\res_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(20),
      O => res(20)
    );
\res_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(21),
      O => res(21)
    );
\res_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(22),
      O => res(22)
    );
\res_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(23),
      O => res(23)
    );
\res_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(24),
      O => res(24)
    );
\res_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(25),
      O => res(25)
    );
\res_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(26),
      O => res(26)
    );
\res_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(27),
      O => res(27)
    );
\res_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(28),
      O => res(28)
    );
\res_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(29),
      O => res(29)
    );
\res_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(2),
      O => res(2)
    );
\res_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(30),
      O => res(30)
    );
\res_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(31),
      O => res(31)
    );
\res_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(3),
      O => res(3)
    );
\res_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(4),
      O => res(4)
    );
\res_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(5),
      O => res(5)
    );
\res_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(6),
      O => res(6)
    );
\res_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(7),
      O => res(7)
    );
\res_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(8),
      O => res(8)
    );
\res_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => res_OBUF(9),
      O => res(9)
    );
\res_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_38,
      Q => res_OBUF(0)
    );
\res_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_28,
      Q => res_OBUF(10)
    );
\res_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_27,
      Q => res_OBUF(11)
    );
\res_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_26,
      Q => res_OBUF(12)
    );
\res_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_25,
      Q => res_OBUF(13)
    );
\res_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_24,
      Q => res_OBUF(14)
    );
\res_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_23,
      Q => res_OBUF(15)
    );
\res_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_22,
      Q => res_OBUF(16)
    );
\res_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_21,
      Q => res_OBUF(17)
    );
\res_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_20,
      Q => res_OBUF(18)
    );
\res_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_19,
      Q => res_OBUF(19)
    );
\res_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_37,
      Q => res_OBUF(1)
    );
\res_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_18,
      Q => res_OBUF(20)
    );
\res_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_17,
      Q => res_OBUF(21)
    );
\res_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_16,
      Q => res_OBUF(22)
    );
\res_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_15,
      Q => res_OBUF(23)
    );
\res_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_14,
      Q => res_OBUF(24)
    );
\res_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_13,
      Q => res_OBUF(25)
    );
\res_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_12,
      Q => res_OBUF(26)
    );
\res_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_11,
      Q => res_OBUF(27)
    );
\res_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_10,
      Q => res_OBUF(28)
    );
\res_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_9,
      Q => res_OBUF(29)
    );
\res_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_36,
      Q => res_OBUF(2)
    );
\res_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_8,
      Q => res_OBUF(30)
    );
\res_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_7,
      Q => res_OBUF(31)
    );
\res_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_35,
      Q => res_OBUF(3)
    );
\res_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_34,
      Q => res_OBUF(4)
    );
\res_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_33,
      Q => res_OBUF(5)
    );
\res_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_32,
      Q => res_OBUF(6)
    );
\res_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_31,
      Q => res_OBUF(7)
    );
\res_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_30,
      Q => res_OBUF(8)
    );
\res_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_29,
      Q => res_OBUF(9)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\resrdy_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => resrdy_OBUF(0),
      O => resrdy(0)
    );
\resrdy_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => resrdy_OBUF(1),
      O => resrdy(1)
    );
\resrdy_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => multiplier_vhdl_n_74,
      Q => resrdy_OBUF(0)
    );
\resrdy_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_verilog_n_5,
      CLR => reset_IBUF,
      D => next_state(0),
      Q => resrdy_OBUF(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => next_state(0),
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => next_state(1),
      Q => state(1),
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => next_state(2),
      Q => state(2),
      R => '0'
    );
\tmp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(0),
      Q => tmp(0)
    );
\tmp_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(10),
      Q => tmp(10)
    );
\tmp_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(11),
      Q => tmp(11)
    );
\tmp_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(12),
      Q => tmp(12)
    );
\tmp_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(13),
      Q => tmp(13)
    );
\tmp_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(14),
      Q => tmp(14)
    );
\tmp_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(15),
      Q => tmp(15)
    );
\tmp_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(16),
      Q => tmp(16)
    );
\tmp_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(17),
      Q => tmp(17)
    );
\tmp_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(18),
      Q => tmp(18)
    );
\tmp_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(19),
      Q => tmp(19)
    );
\tmp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(1),
      Q => tmp(1)
    );
\tmp_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(20),
      Q => tmp(20)
    );
\tmp_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(21),
      Q => tmp(21)
    );
\tmp_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(22),
      Q => tmp(22)
    );
\tmp_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(23),
      Q => tmp(23)
    );
\tmp_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(24),
      Q => tmp(24)
    );
\tmp_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(25),
      Q => tmp(25)
    );
\tmp_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(26),
      Q => tmp(26)
    );
\tmp_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(27),
      Q => tmp(27)
    );
\tmp_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(28),
      Q => tmp(28)
    );
\tmp_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(29),
      Q => tmp(29)
    );
\tmp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(2),
      Q => tmp(2)
    );
\tmp_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(30),
      Q => tmp(30)
    );
\tmp_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(31),
      Q => tmp(31)
    );
\tmp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(3),
      Q => tmp(3)
    );
\tmp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(4),
      Q => tmp(4)
    );
\tmp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(5),
      Q => tmp(5)
    );
\tmp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(6),
      Q => tmp(6)
    );
\tmp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(7),
      Q => tmp(7)
    );
\tmp_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(8),
      Q => tmp(8)
    );
\tmp_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => multiplier_vhdl_n_73,
      CLR => reset_IBUF,
      D => p_1_in(9),
      Q => tmp(9)
    );
end STRUCTURE;
