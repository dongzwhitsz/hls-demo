// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _top_HH_
#define _top_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "lstm_forward_once.h"
#include "dense_forward.h"
#include "softmax_forward.h"
#include "top_fptrunc_64ns_CeG.h"
#include "top_fpext_32ns_64DeQ.h"
#include "top_dadd_64ns_64nFfa.h"
#include "top_dmul_64ns_64nGfk.h"
#include "top_c.h"
#include "top_softmax_output.h"

namespace ap_rtl {

struct top : public sc_module {
    // Port declarations 15
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > img_address0;
    sc_out< sc_logic > img_ce0;
    sc_out< sc_logic > img_we0;
    sc_out< sc_lv<32> > img_d0;
    sc_in< sc_lv<32> > img_q0;
    sc_out< sc_lv<4> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<64> > ap_var_for_const0;
    sc_signal< sc_lv<64> > ap_var_for_const2;


    // Module declarations
    top(sc_module_name name);
    SC_HAS_PROCESS(top);

    ~top();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    top_c* c_U;
    top_c* h_U;
    top_c* dense_output_U;
    top_softmax_output* softmax_output_U;
    lstm_forward_once* grp_lstm_forward_once_fu_220;
    dense_forward* grp_dense_forward_fu_256;
    softmax_forward* grp_softmax_forward_fu_268;
    top_fptrunc_64ns_CeG<1,1,64,32>* top_fptrunc_64ns_CeG_U46;
    top_fpext_32ns_64DeQ<1,1,32,64>* top_fpext_32ns_64DeQ_U47;
    top_dadd_64ns_64nFfa<1,5,64,64,64>* top_dadd_64ns_64nFfa_U48;
    top_dmul_64ns_64nGfk<1,5,64,64,64>* top_dmul_64ns_64nGfk_U49;
    sc_signal< sc_lv<23> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > c_address0;
    sc_signal< sc_logic > c_ce0;
    sc_signal< sc_logic > c_we0;
    sc_signal< sc_lv<32> > c_d0;
    sc_signal< sc_lv<32> > c_q0;
    sc_signal< sc_lv<7> > h_address0;
    sc_signal< sc_logic > h_ce0;
    sc_signal< sc_logic > h_we0;
    sc_signal< sc_lv<32> > h_d0;
    sc_signal< sc_lv<32> > h_q0;
    sc_signal< sc_lv<7> > dense_output_address0;
    sc_signal< sc_logic > dense_output_ce0;
    sc_signal< sc_logic > dense_output_we0;
    sc_signal< sc_lv<32> > dense_output_q0;
    sc_signal< sc_lv<4> > softmax_output_address0;
    sc_signal< sc_logic > softmax_output_ce0;
    sc_signal< sc_logic > softmax_output_we0;
    sc_signal< sc_lv<32> > softmax_output_q0;
    sc_signal< sc_lv<5> > i_3_fu_304_p2;
    sc_signal< sc_lv<5> > i_3_reg_416;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > tmp_3_fu_334_p2;
    sc_signal< sc_lv<11> > tmp_3_reg_421;
    sc_signal< sc_lv<1> > exitcond1_i_fu_298_p2;
    sc_signal< sc_lv<5> > j_fu_346_p2;
    sc_signal< sc_lv<5> > j_reg_429;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > img_addr_reg_434;
    sc_signal< sc_lv<1> > exitcond_i_fu_340_p2;
    sc_signal< sc_lv<64> > tmp_105_i_fu_284_p1;
    sc_signal< sc_lv<64> > tmp_105_i_reg_439;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > grp_fu_293_p2;
    sc_signal< sc_lv<64> > tmp_106_i_reg_444;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > grp_fu_288_p2;
    sc_signal< sc_lv<64> > tmp_107_i_reg_449;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > i_2_fu_372_p2;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<5> > i_4_fu_390_p2;
    sc_signal< sc_lv<5> > i_4_reg_465;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<4> > i_1_fu_402_p2;
    sc_signal< sc_lv<4> > i_1_reg_473;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<64> > tmp_fu_408_p1;
    sc_signal< sc_lv<64> > tmp_reg_478;
    sc_signal< sc_lv<1> > exitcond_fu_396_p2;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_ap_start;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_ap_done;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_ap_idle;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_ap_ready;
    sc_signal< sc_lv<10> > grp_lstm_forward_once_fu_220_img_line_address0;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_img_line_ce0;
    sc_signal< sc_lv<7> > grp_lstm_forward_once_fu_220_h_address0;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_h_ce0;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_h_we0;
    sc_signal< sc_lv<32> > grp_lstm_forward_once_fu_220_h_d0;
    sc_signal< sc_lv<7> > grp_lstm_forward_once_fu_220_c_address0;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_c_ce0;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_c_we0;
    sc_signal< sc_lv<32> > grp_lstm_forward_once_fu_220_c_d0;
    sc_signal< sc_logic > grp_dense_forward_fu_256_ap_start;
    sc_signal< sc_logic > grp_dense_forward_fu_256_ap_done;
    sc_signal< sc_logic > grp_dense_forward_fu_256_ap_idle;
    sc_signal< sc_logic > grp_dense_forward_fu_256_ap_ready;
    sc_signal< sc_lv<7> > grp_dense_forward_fu_256_h_address0;
    sc_signal< sc_logic > grp_dense_forward_fu_256_h_ce0;
    sc_signal< sc_lv<7> > grp_dense_forward_fu_256_dense_output_address0;
    sc_signal< sc_logic > grp_dense_forward_fu_256_dense_output_ce0;
    sc_signal< sc_logic > grp_dense_forward_fu_256_dense_output_we0;
    sc_signal< sc_lv<32> > grp_dense_forward_fu_256_dense_output_d0;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_ap_start;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_ap_done;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_ap_idle;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_ap_ready;
    sc_signal< sc_lv<7> > grp_softmax_forward_fu_268_dense_output_address0;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_dense_output_ce0;
    sc_signal< sc_lv<4> > grp_softmax_forward_fu_268_softmax_output_address0;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_softmax_output_ce0;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_softmax_output_we0;
    sc_signal< sc_lv<32> > grp_softmax_forward_fu_268_softmax_output_d0;
    sc_signal< sc_lv<5> > i_i_reg_164;
    sc_signal< sc_lv<5> > j_i_reg_175;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<8> > i_i3_reg_186;
    sc_signal< sc_lv<1> > exitcond1_i4_fu_366_p2;
    sc_signal< sc_lv<5> > i1_i_reg_197;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<4> > i_reg_209;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > grp_lstm_forward_once_fu_220_ap_start_reg;
    sc_signal< sc_lv<1> > exitcond_i6_fu_384_p2;
    sc_signal< sc_logic > grp_dense_forward_fu_256_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > grp_softmax_forward_fu_268_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<64> > tmp_4_cast_fu_361_p1;
    sc_signal< sc_lv<64> > tmp_i5_fu_378_p1;
    sc_signal< sc_lv<32> > tmp_108_i_fu_280_p1;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<10> > tmp_1_fu_310_p3;
    sc_signal< sc_lv<7> > tmp_2_fu_322_p3;
    sc_signal< sc_lv<11> > p_shl_cast_fu_318_p1;
    sc_signal< sc_lv<11> > p_shl1_cast_fu_330_p1;
    sc_signal< sc_lv<11> > tmp_i_cast_fu_352_p1;
    sc_signal< sc_lv<11> > tmp_4_fu_356_p2;
    sc_signal< sc_lv<23> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<23> ap_ST_fsm_state1;
    static const sc_lv<23> ap_ST_fsm_state2;
    static const sc_lv<23> ap_ST_fsm_state3;
    static const sc_lv<23> ap_ST_fsm_state4;
    static const sc_lv<23> ap_ST_fsm_state5;
    static const sc_lv<23> ap_ST_fsm_state6;
    static const sc_lv<23> ap_ST_fsm_state7;
    static const sc_lv<23> ap_ST_fsm_state8;
    static const sc_lv<23> ap_ST_fsm_state9;
    static const sc_lv<23> ap_ST_fsm_state10;
    static const sc_lv<23> ap_ST_fsm_state11;
    static const sc_lv<23> ap_ST_fsm_state12;
    static const sc_lv<23> ap_ST_fsm_state13;
    static const sc_lv<23> ap_ST_fsm_state14;
    static const sc_lv<23> ap_ST_fsm_state15;
    static const sc_lv<23> ap_ST_fsm_state16;
    static const sc_lv<23> ap_ST_fsm_state17;
    static const sc_lv<23> ap_ST_fsm_state18;
    static const sc_lv<23> ap_ST_fsm_state19;
    static const sc_lv<23> ap_ST_fsm_state20;
    static const sc_lv<23> ap_ST_fsm_state21;
    static const sc_lv<23> ap_ST_fsm_state22;
    static const sc_lv<23> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<64> ap_const_lv64_BFF0000000000000;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<64> ap_const_lv64_3F80000000000000;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_1C;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_address0();
    void thread_c_ce0();
    void thread_c_d0();
    void thread_c_we0();
    void thread_dense_output_address0();
    void thread_dense_output_ce0();
    void thread_dense_output_we0();
    void thread_exitcond1_i4_fu_366_p2();
    void thread_exitcond1_i_fu_298_p2();
    void thread_exitcond_fu_396_p2();
    void thread_exitcond_i6_fu_384_p2();
    void thread_exitcond_i_fu_340_p2();
    void thread_grp_dense_forward_fu_256_ap_start();
    void thread_grp_lstm_forward_once_fu_220_ap_start();
    void thread_grp_softmax_forward_fu_268_ap_start();
    void thread_h_address0();
    void thread_h_ce0();
    void thread_h_d0();
    void thread_h_we0();
    void thread_i_1_fu_402_p2();
    void thread_i_2_fu_372_p2();
    void thread_i_3_fu_304_p2();
    void thread_i_4_fu_390_p2();
    void thread_img_address0();
    void thread_img_ce0();
    void thread_img_d0();
    void thread_img_we0();
    void thread_j_fu_346_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_330_p1();
    void thread_p_shl_cast_fu_318_p1();
    void thread_softmax_output_address0();
    void thread_softmax_output_ce0();
    void thread_softmax_output_we0();
    void thread_tmp_1_fu_310_p3();
    void thread_tmp_2_fu_322_p3();
    void thread_tmp_3_fu_334_p2();
    void thread_tmp_4_cast_fu_361_p1();
    void thread_tmp_4_fu_356_p2();
    void thread_tmp_fu_408_p1();
    void thread_tmp_i5_fu_378_p1();
    void thread_tmp_i_cast_fu_352_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
