// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dense_forward (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        h_address0,
        h_ce0,
        h_q0,
        dense_output_address0,
        dense_output_ce0,
        dense_output_we0,
        dense_output_d0,
        dense_output_q0
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] h_address0;
output   h_ce0;
input  [31:0] h_q0;
output  [6:0] dense_output_address0;
output   dense_output_ce0;
output   dense_output_we0;
output  [31:0] dense_output_d0;
input  [31:0] dense_output_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg h_ce0;
reg[6:0] dense_output_address0;
reg dense_output_ce0;
reg dense_output_we0;
reg[31:0] dense_output_d0;

(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [13:0] dense_kernel_address0;
reg    dense_kernel_ce0;
wire   [31:0] dense_kernel_q0;
wire   [6:0] dense_bias_address0;
reg    dense_bias_ce0;
wire   [31:0] dense_bias_q0;
wire   [31:0] grp_fu_141_p2;
reg   [31:0] reg_155;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state17;
wire   [7:0] i_24_fu_167_p2;
reg   [7:0] i_24_reg_293;
wire    ap_CS_fsm_state2;
wire   [15:0] tmp_cast_fu_178_p1;
reg   [15:0] tmp_cast_reg_298;
wire   [0:0] exitcond2_fu_161_p2;
reg   [6:0] dense_output_addr_reg_303;
wire   [7:0] j_11_fu_188_p2;
reg   [7:0] j_11_reg_311;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond1_fu_182_p2;
reg   [31:0] dense_kernel_load_reg_326;
wire    ap_CS_fsm_state4;
reg   [31:0] h_load_reg_331;
wire   [31:0] grp_fu_146_p2;
reg   [31:0] tmp_108_reg_336;
wire    ap_CS_fsm_state7;
wire   [7:0] i_25_fu_227_p2;
reg   [7:0] i_25_reg_344;
wire    ap_CS_fsm_state12;
wire   [0:0] exitcond_fu_221_p2;
reg   [6:0] dense_output_addr_1_reg_354;
reg   [31:0] dense_bias_load_reg_359;
wire    ap_CS_fsm_state13;
reg   [31:0] dense_output_load_reg_364;
reg   [7:0] i_reg_95;
reg   [31:0] storemerge1_reg_106;
reg   [7:0] j_reg_119;
reg   [7:0] i1_reg_130;
wire    ap_CS_fsm_state18;
wire   [63:0] tmp_fu_173_p1;
wire   [63:0] tmp_163_cast_fu_216_p1;
wire   [63:0] tmp_107_fu_194_p1;
wire   [63:0] tmp_105_fu_233_p1;
wire   [31:0] storemerge_fu_281_p3;
reg   [31:0] grp_fu_141_p0;
reg   [31:0] grp_fu_141_p1;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state5;
wire   [14:0] tmp_149_fu_199_p3;
wire   [15:0] tmp_162_cast_fu_207_p1;
wire   [15:0] tmp_151_fu_211_p2;
wire   [31:0] tmp_106_to_int_fu_239_p1;
wire   [7:0] tmp_145_fu_243_p4;
wire   [22:0] tmp_150_fu_253_p1;
wire   [0:0] notrhs_fu_263_p2;
wire   [0:0] notlhs_fu_257_p2;
wire   [0:0] tmp_s_fu_269_p2;
wire   [0:0] tmp_147_fu_150_p2;
wire   [0:0] tmp_148_fu_275_p2;
reg   [17:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 18'd1;
end

dense_forward_denHfu #(
    .DataWidth( 32 ),
    .AddressRange( 16384 ),
    .AddressWidth( 14 ))
dense_kernel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dense_kernel_address0),
    .ce0(dense_kernel_ce0),
    .q0(dense_kernel_q0)
);

dense_forward_denIfE #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
dense_bias_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dense_bias_address0),
    .ce0(dense_bias_ce0),
    .q0(dense_bias_q0)
);

top_fadd_32ns_32nAem #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_fadd_32ns_32nAem_U33(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_141_p0),
    .din1(grp_fu_141_p1),
    .ce(1'b1),
    .dout(grp_fu_141_p2)
);

top_fmul_32ns_32nBew #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_fmul_32ns_32nBew_U34(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(dense_kernel_load_reg_326),
    .din1(h_load_reg_331),
    .ce(1'b1),
    .dout(grp_fu_146_p2)
);

top_fcmp_32ns_32nEe0 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
top_fcmp_32ns_32nEe0_U35(
    .din0(reg_155),
    .din1(32'd0),
    .opcode(5'd4),
    .dout(tmp_147_fu_150_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_161_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_reg_130 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        i1_reg_130 <= i_25_reg_344;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond1_fu_182_p2 == 1'd1))) begin
        i_reg_95 <= i_24_reg_293;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_95 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        j_reg_119 <= j_11_reg_311;
    end else if (((exitcond2_fu_161_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_119 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        storemerge1_reg_106 <= grp_fu_141_p2;
    end else if (((exitcond2_fu_161_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        storemerge1_reg_106 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        dense_bias_load_reg_359 <= dense_bias_q0;
        dense_output_load_reg_364 <= dense_output_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        dense_kernel_load_reg_326 <= dense_kernel_q0;
        h_load_reg_331 <= h_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_221_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        dense_output_addr_1_reg_354 <= tmp_105_fu_233_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_161_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        dense_output_addr_reg_303 <= tmp_fu_173_p1;
        tmp_cast_reg_298[7 : 0] <= tmp_cast_fu_178_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_24_reg_293 <= i_24_fu_167_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_25_reg_344 <= i_25_fu_227_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_11_reg_311 <= j_11_fu_188_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_155 <= grp_fu_141_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_108_reg_336 <= grp_fu_146_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state12) & (exitcond_fu_221_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state12) & (exitcond_fu_221_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        dense_bias_ce0 = 1'b1;
    end else begin
        dense_bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        dense_kernel_ce0 = 1'b1;
    end else begin
        dense_kernel_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        dense_output_address0 = dense_output_addr_1_reg_354;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        dense_output_address0 = tmp_105_fu_233_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        dense_output_address0 = dense_output_addr_reg_303;
    end else begin
        dense_output_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state12))) begin
        dense_output_ce0 = 1'b1;
    end else begin
        dense_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        dense_output_d0 = storemerge_fu_281_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        dense_output_d0 = storemerge1_reg_106;
    end else begin
        dense_output_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18))) begin
        dense_output_we0 = 1'b1;
    end else begin
        dense_output_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_141_p0 = dense_output_load_reg_364;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_141_p0 = storemerge1_reg_106;
    end else begin
        grp_fu_141_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_141_p1 = dense_bias_load_reg_359;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_141_p1 = tmp_108_reg_336;
    end else begin
        grp_fu_141_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_ce0 = 1'b1;
    end else begin
        h_ce0 = 1'b0;
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
            if (((exitcond2_fu_161_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond1_fu_182_p2 == 1'd1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (exitcond_fu_221_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign dense_bias_address0 = tmp_105_fu_233_p1;

assign dense_kernel_address0 = tmp_163_cast_fu_216_p1;

assign exitcond1_fu_182_p2 = ((j_reg_119 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond2_fu_161_p2 = ((i_reg_95 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond_fu_221_p2 = ((i1_reg_130 == 8'd128) ? 1'b1 : 1'b0);

assign h_address0 = tmp_107_fu_194_p1;

assign i_24_fu_167_p2 = (i_reg_95 + 8'd1);

assign i_25_fu_227_p2 = (i1_reg_130 + 8'd1);

assign j_11_fu_188_p2 = (j_reg_119 + 8'd1);

assign notlhs_fu_257_p2 = ((tmp_145_fu_243_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs_fu_263_p2 = ((tmp_150_fu_253_p1 == 23'd0) ? 1'b1 : 1'b0);

assign storemerge_fu_281_p3 = ((tmp_148_fu_275_p2[0:0] === 1'b1) ? 32'd0 : reg_155);

assign tmp_105_fu_233_p1 = i1_reg_130;

assign tmp_106_to_int_fu_239_p1 = reg_155;

assign tmp_107_fu_194_p1 = j_reg_119;

assign tmp_145_fu_243_p4 = {{tmp_106_to_int_fu_239_p1[30:23]}};

assign tmp_148_fu_275_p2 = (tmp_s_fu_269_p2 & tmp_147_fu_150_p2);

assign tmp_149_fu_199_p3 = {{j_reg_119}, {7'd0}};

assign tmp_150_fu_253_p1 = tmp_106_to_int_fu_239_p1[22:0];

assign tmp_151_fu_211_p2 = (tmp_cast_reg_298 + tmp_162_cast_fu_207_p1);

assign tmp_162_cast_fu_207_p1 = tmp_149_fu_199_p3;

assign tmp_163_cast_fu_216_p1 = tmp_151_fu_211_p2;

assign tmp_cast_fu_178_p1 = i_reg_95;

assign tmp_fu_173_p1 = i_reg_95;

assign tmp_s_fu_269_p2 = (notrhs_fu_263_p2 | notlhs_fu_257_p2);

always @ (posedge ap_clk) begin
    tmp_cast_reg_298[15:8] <= 8'b00000000;
end

endmodule //dense_forward
