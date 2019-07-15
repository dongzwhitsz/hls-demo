// ==============================================================
// File generated on Mon Jul 15 22:03:01 +0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __lstm_forward_oncejbC_H__
#define __lstm_forward_oncejbC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct lstm_forward_oncejbC_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 128;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(lstm_forward_oncejbC_ram) {
        ram[0] = "0b10111100110111101001010001010000";
        ram[1] = "0b10111101000001100100011110001011";
        ram[2] = "0b00111101000000011110101001110001";
        ram[3] = "0b00111100010011100000100101010000";
        ram[4] = "0b00111100111001111110000101011111";
        ram[5] = "0b00111011111000111010011111100011";
        ram[6] = "0b00111011100010100101001001001010";
        ram[7] = "0b10111100100001100110111001001011";
        ram[8] = "0b10111011100001101111000110110001";
        ram[9] = "0b10111100010110010111100101000100";
        ram[10] = "0b10111100111010110001000010000100";
        ram[11] = "0b00111100010011011010101100000110";
        ram[12] = "0b00111101000101000001001011101101";
        ram[13] = "0b00111011111001000110110111111100";
        ram[14] = "0b00111100111011100110111000100011";
        ram[15] = "0b00111100111110001101101111111111";
        ram[16] = "0b10111100111000011101101111010010";
        ram[17] = "0b10111011110100001001000010010110";
        ram[18] = "0b00111100100101000000010011111101";
        ram[19] = "0b00111100000010011000000011010010";
        ram[20] = "0b00111100001100101111010000111001";
        ram[21] = "0b10111100100001010010011100100010";
        ram[22] = "0b00111100101101001000100100111000";
        ram[23] = "0b00111100000111000001001100011001";
        ram[24] = "0b10111010000011101110000000100100";
        ram[25] = "0b00111100100011111111110110011100";
        ram[26] = "0b00111011100101110100101110001100";
        ram[27] = "0b10111100001001010111010100111111";
        ram[28] = "0b00111100111101010001001001000110";
        ram[29] = "0b10111100011101110010000001001100";
        ram[30] = "0b00111100111001110101110000101101";
        ram[31] = "0b10111100010011100011001001100100";
        ram[32] = "0b00111011001000100101000010100111";
        ram[33] = "0b00111100000010110000001100110011";
        ram[34] = "0b10111100100011000100101110110010";
        ram[35] = "0b10111011110011111100101101001010";
        ram[36] = "0b00111100100111111011111111001010";
        ram[37] = "0b10111101001111010100010100101010";
        ram[38] = "0b10111101001000001101101000111100";
        ram[39] = "0b00111100110101100111111000001100";
        ram[40] = "0b10111100010000010000010111110010";
        ram[41] = "0b10111100010111010010101101001000";
        ram[42] = "0b10111011010001000000011110011000";
        ram[43] = "0b10111100010010100011100101111101";
        ram[44] = "0b10111100001010101100011010111111";
        ram[45] = "0b00111100011010000110101001100111";
        ram[46] = "0b10111100101110111110011000111100";
        ram[47] = "0b10111100100001100000110101110001";
        ram[48] = "0b00111100011001101100010010110010";
        ram[49] = "0b00111011111011111001010111011100";
        ram[50] = "0b10111011000010100011000111011100";
        ram[51] = "0b00111011101001110001011100010000";
        ram[52] = "0b10111010001001011000101101111111";
        ram[53] = "0b00111101001100000111000011100100";
        ram[54] = "0b10111100110010100000100010110111";
        ram[55] = "0b00111100110010000101100000010000";
        ram[56] = "0b00111010011110001111001001110001";
        ram[57] = "0b10111100001010101101100011011010";
        ram[58] = "0b10111100010110011001101100000101";
        ram[59] = "0b10111100100101111000001101111110";
        ram[60] = "0b10111100100000101000000011110010";
        ram[61] = "0b10111011101010011110110000101001";
        ram[62] = "0b10111101001111011000000101000010";
        ram[63] = "0b10111100110011011110100111011000";
        ram[64] = "0b00111100100110101111001001111000";
        ram[65] = "0b00111011101101010110011110001111";
        ram[66] = "0b10111100000010111101100001001100";
        ram[67] = "0b10111100111000001100100000010111";
        ram[68] = "0b00111100011000110010110011111001";
        ram[69] = "0b10111100000101110000101110101100";
        ram[70] = "0b00111011110111011101100101001110";
        ram[71] = "0b10111100010011010110100110100101";
        ram[72] = "0b10111101000000101000001110111111";
        ram[73] = "0b10111100010110110110110010011000";
        ram[74] = "0b10111011110000000000111110011001";
        ram[75] = "0b10111011110010110001111111001110";
        ram[76] = "0b10111011101101011010111110000111";
        ram[77] = "0b10111100011111011011110111010011";
        ram[78] = "0b10111100001100011001110101011000";
        ram[79] = "0b10111101001001100000001111000110";
        ram[80] = "0b00111100001010000000101001100100";
        ram[81] = "0b10111100101101111100011001100010";
        ram[82] = "0b00111100101101110011101010110100";
        ram[83] = "0b00111100010000111011000000010110";
        ram[84] = "0b00111100000100101001011111010110";
        ram[85] = "0b00111100000001000010001011100011";
        ram[86] = "0b10111100011110001100001000010110";
        ram[87] = "0b10111101000000011111011010000101";
        ram[88] = "0b00111100010101000100011111011000";
        ram[89] = "0b00111100101100111011101100001000";
        ram[90] = "0b00111100111001100011100000011010";
        ram[91] = "0b00111011111011001101111101101000";
        ram[92] = "0b00111100001100100000010010011010";
        ram[93] = "0b00111101000100011111001100011010";
        ram[94] = "0b10111011110001111111110111100011";
        ram[95] = "0b00111100110100001000100011011110";
        ram[96] = "0b00111011111011010111000101100000";
        ram[97] = "0b10111100101010100111110100100000";
        ram[98] = "0b10111011111011010110010101001000";
        ram[99] = "0b00111011101001010100111100001100";
        ram[100] = "0b00111101011111111000000100100001";
        ram[101] = "0b00111100011011010000100011110000";
        ram[102] = "0b10111100111000101000011101010101";
        ram[103] = "0b10111100100011101011111010111110";
        ram[104] = "0b10111101010001111111001001101011";
        ram[105] = "0b10111100100101110010100111110111";
        ram[106] = "0b10111011001100101001111010100100";
        ram[107] = "0b10111100101001100010110111111000";
        ram[108] = "0b00111101000010011101000100010101";
        ram[109] = "0b10111100100011111011101000001111";
        ram[110] = "0b10111100100100011110100011111101";
        ram[111] = "0b00111100110111111101101000110010";
        ram[112] = "0b00111100100101001110001001011000";
        ram[113] = "0b10111100010101110101000110011011";
        ram[114] = "0b00111101001101110010110000101111";
        ram[115] = "0b00111100011100101111101001000111";
        ram[116] = "0b10111101001010001100110000000011";
        ram[117] = "0b00111101011001011010101111010010";
        ram[118] = "0b10111101000101111010000100111010";
        ram[119] = "0b00111100010101010100010001011101";
        ram[120] = "0b00111101000101000100111111111111";
        ram[121] = "0b00111100001011110000111101011001";
        ram[122] = "0b00111100100001111000110000101111";
        ram[123] = "0b00111100100011110110100000000111";
        ram[124] = "0b10111010000000011011000011001100";
        ram[125] = "0b00111011111001001011111110010010";
        ram[126] = "0b10111100010010011111111111101000";
        ram[127] = "0b00111101000000110111100111011111";


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


SC_MODULE(lstm_forward_oncejbC) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 128;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


lstm_forward_oncejbC_ram* meminst;


SC_CTOR(lstm_forward_oncejbC) {
meminst = new lstm_forward_oncejbC_ram("lstm_forward_oncejbC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~lstm_forward_oncejbC() {
    delete meminst;
}


};//endmodule
#endif
