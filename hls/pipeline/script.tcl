############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls
set_top top
add_files src/rnn.cpp
open_solution "pipeline"
set_part {xc7z020clg400-3}
create_clock -period 10 -name default
source "./hls/pipeline/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
