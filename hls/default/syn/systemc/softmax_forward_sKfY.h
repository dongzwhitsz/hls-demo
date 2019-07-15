// ==============================================================
// File generated on Mon Jul 15 22:03:05 +0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __softmax_forward_sKfY_H__
#define __softmax_forward_sKfY_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct softmax_forward_sKfY_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(softmax_forward_sKfY_ram) {
        ram[0] = "0b10111101100101001010110101000010";
        ram[1] = "0b10111101000101101001111010000000";
        ram[2] = "0b10111101100100001111011100001100";
        ram[3] = "0b00111101000101000011111011111011";
        ram[4] = "0b10111011110101100100101101110010";
        ram[5] = "0b10111100010001011101001101011011";
        ram[6] = "0b10111101101101100000011010110001";
        ram[7] = "0b10111011111001010111000000000011";
        ram[8] = "0b10111101010100100000101111100111";
        ram[9] = "0b00111011010110100110011111111000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(softmax_forward_sKfY) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


softmax_forward_sKfY_ram* meminst;


SC_CTOR(softmax_forward_sKfY) {
meminst = new softmax_forward_sKfY_ram("softmax_forward_sKfY_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~softmax_forward_sKfY() {
    delete meminst;
}


};//endmodule
#endif
