// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dense_forward.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dense_forward::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dense_forward::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<18> dense_forward::ap_ST_fsm_state1 = "1";
const sc_lv<18> dense_forward::ap_ST_fsm_state2 = "10";
const sc_lv<18> dense_forward::ap_ST_fsm_state3 = "100";
const sc_lv<18> dense_forward::ap_ST_fsm_state4 = "1000";
const sc_lv<18> dense_forward::ap_ST_fsm_state5 = "10000";
const sc_lv<18> dense_forward::ap_ST_fsm_state6 = "100000";
const sc_lv<18> dense_forward::ap_ST_fsm_state7 = "1000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state8 = "10000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state9 = "100000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state10 = "1000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state11 = "10000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state12 = "100000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state15 = "100000000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state16 = "1000000000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state17 = "10000000000000000";
const sc_lv<18> dense_forward::ap_ST_fsm_state18 = "100000000000000000";
const sc_lv<32> dense_forward::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> dense_forward::ap_const_lv32_A = "1010";
const sc_lv<32> dense_forward::ap_const_lv32_10 = "10000";
const sc_lv<32> dense_forward::ap_const_lv32_1 = "1";
const sc_lv<1> dense_forward::ap_const_lv1_0 = "0";
const sc_lv<32> dense_forward::ap_const_lv32_2 = "10";
const sc_lv<32> dense_forward::ap_const_lv32_3 = "11";
const sc_lv<32> dense_forward::ap_const_lv32_6 = "110";
const sc_lv<32> dense_forward::ap_const_lv32_B = "1011";
const sc_lv<32> dense_forward::ap_const_lv32_C = "1100";
const sc_lv<8> dense_forward::ap_const_lv8_0 = "00000000";
const sc_lv<1> dense_forward::ap_const_lv1_1 = "1";
const sc_lv<32> dense_forward::ap_const_lv32_11 = "10001";
const sc_lv<32> dense_forward::ap_const_lv32_7 = "111";
const sc_lv<32> dense_forward::ap_const_lv32_D = "1101";
const sc_lv<32> dense_forward::ap_const_lv32_4 = "100";
const sc_lv<8> dense_forward::ap_const_lv8_80 = "10000000";
const sc_lv<8> dense_forward::ap_const_lv8_1 = "1";
const sc_lv<7> dense_forward::ap_const_lv7_0 = "0000000";
const sc_lv<32> dense_forward::ap_const_lv32_17 = "10111";
const sc_lv<32> dense_forward::ap_const_lv32_1E = "11110";
const sc_lv<8> dense_forward::ap_const_lv8_FF = "11111111";
const sc_lv<23> dense_forward::ap_const_lv23_0 = "00000000000000000000000";
const sc_lv<5> dense_forward::ap_const_lv5_4 = "100";
const bool dense_forward::ap_const_boolean_1 = true;

dense_forward::dense_forward(sc_module_name name) : sc_module(name), mVcdFile(0) {
    dense_kernel_U = new dense_forward_denHfu("dense_kernel_U");
    dense_kernel_U->clk(ap_clk);
    dense_kernel_U->reset(ap_rst);
    dense_kernel_U->address0(dense_kernel_address0);
    dense_kernel_U->ce0(dense_kernel_ce0);
    dense_kernel_U->q0(dense_kernel_q0);
    dense_bias_U = new dense_forward_denIfE("dense_bias_U");
    dense_bias_U->clk(ap_clk);
    dense_bias_U->reset(ap_rst);
    dense_bias_U->address0(dense_bias_address0);
    dense_bias_U->ce0(dense_bias_ce0);
    dense_bias_U->q0(dense_bias_q0);
    top_fadd_32ns_32nAem_U33 = new top_fadd_32ns_32nAem<1,4,32,32,32>("top_fadd_32ns_32nAem_U33");
    top_fadd_32ns_32nAem_U33->clk(ap_clk);
    top_fadd_32ns_32nAem_U33->reset(ap_rst);
    top_fadd_32ns_32nAem_U33->din0(grp_fu_141_p0);
    top_fadd_32ns_32nAem_U33->din1(grp_fu_141_p1);
    top_fadd_32ns_32nAem_U33->ce(ap_var_for_const0);
    top_fadd_32ns_32nAem_U33->dout(grp_fu_141_p2);
    top_fmul_32ns_32nBew_U34 = new top_fmul_32ns_32nBew<1,3,32,32,32>("top_fmul_32ns_32nBew_U34");
    top_fmul_32ns_32nBew_U34->clk(ap_clk);
    top_fmul_32ns_32nBew_U34->reset(ap_rst);
    top_fmul_32ns_32nBew_U34->din0(dense_kernel_load_reg_326);
    top_fmul_32ns_32nBew_U34->din1(h_load_reg_331);
    top_fmul_32ns_32nBew_U34->ce(ap_var_for_const0);
    top_fmul_32ns_32nBew_U34->dout(grp_fu_146_p2);
    top_fcmp_32ns_32nEe0_U35 = new top_fcmp_32ns_32nEe0<1,1,32,32,1>("top_fcmp_32ns_32nEe0_U35");
    top_fcmp_32ns_32nEe0_U35->din0(reg_155);
    top_fcmp_32ns_32nEe0_U35->din1(ap_var_for_const1);
    top_fcmp_32ns_32nEe0_U35->opcode(ap_var_for_const2);
    top_fcmp_32ns_32nEe0_U35->dout(tmp_147_fu_150_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state13);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state14);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state17);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state18);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( exitcond_fu_221_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( exitcond_fu_221_p2 );

    SC_METHOD(thread_dense_bias_address0);
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( tmp_105_fu_233_p1 );

    SC_METHOD(thread_dense_bias_ce0);
    sensitive << ( ap_CS_fsm_state12 );

    SC_METHOD(thread_dense_kernel_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_163_cast_fu_216_p1 );

    SC_METHOD(thread_dense_kernel_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_dense_output_address0);
    sensitive << ( dense_output_addr_reg_303 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( dense_output_addr_1_reg_354 );
    sensitive << ( ap_CS_fsm_state18 );
    sensitive << ( tmp_105_fu_233_p1 );

    SC_METHOD(thread_dense_output_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state18 );

    SC_METHOD(thread_dense_output_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( storemerge1_reg_106 );
    sensitive << ( ap_CS_fsm_state18 );
    sensitive << ( storemerge_fu_281_p3 );

    SC_METHOD(thread_dense_output_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state18 );

    SC_METHOD(thread_exitcond1_fu_182_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( j_reg_119 );

    SC_METHOD(thread_exitcond2_fu_161_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_95 );

    SC_METHOD(thread_exitcond_fu_221_p2);
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( i1_reg_130 );

    SC_METHOD(thread_grp_fu_141_p0);
    sensitive << ( dense_output_load_reg_364 );
    sensitive << ( storemerge1_reg_106 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_grp_fu_141_p1);
    sensitive << ( tmp_108_reg_336 );
    sensitive << ( dense_bias_load_reg_359 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_h_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_107_fu_194_p1 );

    SC_METHOD(thread_h_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_i_24_fu_167_p2);
    sensitive << ( i_reg_95 );

    SC_METHOD(thread_i_25_fu_227_p2);
    sensitive << ( i1_reg_130 );

    SC_METHOD(thread_j_11_fu_188_p2);
    sensitive << ( j_reg_119 );

    SC_METHOD(thread_notlhs_fu_257_p2);
    sensitive << ( ap_CS_fsm_state18 );
    sensitive << ( tmp_145_fu_243_p4 );

    SC_METHOD(thread_notrhs_fu_263_p2);
    sensitive << ( ap_CS_fsm_state18 );
    sensitive << ( tmp_150_fu_253_p1 );

    SC_METHOD(thread_storemerge_fu_281_p3);
    sensitive << ( reg_155 );
    sensitive << ( tmp_148_fu_275_p2 );

    SC_METHOD(thread_tmp_105_fu_233_p1);
    sensitive << ( i1_reg_130 );

    SC_METHOD(thread_tmp_106_to_int_fu_239_p1);
    sensitive << ( reg_155 );

    SC_METHOD(thread_tmp_107_fu_194_p1);
    sensitive << ( j_reg_119 );

    SC_METHOD(thread_tmp_145_fu_243_p4);
    sensitive << ( tmp_106_to_int_fu_239_p1 );

    SC_METHOD(thread_tmp_148_fu_275_p2);
    sensitive << ( tmp_s_fu_269_p2 );
    sensitive << ( tmp_147_fu_150_p2 );

    SC_METHOD(thread_tmp_149_fu_199_p3);
    sensitive << ( j_reg_119 );

    SC_METHOD(thread_tmp_150_fu_253_p1);
    sensitive << ( tmp_106_to_int_fu_239_p1 );

    SC_METHOD(thread_tmp_151_fu_211_p2);
    sensitive << ( tmp_cast_reg_298 );
    sensitive << ( tmp_162_cast_fu_207_p1 );

    SC_METHOD(thread_tmp_162_cast_fu_207_p1);
    sensitive << ( tmp_149_fu_199_p3 );

    SC_METHOD(thread_tmp_163_cast_fu_216_p1);
    sensitive << ( tmp_151_fu_211_p2 );

    SC_METHOD(thread_tmp_cast_fu_178_p1);
    sensitive << ( i_reg_95 );

    SC_METHOD(thread_tmp_fu_173_p1);
    sensitive << ( i_reg_95 );

    SC_METHOD(thread_tmp_s_fu_269_p2);
    sensitive << ( notrhs_fu_263_p2 );
    sensitive << ( notlhs_fu_257_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_161_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond1_fu_182_p2 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( exitcond_fu_221_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const2);

    ap_CS_fsm = "000000000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dense_forward_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, h_address0, "(port)h_address0");
    sc_trace(mVcdFile, h_ce0, "(port)h_ce0");
    sc_trace(mVcdFile, h_q0, "(port)h_q0");
    sc_trace(mVcdFile, dense_output_address0, "(port)dense_output_address0");
    sc_trace(mVcdFile, dense_output_ce0, "(port)dense_output_ce0");
    sc_trace(mVcdFile, dense_output_we0, "(port)dense_output_we0");
    sc_trace(mVcdFile, dense_output_d0, "(port)dense_output_d0");
    sc_trace(mVcdFile, dense_output_q0, "(port)dense_output_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, dense_kernel_address0, "dense_kernel_address0");
    sc_trace(mVcdFile, dense_kernel_ce0, "dense_kernel_ce0");
    sc_trace(mVcdFile, dense_kernel_q0, "dense_kernel_q0");
    sc_trace(mVcdFile, dense_bias_address0, "dense_bias_address0");
    sc_trace(mVcdFile, dense_bias_ce0, "dense_bias_ce0");
    sc_trace(mVcdFile, dense_bias_q0, "dense_bias_q0");
    sc_trace(mVcdFile, grp_fu_141_p2, "grp_fu_141_p2");
    sc_trace(mVcdFile, reg_155, "reg_155");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, ap_CS_fsm_state17, "ap_CS_fsm_state17");
    sc_trace(mVcdFile, i_24_fu_167_p2, "i_24_fu_167_p2");
    sc_trace(mVcdFile, i_24_reg_293, "i_24_reg_293");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_cast_fu_178_p1, "tmp_cast_fu_178_p1");
    sc_trace(mVcdFile, tmp_cast_reg_298, "tmp_cast_reg_298");
    sc_trace(mVcdFile, exitcond2_fu_161_p2, "exitcond2_fu_161_p2");
    sc_trace(mVcdFile, dense_output_addr_reg_303, "dense_output_addr_reg_303");
    sc_trace(mVcdFile, j_11_fu_188_p2, "j_11_fu_188_p2");
    sc_trace(mVcdFile, j_11_reg_311, "j_11_reg_311");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, exitcond1_fu_182_p2, "exitcond1_fu_182_p2");
    sc_trace(mVcdFile, dense_kernel_load_reg_326, "dense_kernel_load_reg_326");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, h_load_reg_331, "h_load_reg_331");
    sc_trace(mVcdFile, grp_fu_146_p2, "grp_fu_146_p2");
    sc_trace(mVcdFile, tmp_108_reg_336, "tmp_108_reg_336");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, i_25_fu_227_p2, "i_25_fu_227_p2");
    sc_trace(mVcdFile, i_25_reg_344, "i_25_reg_344");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, exitcond_fu_221_p2, "exitcond_fu_221_p2");
    sc_trace(mVcdFile, dense_output_addr_1_reg_354, "dense_output_addr_1_reg_354");
    sc_trace(mVcdFile, dense_bias_load_reg_359, "dense_bias_load_reg_359");
    sc_trace(mVcdFile, ap_CS_fsm_state13, "ap_CS_fsm_state13");
    sc_trace(mVcdFile, dense_output_load_reg_364, "dense_output_load_reg_364");
    sc_trace(mVcdFile, i_reg_95, "i_reg_95");
    sc_trace(mVcdFile, storemerge1_reg_106, "storemerge1_reg_106");
    sc_trace(mVcdFile, j_reg_119, "j_reg_119");
    sc_trace(mVcdFile, i1_reg_130, "i1_reg_130");
    sc_trace(mVcdFile, ap_CS_fsm_state18, "ap_CS_fsm_state18");
    sc_trace(mVcdFile, tmp_fu_173_p1, "tmp_fu_173_p1");
    sc_trace(mVcdFile, tmp_163_cast_fu_216_p1, "tmp_163_cast_fu_216_p1");
    sc_trace(mVcdFile, tmp_107_fu_194_p1, "tmp_107_fu_194_p1");
    sc_trace(mVcdFile, tmp_105_fu_233_p1, "tmp_105_fu_233_p1");
    sc_trace(mVcdFile, storemerge_fu_281_p3, "storemerge_fu_281_p3");
    sc_trace(mVcdFile, grp_fu_141_p0, "grp_fu_141_p0");
    sc_trace(mVcdFile, grp_fu_141_p1, "grp_fu_141_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, ap_CS_fsm_state14, "ap_CS_fsm_state14");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_149_fu_199_p3, "tmp_149_fu_199_p3");
    sc_trace(mVcdFile, tmp_162_cast_fu_207_p1, "tmp_162_cast_fu_207_p1");
    sc_trace(mVcdFile, tmp_151_fu_211_p2, "tmp_151_fu_211_p2");
    sc_trace(mVcdFile, tmp_106_to_int_fu_239_p1, "tmp_106_to_int_fu_239_p1");
    sc_trace(mVcdFile, tmp_145_fu_243_p4, "tmp_145_fu_243_p4");
    sc_trace(mVcdFile, tmp_150_fu_253_p1, "tmp_150_fu_253_p1");
    sc_trace(mVcdFile, notrhs_fu_263_p2, "notrhs_fu_263_p2");
    sc_trace(mVcdFile, notlhs_fu_257_p2, "notlhs_fu_257_p2");
    sc_trace(mVcdFile, tmp_s_fu_269_p2, "tmp_s_fu_269_p2");
    sc_trace(mVcdFile, tmp_147_fu_150_p2, "tmp_147_fu_150_p2");
    sc_trace(mVcdFile, tmp_148_fu_275_p2, "tmp_148_fu_275_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dense_forward::~dense_forward() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete dense_kernel_U;
    delete dense_bias_U;
    delete top_fadd_32ns_32nAem_U33;
    delete top_fmul_32ns_32nBew_U34;
    delete top_fcmp_32ns_32nEe0_U35;
}

void dense_forward::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void dense_forward::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv32_0;
}

void dense_forward::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv5_4;
}

void dense_forward::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_161_p2.read(), ap_const_lv1_1))) {
        i1_reg_130 = ap_const_lv8_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        i1_reg_130 = i_25_reg_344.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_182_p2.read(), ap_const_lv1_1))) {
        i_reg_95 = i_24_reg_293.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_95 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        j_reg_119 = j_11_reg_311.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_161_p2.read(), ap_const_lv1_0))) {
        j_reg_119 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        storemerge1_reg_106 = grp_fu_141_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_161_p2.read(), ap_const_lv1_0))) {
        storemerge1_reg_106 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) {
        dense_bias_load_reg_359 = dense_bias_q0.read();
        dense_output_load_reg_364 = dense_output_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        dense_kernel_load_reg_326 = dense_kernel_q0.read();
        h_load_reg_331 = h_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_221_p2.read()))) {
        dense_output_addr_1_reg_354 =  (sc_lv<7>) (tmp_105_fu_233_p1.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_161_p2.read(), ap_const_lv1_0))) {
        dense_output_addr_reg_303 =  (sc_lv<7>) (tmp_fu_173_p1.read());
        tmp_cast_reg_298 = tmp_cast_fu_178_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_24_reg_293 = i_24_fu_167_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        i_25_reg_344 = i_25_fu_227_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        j_11_reg_311 = j_11_fu_188_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()) || esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read()))) {
        reg_155 = grp_fu_141_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        tmp_108_reg_336 = grp_fu_146_p2.read();
    }
}

void dense_forward::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void dense_forward::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void dense_forward::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[11];
}

void dense_forward::thread_ap_CS_fsm_state13() {
    ap_CS_fsm_state13 = ap_CS_fsm.read()[12];
}

void dense_forward::thread_ap_CS_fsm_state14() {
    ap_CS_fsm_state14 = ap_CS_fsm.read()[13];
}

void dense_forward::thread_ap_CS_fsm_state17() {
    ap_CS_fsm_state17 = ap_CS_fsm.read()[16];
}

void dense_forward::thread_ap_CS_fsm_state18() {
    ap_CS_fsm_state18 = ap_CS_fsm.read()[17];
}

void dense_forward::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void dense_forward::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void dense_forward::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void dense_forward::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void dense_forward::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void dense_forward::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void dense_forward::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_221_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dense_forward::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dense_forward::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_221_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dense_forward::thread_dense_bias_address0() {
    dense_bias_address0 =  (sc_lv<7>) (tmp_105_fu_233_p1.read());
}

void dense_forward::thread_dense_bias_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        dense_bias_ce0 = ap_const_logic_1;
    } else {
        dense_bias_ce0 = ap_const_logic_0;
    }
}

void dense_forward::thread_dense_kernel_address0() {
    dense_kernel_address0 =  (sc_lv<14>) (tmp_163_cast_fu_216_p1.read());
}

void dense_forward::thread_dense_kernel_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dense_kernel_ce0 = ap_const_logic_1;
    } else {
        dense_kernel_ce0 = ap_const_logic_0;
    }
}

void dense_forward::thread_dense_output_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        dense_output_address0 = dense_output_addr_1_reg_354.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        dense_output_address0 =  (sc_lv<7>) (tmp_105_fu_233_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dense_output_address0 = dense_output_addr_reg_303.read();
    } else {
        dense_output_address0 = "XXXXXXX";
    }
}

void dense_forward::thread_dense_output_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()))) {
        dense_output_ce0 = ap_const_logic_1;
    } else {
        dense_output_ce0 = ap_const_logic_0;
    }
}

void dense_forward::thread_dense_output_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        dense_output_d0 = storemerge_fu_281_p3.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dense_output_d0 = storemerge1_reg_106.read();
    } else {
        dense_output_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void dense_forward::thread_dense_output_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read()))) {
        dense_output_we0 = ap_const_logic_1;
    } else {
        dense_output_we0 = ap_const_logic_0;
    }
}

void dense_forward::thread_exitcond1_fu_182_p2() {
    exitcond1_fu_182_p2 = (!j_reg_119.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_119.read() == ap_const_lv8_80);
}

void dense_forward::thread_exitcond2_fu_161_p2() {
    exitcond2_fu_161_p2 = (!i_reg_95.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_95.read() == ap_const_lv8_80);
}

void dense_forward::thread_exitcond_fu_221_p2() {
    exitcond_fu_221_p2 = (!i1_reg_130.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(i1_reg_130.read() == ap_const_lv8_80);
}

void dense_forward::thread_grp_fu_141_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        grp_fu_141_p0 = dense_output_load_reg_364.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_fu_141_p0 = storemerge1_reg_106.read();
    } else {
        grp_fu_141_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void dense_forward::thread_grp_fu_141_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        grp_fu_141_p1 = dense_bias_load_reg_359.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_fu_141_p1 = tmp_108_reg_336.read();
    } else {
        grp_fu_141_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void dense_forward::thread_h_address0() {
    h_address0 =  (sc_lv<7>) (tmp_107_fu_194_p1.read());
}

void dense_forward::thread_h_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h_ce0 = ap_const_logic_1;
    } else {
        h_ce0 = ap_const_logic_0;
    }
}

void dense_forward::thread_i_24_fu_167_p2() {
    i_24_fu_167_p2 = (!i_reg_95.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(i_reg_95.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void dense_forward::thread_i_25_fu_227_p2() {
    i_25_fu_227_p2 = (!i1_reg_130.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(i1_reg_130.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void dense_forward::thread_j_11_fu_188_p2() {
    j_11_fu_188_p2 = (!j_reg_119.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(j_reg_119.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void dense_forward::thread_notlhs_fu_257_p2() {
    notlhs_fu_257_p2 = (!tmp_145_fu_243_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_145_fu_243_p4.read() != ap_const_lv8_FF);
}

void dense_forward::thread_notrhs_fu_263_p2() {
    notrhs_fu_263_p2 = (!tmp_150_fu_253_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_150_fu_253_p1.read() == ap_const_lv23_0);
}

void dense_forward::thread_storemerge_fu_281_p3() {
    storemerge_fu_281_p3 = (!tmp_148_fu_275_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_148_fu_275_p2.read()[0].to_bool())? ap_const_lv32_0: reg_155.read());
}

void dense_forward::thread_tmp_105_fu_233_p1() {
    tmp_105_fu_233_p1 = esl_zext<64,8>(i1_reg_130.read());
}

void dense_forward::thread_tmp_106_to_int_fu_239_p1() {
    tmp_106_to_int_fu_239_p1 = reg_155.read();
}

void dense_forward::thread_tmp_107_fu_194_p1() {
    tmp_107_fu_194_p1 = esl_zext<64,8>(j_reg_119.read());
}

void dense_forward::thread_tmp_145_fu_243_p4() {
    tmp_145_fu_243_p4 = tmp_106_to_int_fu_239_p1.read().range(30, 23);
}

void dense_forward::thread_tmp_148_fu_275_p2() {
    tmp_148_fu_275_p2 = (tmp_s_fu_269_p2.read() & tmp_147_fu_150_p2.read());
}

void dense_forward::thread_tmp_149_fu_199_p3() {
    tmp_149_fu_199_p3 = esl_concat<8,7>(j_reg_119.read(), ap_const_lv7_0);
}

void dense_forward::thread_tmp_150_fu_253_p1() {
    tmp_150_fu_253_p1 = tmp_106_to_int_fu_239_p1.read().range(23-1, 0);
}

void dense_forward::thread_tmp_151_fu_211_p2() {
    tmp_151_fu_211_p2 = (!tmp_cast_reg_298.read().is_01() || !tmp_162_cast_fu_207_p1.read().is_01())? sc_lv<16>(): (sc_biguint<16>(tmp_cast_reg_298.read()) + sc_biguint<16>(tmp_162_cast_fu_207_p1.read()));
}

void dense_forward::thread_tmp_162_cast_fu_207_p1() {
    tmp_162_cast_fu_207_p1 = esl_zext<16,15>(tmp_149_fu_199_p3.read());
}

void dense_forward::thread_tmp_163_cast_fu_216_p1() {
    tmp_163_cast_fu_216_p1 = esl_zext<64,16>(tmp_151_fu_211_p2.read());
}

void dense_forward::thread_tmp_cast_fu_178_p1() {
    tmp_cast_fu_178_p1 = esl_zext<16,8>(i_reg_95.read());
}

void dense_forward::thread_tmp_fu_173_p1() {
    tmp_fu_173_p1 = esl_zext<64,8>(i_reg_95.read());
}

void dense_forward::thread_tmp_s_fu_269_p2() {
    tmp_s_fu_269_p2 = (notrhs_fu_263_p2.read() | notlhs_fu_257_p2.read());
}

void dense_forward::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_161_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state12;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond1_fu_182_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 2048 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) && esl_seteq<1,1,1>(exitcond_fu_221_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state13;
            }
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state15;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_fsm_state16;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_fsm_state17;
            break;
        case 65536 : 
            ap_NS_fsm = ap_ST_fsm_state18;
            break;
        case 131072 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<18>) ("XXXXXXXXXXXXXXXXXX");
            break;
    }
}

}

