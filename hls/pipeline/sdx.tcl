# ==============================================================
# File generated on Mon Jul 15 22:20:10 +0800 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files src/rnn.cpp
set_part xc7z020clg400-3
create_clock -name default -period 10
set_directive_pipeline img_preprocess/inner 
set_directive_pipeline top/top_label21 
set_directive_dataflow lstm_forward/lstm_forward_label1 