// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dataflow_in_loop_lst (
        img_address0,
        img_ce0,
        img_d0,
        img_q0,
        img_we0,
        img_address1,
        img_ce1,
        img_d1,
        img_q1,
        img_we1,
        i1,
        h_address0,
        h_ce0,
        h_d0,
        h_q0,
        h_we0,
        h_address1,
        h_ce1,
        h_d1,
        h_q1,
        h_we1,
        c_address0,
        c_ce0,
        c_d0,
        c_q0,
        c_we0,
        c_address1,
        c_ce1,
        c_d1,
        c_q1,
        c_we1,
        ap_clk,
        ap_rst,
        i1_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


output  [9:0] img_address0;
output   img_ce0;
output  [31:0] img_d0;
input  [31:0] img_q0;
output   img_we0;
output  [9:0] img_address1;
output   img_ce1;
output  [31:0] img_d1;
input  [31:0] img_q1;
output   img_we1;
input  [4:0] i1;
output  [6:0] h_address0;
output   h_ce0;
output  [31:0] h_d0;
input  [31:0] h_q0;
output   h_we0;
output  [6:0] h_address1;
output   h_ce1;
output  [31:0] h_d1;
input  [31:0] h_q1;
output   h_we1;
output  [6:0] c_address0;
output   c_ce0;
output  [31:0] c_d0;
input  [31:0] c_q0;
output   c_we0;
output  [6:0] c_address1;
output   c_ce1;
output  [31:0] c_d1;
input  [31:0] c_q1;
output   c_we1;
input   ap_clk;
input   ap_rst;
input   i1_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    lstm_forward_once_U0_ap_start;
wire    lstm_forward_once_U0_ap_done;
wire    lstm_forward_once_U0_ap_continue;
wire    lstm_forward_once_U0_ap_idle;
wire    lstm_forward_once_U0_ap_ready;
wire   [9:0] lstm_forward_once_U0_img_line_address0;
wire    lstm_forward_once_U0_img_line_ce0;
wire   [6:0] lstm_forward_once_U0_h_address0;
wire    lstm_forward_once_U0_h_ce0;
wire    lstm_forward_once_U0_h_we0;
wire   [31:0] lstm_forward_once_U0_h_d0;
wire   [6:0] lstm_forward_once_U0_c_address0;
wire    lstm_forward_once_U0_c_ce0;
wire    lstm_forward_once_U0_c_we0;
wire   [31:0] lstm_forward_once_U0_c_d0;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    lstm_forward_once_U0_start_full_n;
wire    lstm_forward_once_U0_start_write;

lstm_forward_once lstm_forward_once_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(lstm_forward_once_U0_ap_start),
    .ap_done(lstm_forward_once_U0_ap_done),
    .ap_continue(lstm_forward_once_U0_ap_continue),
    .ap_idle(lstm_forward_once_U0_ap_idle),
    .ap_ready(lstm_forward_once_U0_ap_ready),
    .img_line_address0(lstm_forward_once_U0_img_line_address0),
    .img_line_ce0(lstm_forward_once_U0_img_line_ce0),
    .img_line_q0(img_q0),
    .img_line_offset(i1),
    .h_address0(lstm_forward_once_U0_h_address0),
    .h_ce0(lstm_forward_once_U0_h_ce0),
    .h_we0(lstm_forward_once_U0_h_we0),
    .h_d0(lstm_forward_once_U0_h_d0),
    .h_q0(h_q0),
    .c_address0(lstm_forward_once_U0_c_address0),
    .c_ce0(lstm_forward_once_U0_c_ce0),
    .c_we0(lstm_forward_once_U0_c_we0),
    .c_d0(lstm_forward_once_U0_c_d0),
    .c_q0(c_q0)
);

assign ap_done = lstm_forward_once_U0_ap_done;

assign ap_idle = lstm_forward_once_U0_ap_idle;

assign ap_ready = lstm_forward_once_U0_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = lstm_forward_once_U0_ap_done;

assign ap_sync_ready = lstm_forward_once_U0_ap_ready;

assign c_address0 = lstm_forward_once_U0_c_address0;

assign c_address1 = 7'd0;

assign c_ce0 = lstm_forward_once_U0_c_ce0;

assign c_ce1 = 1'b0;

assign c_d0 = lstm_forward_once_U0_c_d0;

assign c_d1 = 32'd0;

assign c_we0 = lstm_forward_once_U0_c_we0;

assign c_we1 = 1'b0;

assign h_address0 = lstm_forward_once_U0_h_address0;

assign h_address1 = 7'd0;

assign h_ce0 = lstm_forward_once_U0_h_ce0;

assign h_ce1 = 1'b0;

assign h_d0 = lstm_forward_once_U0_h_d0;

assign h_d1 = 32'd0;

assign h_we0 = lstm_forward_once_U0_h_we0;

assign h_we1 = 1'b0;

assign img_address0 = lstm_forward_once_U0_img_line_address0;

assign img_address1 = 10'd0;

assign img_ce0 = lstm_forward_once_U0_img_line_ce0;

assign img_ce1 = 1'b0;

assign img_d0 = 32'd0;

assign img_d1 = 32'd0;

assign img_we0 = 1'b0;

assign img_we1 = 1'b0;

assign lstm_forward_once_U0_ap_continue = ap_continue;

assign lstm_forward_once_U0_ap_start = ap_start;

assign lstm_forward_once_U0_start_full_n = 1'b1;

assign lstm_forward_once_U0_start_write = 1'b0;

endmodule //dataflow_in_loop_lst
