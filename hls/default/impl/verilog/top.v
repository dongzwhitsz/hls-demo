// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="top,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-3,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.354450,HLS_SYN_LAT=23080057,HLS_SYN_TPT=none,HLS_SYN_MEM=217,HLS_SYN_DSP=43,HLS_SYN_FF=6246,HLS_SYN_LUT=12011,HLS_VERSION=2018_3}" *)

module top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        img_address0,
        img_ce0,
        img_we0,
        img_d0,
        img_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] img_address0;
output   img_ce0;
output   img_we0;
output  [31:0] img_d0;
input  [31:0] img_q0;
output  [3:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] img_address0;
reg img_ce0;
reg img_we0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] c_address0;
reg    c_ce0;
reg    c_we0;
reg   [31:0] c_d0;
wire   [31:0] c_q0;
reg   [6:0] h_address0;
reg    h_ce0;
reg    h_we0;
reg   [31:0] h_d0;
wire   [31:0] h_q0;
reg   [6:0] dense_output_address0;
reg    dense_output_ce0;
reg    dense_output_we0;
wire   [31:0] dense_output_q0;
reg   [3:0] softmax_output_address0;
reg    softmax_output_ce0;
reg    softmax_output_we0;
wire   [31:0] softmax_output_q0;
wire   [4:0] i_3_fu_304_p2;
reg   [4:0] i_3_reg_416;
wire    ap_CS_fsm_state2;
wire   [10:0] tmp_3_fu_334_p2;
reg   [10:0] tmp_3_reg_421;
wire   [0:0] exitcond1_i_fu_298_p2;
wire   [4:0] j_fu_346_p2;
reg   [4:0] j_reg_429;
wire    ap_CS_fsm_state3;
reg   [9:0] img_addr_reg_434;
wire   [0:0] exitcond_i_fu_340_p2;
wire   [63:0] tmp_105_i_fu_284_p1;
reg   [63:0] tmp_105_i_reg_439;
wire    ap_CS_fsm_state4;
wire   [63:0] grp_fu_293_p2;
reg   [63:0] tmp_106_i_reg_444;
wire    ap_CS_fsm_state9;
wire   [63:0] grp_fu_288_p2;
reg   [63:0] tmp_107_i_reg_449;
wire    ap_CS_fsm_state14;
wire   [7:0] i_2_fu_372_p2;
wire    ap_CS_fsm_state16;
wire   [4:0] i_4_fu_390_p2;
reg   [4:0] i_4_reg_465;
wire    ap_CS_fsm_state17;
wire   [3:0] i_1_fu_402_p2;
reg   [3:0] i_1_reg_473;
wire    ap_CS_fsm_state22;
wire   [63:0] tmp_fu_408_p1;
reg   [63:0] tmp_reg_478;
wire   [0:0] exitcond_fu_396_p2;
wire    grp_lstm_forward_once_fu_220_ap_start;
wire    grp_lstm_forward_once_fu_220_ap_done;
wire    grp_lstm_forward_once_fu_220_ap_idle;
wire    grp_lstm_forward_once_fu_220_ap_ready;
wire   [9:0] grp_lstm_forward_once_fu_220_img_line_address0;
wire    grp_lstm_forward_once_fu_220_img_line_ce0;
wire   [6:0] grp_lstm_forward_once_fu_220_h_address0;
wire    grp_lstm_forward_once_fu_220_h_ce0;
wire    grp_lstm_forward_once_fu_220_h_we0;
wire   [31:0] grp_lstm_forward_once_fu_220_h_d0;
wire   [6:0] grp_lstm_forward_once_fu_220_c_address0;
wire    grp_lstm_forward_once_fu_220_c_ce0;
wire    grp_lstm_forward_once_fu_220_c_we0;
wire   [31:0] grp_lstm_forward_once_fu_220_c_d0;
wire    grp_dense_forward_fu_256_ap_start;
wire    grp_dense_forward_fu_256_ap_done;
wire    grp_dense_forward_fu_256_ap_idle;
wire    grp_dense_forward_fu_256_ap_ready;
wire   [6:0] grp_dense_forward_fu_256_h_address0;
wire    grp_dense_forward_fu_256_h_ce0;
wire   [6:0] grp_dense_forward_fu_256_dense_output_address0;
wire    grp_dense_forward_fu_256_dense_output_ce0;
wire    grp_dense_forward_fu_256_dense_output_we0;
wire   [31:0] grp_dense_forward_fu_256_dense_output_d0;
wire    grp_softmax_forward_fu_268_ap_start;
wire    grp_softmax_forward_fu_268_ap_done;
wire    grp_softmax_forward_fu_268_ap_idle;
wire    grp_softmax_forward_fu_268_ap_ready;
wire   [6:0] grp_softmax_forward_fu_268_dense_output_address0;
wire    grp_softmax_forward_fu_268_dense_output_ce0;
wire   [3:0] grp_softmax_forward_fu_268_softmax_output_address0;
wire    grp_softmax_forward_fu_268_softmax_output_ce0;
wire    grp_softmax_forward_fu_268_softmax_output_we0;
wire   [31:0] grp_softmax_forward_fu_268_softmax_output_d0;
reg   [4:0] i_i_reg_164;
reg   [4:0] j_i_reg_175;
wire    ap_CS_fsm_state15;
reg   [7:0] i_i3_reg_186;
wire   [0:0] exitcond1_i4_fu_366_p2;
reg   [4:0] i1_i_reg_197;
wire    ap_CS_fsm_state18;
reg   [3:0] i_reg_209;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state23;
reg    grp_lstm_forward_once_fu_220_ap_start_reg;
wire   [0:0] exitcond_i6_fu_384_p2;
reg    grp_dense_forward_fu_256_ap_start_reg;
wire    ap_CS_fsm_state19;
reg    grp_softmax_forward_fu_268_ap_start_reg;
wire    ap_CS_fsm_state20;
wire  signed [63:0] tmp_4_cast_fu_361_p1;
wire   [63:0] tmp_i5_fu_378_p1;
wire   [31:0] tmp_108_i_fu_280_p1;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state5;
wire   [9:0] tmp_1_fu_310_p3;
wire   [6:0] tmp_2_fu_322_p3;
wire   [10:0] p_shl_cast_fu_318_p1;
wire   [10:0] p_shl1_cast_fu_330_p1;
wire   [10:0] tmp_i_cast_fu_352_p1;
wire   [10:0] tmp_4_fu_356_p2;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'd1;
#0 grp_lstm_forward_once_fu_220_ap_start_reg = 1'b0;
#0 grp_dense_forward_fu_256_ap_start_reg = 1'b0;
#0 grp_softmax_forward_fu_268_ap_start_reg = 1'b0;
end

top_c #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(c_address0),
    .ce0(c_ce0),
    .we0(c_we0),
    .d0(c_d0),
    .q0(c_q0)
);

top_c #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
h_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(h_address0),
    .ce0(h_ce0),
    .we0(h_we0),
    .d0(h_d0),
    .q0(h_q0)
);

top_c #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
dense_output_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dense_output_address0),
    .ce0(dense_output_ce0),
    .we0(dense_output_we0),
    .d0(grp_dense_forward_fu_256_dense_output_d0),
    .q0(dense_output_q0)
);

top_softmax_output #(
    .DataWidth( 32 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
softmax_output_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(softmax_output_address0),
    .ce0(softmax_output_ce0),
    .we0(softmax_output_we0),
    .d0(grp_softmax_forward_fu_268_softmax_output_d0),
    .q0(softmax_output_q0)
);

lstm_forward_once grp_lstm_forward_once_fu_220(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lstm_forward_once_fu_220_ap_start),
    .ap_done(grp_lstm_forward_once_fu_220_ap_done),
    .ap_idle(grp_lstm_forward_once_fu_220_ap_idle),
    .ap_ready(grp_lstm_forward_once_fu_220_ap_ready),
    .img_line_address0(grp_lstm_forward_once_fu_220_img_line_address0),
    .img_line_ce0(grp_lstm_forward_once_fu_220_img_line_ce0),
    .img_line_q0(img_q0),
    .img_line_offset(i1_i_reg_197),
    .h_address0(grp_lstm_forward_once_fu_220_h_address0),
    .h_ce0(grp_lstm_forward_once_fu_220_h_ce0),
    .h_we0(grp_lstm_forward_once_fu_220_h_we0),
    .h_d0(grp_lstm_forward_once_fu_220_h_d0),
    .h_q0(h_q0),
    .c_address0(grp_lstm_forward_once_fu_220_c_address0),
    .c_ce0(grp_lstm_forward_once_fu_220_c_ce0),
    .c_we0(grp_lstm_forward_once_fu_220_c_we0),
    .c_d0(grp_lstm_forward_once_fu_220_c_d0),
    .c_q0(c_q0)
);

dense_forward grp_dense_forward_fu_256(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dense_forward_fu_256_ap_start),
    .ap_done(grp_dense_forward_fu_256_ap_done),
    .ap_idle(grp_dense_forward_fu_256_ap_idle),
    .ap_ready(grp_dense_forward_fu_256_ap_ready),
    .h_address0(grp_dense_forward_fu_256_h_address0),
    .h_ce0(grp_dense_forward_fu_256_h_ce0),
    .h_q0(h_q0),
    .dense_output_address0(grp_dense_forward_fu_256_dense_output_address0),
    .dense_output_ce0(grp_dense_forward_fu_256_dense_output_ce0),
    .dense_output_we0(grp_dense_forward_fu_256_dense_output_we0),
    .dense_output_d0(grp_dense_forward_fu_256_dense_output_d0),
    .dense_output_q0(dense_output_q0)
);

softmax_forward grp_softmax_forward_fu_268(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_softmax_forward_fu_268_ap_start),
    .ap_done(grp_softmax_forward_fu_268_ap_done),
    .ap_idle(grp_softmax_forward_fu_268_ap_idle),
    .ap_ready(grp_softmax_forward_fu_268_ap_ready),
    .dense_output_address0(grp_softmax_forward_fu_268_dense_output_address0),
    .dense_output_ce0(grp_softmax_forward_fu_268_dense_output_ce0),
    .dense_output_q0(dense_output_q0),
    .softmax_output_address0(grp_softmax_forward_fu_268_softmax_output_address0),
    .softmax_output_ce0(grp_softmax_forward_fu_268_softmax_output_ce0),
    .softmax_output_we0(grp_softmax_forward_fu_268_softmax_output_we0),
    .softmax_output_d0(grp_softmax_forward_fu_268_softmax_output_d0),
    .softmax_output_q0(softmax_output_q0)
);

top_fptrunc_64ns_CeG #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
top_fptrunc_64ns_CeG_U46(
    .din0(tmp_107_i_reg_449),
    .dout(tmp_108_i_fu_280_p1)
);

top_fpext_32ns_64DeQ #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
top_fpext_32ns_64DeQ_U47(
    .din0(img_q0),
    .dout(tmp_105_i_fu_284_p1)
);

top_dadd_64ns_64nFfa #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
top_dadd_64ns_64nFfa_U48(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_106_i_reg_444),
    .din1(64'd13830554455654793216),
    .ce(1'b1),
    .dout(grp_fu_288_p2)
);

top_dmul_64ns_64nGfk #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
top_dmul_64ns_64nGfk_U49(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_105_i_reg_439),
    .din1(64'd4575657221408423936),
    .ce(1'b1),
    .dout(grp_fu_293_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dense_forward_fu_256_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond_i6_fu_384_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
            grp_dense_forward_fu_256_ap_start_reg <= 1'b1;
        end else if ((grp_dense_forward_fu_256_ap_ready == 1'b1)) begin
            grp_dense_forward_fu_256_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lstm_forward_once_fu_220_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state17) & (exitcond_i6_fu_384_p2 == 1'd0))) begin
            grp_lstm_forward_once_fu_220_ap_start_reg <= 1'b1;
        end else if ((grp_lstm_forward_once_fu_220_ap_ready == 1'b1)) begin
            grp_lstm_forward_once_fu_220_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_softmax_forward_fu_268_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_softmax_forward_fu_268_ap_start_reg <= 1'b1;
        end else if ((grp_softmax_forward_fu_268_ap_ready == 1'b1)) begin
            grp_softmax_forward_fu_268_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i4_fu_366_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        i1_i_reg_197 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state18) & (grp_lstm_forward_once_fu_220_ap_done == 1'b1))) begin
        i1_i_reg_197 <= i_4_reg_465;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_298_p2 == 1'd1))) begin
        i_i3_reg_186 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state16) & (exitcond1_i4_fu_366_p2 == 1'd0))) begin
        i_i3_reg_186 <= i_2_fu_372_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond_i_fu_340_p2 == 1'd1))) begin
        i_i_reg_164 <= i_3_reg_416;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_i_reg_164 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        i_reg_209 <= i_1_reg_473;
    end else if (((grp_softmax_forward_fu_268_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        i_reg_209 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_298_p2 == 1'd0))) begin
        j_i_reg_175 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        j_i_reg_175 <= j_reg_429;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        i_1_reg_473 <= i_1_fu_402_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_3_reg_416 <= i_3_fu_304_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        i_4_reg_465 <= i_4_fu_390_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond_i_fu_340_p2 == 1'd0))) begin
        img_addr_reg_434 <= tmp_4_cast_fu_361_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_429 <= j_fu_346_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_105_i_reg_439 <= tmp_105_i_fu_284_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_106_i_reg_444 <= grp_fu_293_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        tmp_107_i_reg_449 <= grp_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_298_p2 == 1'd0))) begin
        tmp_3_reg_421[10 : 2] <= tmp_3_fu_334_p2[10 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) & (exitcond_fu_396_p2 == 1'd0))) begin
        tmp_reg_478[3 : 0] <= tmp_fu_408_p1[3 : 0];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) & (exitcond_fu_396_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) & (exitcond_fu_396_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        c_address0 = tmp_i5_fu_378_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        c_address0 = grp_lstm_forward_once_fu_220_c_address0;
    end else begin
        c_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        c_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        c_ce0 = grp_lstm_forward_once_fu_220_c_ce0;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        c_d0 = 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        c_d0 = grp_lstm_forward_once_fu_220_c_d0;
    end else begin
        c_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (exitcond1_i4_fu_366_p2 == 1'd0))) begin
        c_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        c_we0 = grp_lstm_forward_once_fu_220_c_we0;
    end else begin
        c_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dense_output_address0 = grp_softmax_forward_fu_268_dense_output_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        dense_output_address0 = grp_dense_forward_fu_256_dense_output_address0;
    end else begin
        dense_output_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        dense_output_ce0 = grp_softmax_forward_fu_268_dense_output_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        dense_output_ce0 = grp_dense_forward_fu_256_dense_output_ce0;
    end else begin
        dense_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        dense_output_we0 = grp_dense_forward_fu_256_dense_output_we0;
    end else begin
        dense_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        h_address0 = tmp_i5_fu_378_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        h_address0 = grp_dense_forward_fu_256_h_address0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        h_address0 = grp_lstm_forward_once_fu_220_h_address0;
    end else begin
        h_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        h_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        h_ce0 = grp_dense_forward_fu_256_h_ce0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        h_ce0 = grp_lstm_forward_once_fu_220_h_ce0;
    end else begin
        h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        h_d0 = 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        h_d0 = grp_lstm_forward_once_fu_220_h_d0;
    end else begin
        h_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) & (exitcond1_i4_fu_366_p2 == 1'd0))) begin
        h_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        h_we0 = grp_lstm_forward_once_fu_220_h_we0;
    end else begin
        h_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        img_address0 = img_addr_reg_434;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        img_address0 = tmp_4_cast_fu_361_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        img_address0 = grp_lstm_forward_once_fu_220_img_line_address0;
    end else begin
        img_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state3))) begin
        img_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        img_ce0 = grp_lstm_forward_once_fu_220_img_line_ce0;
    end else begin
        img_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        img_we0 = 1'b1;
    end else begin
        img_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        softmax_output_address0 = tmp_fu_408_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        softmax_output_address0 = grp_softmax_forward_fu_268_softmax_output_address0;
    end else begin
        softmax_output_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        softmax_output_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        softmax_output_ce0 = grp_softmax_forward_fu_268_softmax_output_ce0;
    end else begin
        softmax_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        softmax_output_we0 = grp_softmax_forward_fu_268_softmax_output_we0;
    end else begin
        softmax_output_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_i_fu_298_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond_i_fu_340_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state16 : begin
            if (((exitcond1_i4_fu_366_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            if (((exitcond_i6_fu_384_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((1'b1 == ap_CS_fsm_state18) & (grp_lstm_forward_once_fu_220_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (grp_dense_forward_fu_256_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_softmax_forward_fu_268_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state22 : begin
            if (((1'b1 == ap_CS_fsm_state22) & (exitcond_fu_396_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond1_i4_fu_366_p2 = ((i_i3_reg_186 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond1_i_fu_298_p2 = ((i_i_reg_164 == 5'd28) ? 1'b1 : 1'b0);

assign exitcond_fu_396_p2 = ((i_reg_209 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond_i6_fu_384_p2 = ((i1_i_reg_197 == 5'd28) ? 1'b1 : 1'b0);

assign exitcond_i_fu_340_p2 = ((j_i_reg_175 == 5'd28) ? 1'b1 : 1'b0);

assign grp_dense_forward_fu_256_ap_start = grp_dense_forward_fu_256_ap_start_reg;

assign grp_lstm_forward_once_fu_220_ap_start = grp_lstm_forward_once_fu_220_ap_start_reg;

assign grp_softmax_forward_fu_268_ap_start = grp_softmax_forward_fu_268_ap_start_reg;

assign i_1_fu_402_p2 = (i_reg_209 + 4'd1);

assign i_2_fu_372_p2 = (i_i3_reg_186 + 8'd1);

assign i_3_fu_304_p2 = (i_i_reg_164 + 5'd1);

assign i_4_fu_390_p2 = (i1_i_reg_197 + 5'd1);

assign img_d0 = tmp_108_i_fu_280_p1;

assign j_fu_346_p2 = (j_i_reg_175 + 5'd1);

assign output_r_address0 = tmp_reg_478;

assign output_r_d0 = softmax_output_q0;

assign p_shl1_cast_fu_330_p1 = tmp_2_fu_322_p3;

assign p_shl_cast_fu_318_p1 = tmp_1_fu_310_p3;

assign tmp_1_fu_310_p3 = {{i_i_reg_164}, {5'd0}};

assign tmp_2_fu_322_p3 = {{i_i_reg_164}, {2'd0}};

assign tmp_3_fu_334_p2 = (p_shl_cast_fu_318_p1 - p_shl1_cast_fu_330_p1);

assign tmp_4_cast_fu_361_p1 = $signed(tmp_4_fu_356_p2);

assign tmp_4_fu_356_p2 = (tmp_3_reg_421 + tmp_i_cast_fu_352_p1);

assign tmp_fu_408_p1 = i_reg_209;

assign tmp_i5_fu_378_p1 = i_i3_reg_186;

assign tmp_i_cast_fu_352_p1 = j_i_reg_175;

always @ (posedge ap_clk) begin
    tmp_3_reg_421[1:0] <= 2'b00;
    tmp_reg_478[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //top
