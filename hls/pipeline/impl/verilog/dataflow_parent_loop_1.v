// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dataflow_parent_loop_1 (
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
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg ap_done;
reg ap_ready;

wire   [9:0] dataflow_in_loop_lst_U0_img_address0;
wire    dataflow_in_loop_lst_U0_img_ce0;
wire   [31:0] dataflow_in_loop_lst_U0_img_d0;
wire    dataflow_in_loop_lst_U0_img_we0;
wire   [9:0] dataflow_in_loop_lst_U0_img_address1;
wire    dataflow_in_loop_lst_U0_img_ce1;
wire   [31:0] dataflow_in_loop_lst_U0_img_d1;
wire    dataflow_in_loop_lst_U0_img_we1;
wire   [6:0] dataflow_in_loop_lst_U0_h_address0;
wire    dataflow_in_loop_lst_U0_h_ce0;
wire   [31:0] dataflow_in_loop_lst_U0_h_d0;
wire    dataflow_in_loop_lst_U0_h_we0;
wire   [6:0] dataflow_in_loop_lst_U0_h_address1;
wire    dataflow_in_loop_lst_U0_h_ce1;
wire   [31:0] dataflow_in_loop_lst_U0_h_d1;
wire    dataflow_in_loop_lst_U0_h_we1;
wire   [6:0] dataflow_in_loop_lst_U0_c_address0;
wire    dataflow_in_loop_lst_U0_c_ce0;
wire   [31:0] dataflow_in_loop_lst_U0_c_d0;
wire    dataflow_in_loop_lst_U0_c_we0;
wire   [6:0] dataflow_in_loop_lst_U0_c_address1;
wire    dataflow_in_loop_lst_U0_c_ce1;
wire   [31:0] dataflow_in_loop_lst_U0_c_d1;
wire    dataflow_in_loop_lst_U0_c_we1;
wire    dataflow_in_loop_lst_U0_ap_start;
wire    dataflow_in_loop_lst_U0_ap_done;
wire    dataflow_in_loop_lst_U0_ap_ready;
wire    dataflow_in_loop_lst_U0_ap_idle;
reg    dataflow_in_loop_lst_U0_ap_continue;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
reg   [4:0] loop_dataflow_input_count;
reg   [4:0] loop_dataflow_output_count;
wire   [4:0] bound_minus_1;
wire    dataflow_in_loop_lst_U0_start_full_n;
wire    dataflow_in_loop_lst_U0_start_write;

// power-on initialization
initial begin
#0 loop_dataflow_input_count = 5'd0;
#0 loop_dataflow_output_count = 5'd0;
end

dataflow_in_loop_lst dataflow_in_loop_lst_U0(
    .img_address0(dataflow_in_loop_lst_U0_img_address0),
    .img_ce0(dataflow_in_loop_lst_U0_img_ce0),
    .img_d0(dataflow_in_loop_lst_U0_img_d0),
    .img_q0(img_q0),
    .img_we0(dataflow_in_loop_lst_U0_img_we0),
    .img_address1(dataflow_in_loop_lst_U0_img_address1),
    .img_ce1(dataflow_in_loop_lst_U0_img_ce1),
    .img_d1(dataflow_in_loop_lst_U0_img_d1),
    .img_q1(32'd0),
    .img_we1(dataflow_in_loop_lst_U0_img_we1),
    .i1(loop_dataflow_input_count),
    .h_address0(dataflow_in_loop_lst_U0_h_address0),
    .h_ce0(dataflow_in_loop_lst_U0_h_ce0),
    .h_d0(dataflow_in_loop_lst_U0_h_d0),
    .h_q0(h_q0),
    .h_we0(dataflow_in_loop_lst_U0_h_we0),
    .h_address1(dataflow_in_loop_lst_U0_h_address1),
    .h_ce1(dataflow_in_loop_lst_U0_h_ce1),
    .h_d1(dataflow_in_loop_lst_U0_h_d1),
    .h_q1(32'd0),
    .h_we1(dataflow_in_loop_lst_U0_h_we1),
    .c_address0(dataflow_in_loop_lst_U0_c_address0),
    .c_ce0(dataflow_in_loop_lst_U0_c_ce0),
    .c_d0(dataflow_in_loop_lst_U0_c_d0),
    .c_q0(c_q0),
    .c_we0(dataflow_in_loop_lst_U0_c_we0),
    .c_address1(dataflow_in_loop_lst_U0_c_address1),
    .c_ce1(dataflow_in_loop_lst_U0_c_ce1),
    .c_d1(dataflow_in_loop_lst_U0_c_d1),
    .c_q1(32'd0),
    .c_we1(dataflow_in_loop_lst_U0_c_we1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .i1_ap_vld(1'b0),
    .ap_start(dataflow_in_loop_lst_U0_ap_start),
    .ap_done(dataflow_in_loop_lst_U0_ap_done),
    .ap_ready(dataflow_in_loop_lst_U0_ap_ready),
    .ap_idle(dataflow_in_loop_lst_U0_ap_idle),
    .ap_continue(dataflow_in_loop_lst_U0_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_input_count <= 5'd0;
    end else begin
        if ((~(loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_lst_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= (loop_dataflow_input_count + 5'd1);
        end else if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_lst_U0_ap_ready == 1'b1))) begin
            loop_dataflow_input_count <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        loop_dataflow_output_count <= 5'd0;
    end else begin
        if ((~(loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_lst_U0_ap_continue == 1'b1) & (dataflow_in_loop_lst_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= (loop_dataflow_output_count + 5'd1);
        end else if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_lst_U0_ap_continue == 1'b1) & (dataflow_in_loop_lst_U0_ap_done == 1'b1))) begin
            loop_dataflow_output_count <= 5'd0;
        end
    end
end

always @ (*) begin
    if (((loop_dataflow_output_count == bound_minus_1) & (dataflow_in_loop_lst_U0_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((loop_dataflow_input_count == bound_minus_1) & (ap_start == 1'b1) & (dataflow_in_loop_lst_U0_ap_ready == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~(loop_dataflow_output_count == bound_minus_1) | (ap_continue == 1'b1))) begin
        dataflow_in_loop_lst_U0_ap_continue = 1'b1;
    end else begin
        dataflow_in_loop_lst_U0_ap_continue = 1'b0;
    end
end

assign ap_idle = dataflow_in_loop_lst_U0_ap_idle;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = dataflow_in_loop_lst_U0_ap_done;

assign ap_sync_ready = dataflow_in_loop_lst_U0_ap_ready;

assign bound_minus_1 = (5'd28 - 5'd1);

assign c_address0 = dataflow_in_loop_lst_U0_c_address0;

assign c_address1 = 7'd0;

assign c_ce0 = dataflow_in_loop_lst_U0_c_ce0;

assign c_ce1 = 1'b0;

assign c_d0 = dataflow_in_loop_lst_U0_c_d0;

assign c_d1 = 32'd0;

assign c_we0 = dataflow_in_loop_lst_U0_c_we0;

assign c_we1 = 1'b0;

assign dataflow_in_loop_lst_U0_ap_start = ap_start;

assign dataflow_in_loop_lst_U0_start_full_n = 1'b1;

assign dataflow_in_loop_lst_U0_start_write = 1'b0;

assign h_address0 = dataflow_in_loop_lst_U0_h_address0;

assign h_address1 = 7'd0;

assign h_ce0 = dataflow_in_loop_lst_U0_h_ce0;

assign h_ce1 = 1'b0;

assign h_d0 = dataflow_in_loop_lst_U0_h_d0;

assign h_d1 = 32'd0;

assign h_we0 = dataflow_in_loop_lst_U0_h_we0;

assign h_we1 = 1'b0;

assign img_address0 = dataflow_in_loop_lst_U0_img_address0;

assign img_address1 = 10'd0;

assign img_ce0 = dataflow_in_loop_lst_U0_img_ce0;

assign img_ce1 = 1'b0;

assign img_d0 = 32'd0;

assign img_d1 = 32'd0;

assign img_we0 = 1'b0;

assign img_we1 = 1'b0;

endmodule //dataflow_parent_loop_1
