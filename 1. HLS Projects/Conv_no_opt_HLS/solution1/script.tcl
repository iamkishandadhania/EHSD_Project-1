############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Conv_no_opt_HLS
set_top Conv
add_files Conv_opt_HLS/.apc/.src/header.h
add_files Conv_no_opt.cpp
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
config_export -display_name Conv_no_opt -format ip_catalog -rtl verilog -vendor xilinx.com -version 1.0.0
#source "./Conv_no_opt_HLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -library "xilinx.com" -version "1.0.0" -display_name "Conv_no_opt"
