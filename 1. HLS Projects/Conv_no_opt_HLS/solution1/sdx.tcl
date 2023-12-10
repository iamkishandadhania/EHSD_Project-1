# ==============================================================
# File generated on Wed Dec 06 13:43:52 CET 2023
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3.1 (64-bit)
# SW Build 2489853 on Tue Mar 26 04:18:30 MDT 2019
# IP Build 2486929 on Tue Mar 26 06:44:21 MDT 2019
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files Conv_no_opt.cpp
add_files Conv_opt_HLS/.apc/.src/header.h
set_part xczu3eg-sbva484-1-i
create_clock -name default -period 10
config_export -display_name=Conv_no_opt
config_export -format=ip_catalog
config_export -rtl=verilog
config_export -vendor=xilinx.com
config_export -version=1.0.0
