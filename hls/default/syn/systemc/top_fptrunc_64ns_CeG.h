// ==============================================================
// File generated on Mon Jul 15 22:02:56 +0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __top_fptrunc_64ns_CeG__HH__
#define __top_fptrunc_64ns_CeG__HH__
#include "ACMP_fptrunc_comb.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int dout_WIDTH>
SC_MODULE(top_fptrunc_64ns_CeG) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_fptrunc_comb<ID, 1, din0_WIDTH, dout_WIDTH> ACMP_fptrunc_comb_U;

    SC_CTOR(top_fptrunc_64ns_CeG):  ACMP_fptrunc_comb_U ("ACMP_fptrunc_comb_U") {
        ACMP_fptrunc_comb_U.din0(din0);
        ACMP_fptrunc_comb_U.dout(dout);

    }

};

#endif //
