#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1.3 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Jan 08 15:32:31 CET 2020
# SW Build 2644227 on Wed Sep  4 09:44:18 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim tb_func_impl -key {Post-Implementation:sim_1:Functional:tb} -tclbatch tb.tcl -view /home/parallels/Desktop/elaborato_754/mutilplexer_ieee754/tb_behav.wcfg -log simulate.log"
xsim tb_func_impl -key {Post-Implementation:sim_1:Functional:tb} -tclbatch tb.tcl -view /home/parallels/Desktop/elaborato_754/mutilplexer_ieee754/tb_behav.wcfg -log simulate.log

