// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (lin64) Build 2489853 Tue Mar 26 04:18:30 MDT 2019
// Date        : Wed Dec  6 16:06:38 2023
// Host        : AHjSfrQp-vbox.pd.inf.tu-dresden.de running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Conv_1_0_stub.v
// Design      : design_1_Conv_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Conv,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, data_in_TVALID, 
  data_in_TREADY, data_in_TDATA, data_in_TLAST, data_out_TVALID, data_out_TREADY, 
  data_out_TDATA, data_out_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,data_in_TVALID,data_in_TREADY,data_in_TDATA[63:0],data_in_TLAST[0:0],data_out_TVALID,data_out_TREADY,data_out_TDATA[63:0],data_out_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input data_in_TVALID;
  output data_in_TREADY;
  input [63:0]data_in_TDATA;
  input [0:0]data_in_TLAST;
  output data_out_TVALID;
  input data_out_TREADY;
  output [63:0]data_out_TDATA;
  output [0:0]data_out_TLAST;
endmodule
