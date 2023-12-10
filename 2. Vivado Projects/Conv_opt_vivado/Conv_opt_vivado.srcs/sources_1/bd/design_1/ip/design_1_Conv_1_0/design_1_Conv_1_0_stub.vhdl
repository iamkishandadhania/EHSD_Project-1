-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (lin64) Build 2489853 Tue Mar 26 04:18:30 MDT 2019
-- Date        : Wed Dec  6 16:06:45 2023
-- Host        : AHjSfrQp-vbox.pd.inf.tu-dresden.de running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/kida925e/Final_submission/Conv_opt_vivado/Conv_opt_vivado.srcs/sources_1/bd/design_1/ip/design_1_Conv_1_0/design_1_Conv_1_0_stub.vhdl
-- Design      : design_1_Conv_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Conv_1_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    data_in_TVALID : in STD_LOGIC;
    data_in_TREADY : out STD_LOGIC;
    data_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_TVALID : out STD_LOGIC;
    data_out_TREADY : in STD_LOGIC;
    data_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    data_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_Conv_1_0;

architecture stub of design_1_Conv_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,data_in_TVALID,data_in_TREADY,data_in_TDATA[63:0],data_in_TLAST[0:0],data_out_TVALID,data_out_TREADY,data_out_TDATA[63:0],data_out_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Conv,Vivado 2018.3.1";
begin
end;
