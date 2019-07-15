-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dataflow_in_loop_lst is
port (
    img_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    img_ce0 : OUT STD_LOGIC;
    img_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    img_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    img_we0 : OUT STD_LOGIC;
    img_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    img_ce1 : OUT STD_LOGIC;
    img_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    img_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    img_we1 : OUT STD_LOGIC;
    i1 : IN STD_LOGIC_VECTOR (4 downto 0);
    h_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    h_ce0 : OUT STD_LOGIC;
    h_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    h_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    h_we0 : OUT STD_LOGIC;
    h_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    h_ce1 : OUT STD_LOGIC;
    h_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    h_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    h_we1 : OUT STD_LOGIC;
    c_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    c_ce0 : OUT STD_LOGIC;
    c_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    c_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    c_we0 : OUT STD_LOGIC;
    c_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    c_ce1 : OUT STD_LOGIC;
    c_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    c_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    c_we1 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    i1_ap_vld : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of dataflow_in_loop_lst is 
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal lstm_forward_once_U0_ap_start : STD_LOGIC;
    signal lstm_forward_once_U0_ap_done : STD_LOGIC;
    signal lstm_forward_once_U0_ap_continue : STD_LOGIC;
    signal lstm_forward_once_U0_ap_idle : STD_LOGIC;
    signal lstm_forward_once_U0_ap_ready : STD_LOGIC;
    signal lstm_forward_once_U0_img_line_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal lstm_forward_once_U0_img_line_ce0 : STD_LOGIC;
    signal lstm_forward_once_U0_h_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal lstm_forward_once_U0_h_ce0 : STD_LOGIC;
    signal lstm_forward_once_U0_h_we0 : STD_LOGIC;
    signal lstm_forward_once_U0_h_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal lstm_forward_once_U0_c_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal lstm_forward_once_U0_c_ce0 : STD_LOGIC;
    signal lstm_forward_once_U0_c_we0 : STD_LOGIC;
    signal lstm_forward_once_U0_c_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sync_continue : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal lstm_forward_once_U0_start_full_n : STD_LOGIC;
    signal lstm_forward_once_U0_start_write : STD_LOGIC;

    component lstm_forward_once IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_line_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        img_line_ce0 : OUT STD_LOGIC;
        img_line_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        img_line_offset : IN STD_LOGIC_VECTOR (4 downto 0);
        h_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        h_ce0 : OUT STD_LOGIC;
        h_we0 : OUT STD_LOGIC;
        h_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        h_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        c_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        c_ce0 : OUT STD_LOGIC;
        c_we0 : OUT STD_LOGIC;
        c_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        c_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    lstm_forward_once_U0 : component lstm_forward_once
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => lstm_forward_once_U0_ap_start,
        ap_done => lstm_forward_once_U0_ap_done,
        ap_continue => lstm_forward_once_U0_ap_continue,
        ap_idle => lstm_forward_once_U0_ap_idle,
        ap_ready => lstm_forward_once_U0_ap_ready,
        img_line_address0 => lstm_forward_once_U0_img_line_address0,
        img_line_ce0 => lstm_forward_once_U0_img_line_ce0,
        img_line_q0 => img_q0,
        img_line_offset => i1,
        h_address0 => lstm_forward_once_U0_h_address0,
        h_ce0 => lstm_forward_once_U0_h_ce0,
        h_we0 => lstm_forward_once_U0_h_we0,
        h_d0 => lstm_forward_once_U0_h_d0,
        h_q0 => h_q0,
        c_address0 => lstm_forward_once_U0_c_address0,
        c_ce0 => lstm_forward_once_U0_c_ce0,
        c_we0 => lstm_forward_once_U0_c_we0,
        c_d0 => lstm_forward_once_U0_c_d0,
        c_q0 => c_q0);




    ap_done <= lstm_forward_once_U0_ap_done;
    ap_idle <= lstm_forward_once_U0_ap_idle;
    ap_ready <= lstm_forward_once_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= lstm_forward_once_U0_ap_done;
    ap_sync_ready <= lstm_forward_once_U0_ap_ready;
    c_address0 <= lstm_forward_once_U0_c_address0;
    c_address1 <= ap_const_lv7_0;
    c_ce0 <= lstm_forward_once_U0_c_ce0;
    c_ce1 <= ap_const_logic_0;
    c_d0 <= lstm_forward_once_U0_c_d0;
    c_d1 <= ap_const_lv32_0;
    c_we0 <= lstm_forward_once_U0_c_we0;
    c_we1 <= ap_const_logic_0;
    h_address0 <= lstm_forward_once_U0_h_address0;
    h_address1 <= ap_const_lv7_0;
    h_ce0 <= lstm_forward_once_U0_h_ce0;
    h_ce1 <= ap_const_logic_0;
    h_d0 <= lstm_forward_once_U0_h_d0;
    h_d1 <= ap_const_lv32_0;
    h_we0 <= lstm_forward_once_U0_h_we0;
    h_we1 <= ap_const_logic_0;
    img_address0 <= lstm_forward_once_U0_img_line_address0;
    img_address1 <= ap_const_lv10_0;
    img_ce0 <= lstm_forward_once_U0_img_line_ce0;
    img_ce1 <= ap_const_logic_0;
    img_d0 <= ap_const_lv32_0;
    img_d1 <= ap_const_lv32_0;
    img_we0 <= ap_const_logic_0;
    img_we1 <= ap_const_logic_0;
    lstm_forward_once_U0_ap_continue <= ap_continue;
    lstm_forward_once_U0_ap_start <= ap_start;
    lstm_forward_once_U0_start_full_n <= ap_const_logic_1;
    lstm_forward_once_U0_start_write <= ap_const_logic_0;
end behav;