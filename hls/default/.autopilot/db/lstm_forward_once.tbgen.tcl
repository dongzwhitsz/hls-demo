set moduleName lstm_forward_once
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {lstm_forward_once}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_line float 32 regular {array 784 { 1 3 } 1 1 }  }
	{ img_line_offset int 5 regular  }
	{ h float 32 regular {array 128 { 2 3 } 1 1 } {global 2}  }
	{ c float 32 regular {array 128 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_line", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_line_offset", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "h", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "h","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "c", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_line_address0 sc_out sc_lv 10 signal 0 } 
	{ img_line_ce0 sc_out sc_logic 1 signal 0 } 
	{ img_line_q0 sc_in sc_lv 32 signal 0 } 
	{ img_line_offset sc_in sc_lv 5 signal 1 } 
	{ h_address0 sc_out sc_lv 7 signal 2 } 
	{ h_ce0 sc_out sc_logic 1 signal 2 } 
	{ h_we0 sc_out sc_logic 1 signal 2 } 
	{ h_d0 sc_out sc_lv 32 signal 2 } 
	{ h_q0 sc_in sc_lv 32 signal 2 } 
	{ c_address0 sc_out sc_lv 7 signal 3 } 
	{ c_ce0 sc_out sc_logic 1 signal 3 } 
	{ c_we0 sc_out sc_logic 1 signal 3 } 
	{ c_d0 sc_out sc_lv 32 signal 3 } 
	{ c_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_line_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img_line", "role": "address0" }} , 
 	{ "name": "img_line_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_line", "role": "ce0" }} , 
 	{ "name": "img_line_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_line", "role": "q0" }} , 
 	{ "name": "img_line_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "img_line_offset", "role": "default" }} , 
 	{ "name": "h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "h", "role": "address0" }} , 
 	{ "name": "h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "ce0" }} , 
 	{ "name": "h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "we0" }} , 
 	{ "name": "h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h", "role": "d0" }} , 
 	{ "name": "h_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h", "role": "q0" }} , 
 	{ "name": "c_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c", "role": "address0" }} , 
 	{ "name": "c_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "ce0" }} , 
 	{ "name": "c_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c", "role": "we0" }} , 
 	{ "name": "c_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "d0" }} , 
 	{ "name": "c_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "lstm_forward_once",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "818192", "EstimateLatencyMax" : "818192",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_line", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "img_line_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "lstm_kernel_f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lstm_recurrent_kerne_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_bias_f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_kernel_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_recurrent_kerne_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_bias_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_kernel_c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_recurrent_kerne_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_bias_c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_kernel_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_recurrent_kerne", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lstm_bias_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_kernel_f_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_recurrent_kerne_3_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_bias_f_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_kernel_i_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_recurrent_kerne_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_bias_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_kernel_c_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_recurrent_kerne_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_bias_c_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_kernel_o_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_recurrent_kerne_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lstm_bias_o_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr2_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr3_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr4_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr5_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr6_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr7_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr8_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr9_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr10_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr11_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr12_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr13_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fadd_32ns_32nAem_U1", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fmul_32ns_32nBew_U2", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fptrunc_64ns_CeG_U3", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fpext_32ns_64DeQ_U4", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fcmp_32ns_32nEe0_U5", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fcmp_32ns_32nEe0_U6", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_dadd_64ns_64nFfa_U7", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_dmul_64ns_64nGfk_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lstm_forward_once {
		img_line {Type I LastRead 21 FirstWrite -1}
		img_line_offset {Type I LastRead 0 FirstWrite -1}
		lstm_kernel_f {Type I LastRead -1 FirstWrite -1}
		h {Type IO LastRead 23 FirstWrite 34}
		lstm_recurrent_kerne_3 {Type I LastRead -1 FirstWrite -1}
		lstm_bias_f {Type I LastRead -1 FirstWrite -1}
		lstm_kernel_i {Type I LastRead -1 FirstWrite -1}
		lstm_recurrent_kerne_4 {Type I LastRead -1 FirstWrite -1}
		lstm_bias_i {Type I LastRead -1 FirstWrite -1}
		lstm_kernel_c {Type I LastRead -1 FirstWrite -1}
		lstm_recurrent_kerne_1 {Type I LastRead -1 FirstWrite -1}
		lstm_bias_c {Type I LastRead -1 FirstWrite -1}
		lstm_kernel_o {Type I LastRead -1 FirstWrite -1}
		lstm_recurrent_kerne {Type I LastRead -1 FirstWrite -1}
		lstm_bias_o {Type I LastRead -1 FirstWrite -1}
		c {Type IO LastRead 29 FirstWrite 30}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "818192", "Max" : "818192"}
	, {"Name" : "Interval", "Min" : "818192", "Max" : "818192"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_line { ap_memory {  { img_line_address0 mem_address 1 10 }  { img_line_ce0 mem_ce 1 1 }  { img_line_q0 mem_dout 0 32 } } }
	img_line_offset { ap_none {  { img_line_offset in_data 0 5 } } }
	h { ap_memory {  { h_address0 mem_address 1 7 }  { h_ce0 mem_ce 1 1 }  { h_we0 mem_we 1 1 }  { h_d0 mem_din 1 32 }  { h_q0 mem_dout 0 32 } } }
	c { ap_memory {  { c_address0 mem_address 1 7 }  { c_ce0 mem_ce 1 1 }  { c_we0 mem_we 1 1 }  { c_d0 mem_din 1 32 }  { c_q0 mem_dout 0 32 } } }
}
