-- ==============================================================
-- File generated on Wed Dec 06 14:17:57 CET 2023
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3.1 (64-bit)
-- SW Build 2489853 on Tue Mar 26 04:18:30 MDT 2019
-- IP Build 2486929 on Tue Mar 26 06:44:21 MDT 2019
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
Library ieee;
use ieee.std_logic_1164.all;

entity Conv_dmul_64ns_64ns_64_5_max_dsp_1 is
    generic (
        ID         : integer := 3;
        NUM_STAGE  : integer := 5;
        din0_WIDTH : integer := 64;
        din1_WIDTH : integer := 64;
        dout_WIDTH : integer := 64
    );
    port (
        clk   : in  std_logic;
        reset : in  std_logic;
        ce    : in  std_logic;
        din0  : in  std_logic_vector(din0_WIDTH-1 downto 0);
        din1  : in  std_logic_vector(din1_WIDTH-1 downto 0);
        dout  : out std_logic_vector(dout_WIDTH-1 downto 0)
    );
end entity;

architecture arch of Conv_dmul_64ns_64ns_64_5_max_dsp_1 is
    --------------------- Component ---------------------
    component Conv_ap_dmul_3_max_dsp_64 is
        port (
            aclk                 : in  std_logic;
            aclken               : in  std_logic;
            s_axis_a_tvalid      : in  std_logic;
            s_axis_a_tdata       : in  std_logic_vector(63 downto 0);
            s_axis_b_tvalid      : in  std_logic;
            s_axis_b_tdata       : in  std_logic_vector(63 downto 0);
            m_axis_result_tvalid : out std_logic;
            m_axis_result_tdata  : out std_logic_vector(63 downto 0)
        );
    end component;
    --------------------- Local signal ------------------
    signal aclk      : std_logic;
    signal aclken    : std_logic;
    signal a_tvalid  : std_logic;
    signal a_tdata   : std_logic_vector(63 downto 0);
    signal b_tvalid  : std_logic;
    signal b_tdata   : std_logic_vector(63 downto 0);
    signal r_tvalid  : std_logic;
    signal r_tdata   : std_logic_vector(63 downto 0);
    signal din0_buf1 : std_logic_vector(din0_WIDTH-1 downto 0);
    signal din1_buf1 : std_logic_vector(din1_WIDTH-1 downto 0);
    signal ce_r      : std_logic;
    signal dout_i    : std_logic_vector(dout_WIDTH-1 downto 0);
    signal dout_r    : std_logic_vector(dout_WIDTH-1 downto 0);
begin
    --------------------- Instantiation -----------------
    Conv_ap_dmul_3_max_dsp_64_u : component Conv_ap_dmul_3_max_dsp_64
    port map (
        aclk                 => aclk,
        aclken               => aclken,
        s_axis_a_tvalid      => a_tvalid,
        s_axis_a_tdata       => a_tdata,
        s_axis_b_tvalid      => b_tvalid,
        s_axis_b_tdata       => b_tdata,
        m_axis_result_tvalid => r_tvalid,
        m_axis_result_tdata  => r_tdata
    );

    --------------------- Assignment --------------------
    aclk     <= clk;
    aclken   <= ce_r;
    a_tvalid <= '1';
    a_tdata  <= din0_buf1;
    b_tvalid <= '1';
    b_tdata  <= din1_buf1;
    dout_i   <= r_tdata;

    --------------------- Input buffer ------------------
    process (clk) begin
        if clk'event and clk = '1' then
            if ce = '1' then
                din0_buf1 <= din0;
                din1_buf1 <= din1;
            end if;
        end if;
    end process;

    process (clk) begin
        if clk'event and clk = '1' then
            ce_r <= ce;
        end if;
    end process;

    process (clk) begin
        if clk'event and clk = '1' then
            if ce_r = '1' then
                dout_r <= dout_i;
            end if;
        end if;
    end process;

    dout <= dout_i when ce_r = '1' else dout_r;
end architecture;
