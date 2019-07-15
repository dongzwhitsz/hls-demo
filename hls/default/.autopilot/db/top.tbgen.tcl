set moduleName top
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
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ img float 32 regular {array 784 { 2 3 } 1 1 }  }
	{ output_r float 32 regular {array 10 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "img","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_address0 sc_out sc_lv 10 signal 0 } 
	{ img_ce0 sc_out sc_logic 1 signal 0 } 
	{ img_we0 sc_out sc_logic 1 signal 0 } 
	{ img_d0 sc_out sc_lv 32 signal 0 } 
	{ img_q0 sc_in sc_lv 32 signal 0 } 
	{ output_r_address0 sc_out sc_lv 4 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "img", "role": "address0" }} , 
 	{ "name": "img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "ce0" }} , 
 	{ "name": "img_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img", "role": "we0" }} , 
 	{ "name": "img_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img", "role": "d0" }} , 
 	{ "name": "img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "39", "45", "50", "51", "52", "53"],
		"CDFG" : "top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23080057", "EstimateLatencyMax" : "23080057",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lstm_forward_once_fu_220"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dense_forward_fu_256"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_softmax_forward_fu_268"}],
		"Port" : [
			{"Name" : "img", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "img_line"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "c"}]},
			{"Name" : "h", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "h"},
					{"ID" : "39", "SubInstance" : "grp_dense_forward_fu_256", "Port" : "h"}]},
			{"Name" : "lstm_kernel_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_kernel_f"}]},
			{"Name" : "lstm_recurrent_kerne_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_recurrent_kerne_3"}]},
			{"Name" : "lstm_bias_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_bias_f"}]},
			{"Name" : "lstm_kernel_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_kernel_i"}]},
			{"Name" : "lstm_recurrent_kerne_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_recurrent_kerne_4"}]},
			{"Name" : "lstm_bias_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_bias_i"}]},
			{"Name" : "lstm_kernel_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_kernel_c"}]},
			{"Name" : "lstm_recurrent_kerne_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_recurrent_kerne_1"}]},
			{"Name" : "lstm_bias_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_bias_c"}]},
			{"Name" : "lstm_kernel_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_kernel_o"}]},
			{"Name" : "lstm_recurrent_kerne", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_recurrent_kerne"}]},
			{"Name" : "lstm_bias_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_lstm_forward_once_fu_220", "Port" : "lstm_bias_o"}]},
			{"Name" : "dense_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_dense_forward_fu_256", "Port" : "dense_output"},
					{"ID" : "45", "SubInstance" : "grp_softmax_forward_fu_268", "Port" : "dense_output"}]},
			{"Name" : "dense_kernel", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_dense_forward_fu_256", "Port" : "dense_kernel"}]},
			{"Name" : "dense_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_dense_forward_fu_256", "Port" : "dense_bias"}]},
			{"Name" : "softmax_output", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_softmax_forward_fu_268", "Port" : "softmax_output"}]},
			{"Name" : "softmax_kernel", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_softmax_forward_fu_268", "Port" : "softmax_kernel"}]},
			{"Name" : "softmax_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_softmax_forward_fu_268", "Port" : "softmax_bias"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_output_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_output_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_kernel_f_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_recurrent_kerne_3_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_bias_f_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_kernel_i_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_recurrent_kerne_4_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_bias_i_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_kernel_c_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_recurrent_kerne_1_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_bias_c_U", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_kernel_o_U", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_recurrent_kerne_U", "Parent" : "5"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.lstm_bias_o_U", "Parent" : "5"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr1_U", "Parent" : "5"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr2_U", "Parent" : "5"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr3_U", "Parent" : "5"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr4_U", "Parent" : "5"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr5_U", "Parent" : "5"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr6_U", "Parent" : "5"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr7_U", "Parent" : "5"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr8_U", "Parent" : "5"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr9_U", "Parent" : "5"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr10_U", "Parent" : "5"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr11_U", "Parent" : "5"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr12_U", "Parent" : "5"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.arr13_U", "Parent" : "5"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_fadd_32ns_32nAem_U1", "Parent" : "5"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_fmul_32ns_32nBew_U2", "Parent" : "5"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_fptrunc_64ns_CeG_U3", "Parent" : "5"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_fpext_32ns_64DeQ_U4", "Parent" : "5"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_fcmp_32ns_32nEe0_U5", "Parent" : "5"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_fcmp_32ns_32nEe0_U6", "Parent" : "5"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_dadd_64ns_64nFfa_U7", "Parent" : "5"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lstm_forward_once_fu_220.top_dmul_64ns_64nGfk_U8", "Parent" : "5"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_forward_fu_256", "Parent" : "0", "Child" : ["40", "41", "42", "43", "44"],
		"CDFG" : "dense_forward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "148610", "EstimateLatencyMax" : "148610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_output", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dense_kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense_bias", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_forward_fu_256.dense_kernel_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_forward_fu_256.dense_bias_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_forward_fu_256.top_fadd_32ns_32nAem_U33", "Parent" : "39"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_forward_fu_256.top_fmul_32ns_32nBew_U34", "Parent" : "39"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_forward_fu_256.top_fcmp_32ns_32nEe0_U35", "Parent" : "39"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_forward_fu_268", "Parent" : "0", "Child" : ["46", "47", "48", "49"],
		"CDFG" : "softmax_forward",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11612", "EstimateLatencyMax" : "11612",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dense_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "softmax_output", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "softmax_kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "softmax_bias", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_forward_fu_268.softmax_kernel_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_forward_fu_268.softmax_bias_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_forward_fu_268.top_fadd_32ns_32nAem_U40", "Parent" : "45"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_forward_fu_268.top_fmul_32ns_32nBew_U41", "Parent" : "45"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fptrunc_64ns_CeG_U46", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fpext_32ns_64DeQ_U47", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_dadd_64ns_64nFfa_U48", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_dmul_64ns_64nGfk_U49", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top {
		img {Type IO LastRead 21 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 8}
		c {Type IO LastRead -1 FirstWrite -1}
		h {Type IO LastRead -1 FirstWrite -1}
		lstm_kernel_f {Type I LastRead -1 FirstWrite -1}
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
		dense_output {Type IO LastRead -1 FirstWrite -1}
		dense_kernel {Type I LastRead -1 FirstWrite -1}
		dense_bias {Type I LastRead -1 FirstWrite -1}
		softmax_output {Type IO LastRead -1 FirstWrite -1}
		softmax_kernel {Type I LastRead -1 FirstWrite -1}
		softmax_bias {Type I LastRead -1 FirstWrite -1}}
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
		c {Type IO LastRead 29 FirstWrite 30}}
	dense_forward {
		h {Type I LastRead 2 FirstWrite -1}
		dense_output {Type IO LastRead 2 FirstWrite 2}
		dense_kernel {Type I LastRead -1 FirstWrite -1}
		dense_bias {Type I LastRead -1 FirstWrite -1}}
	softmax_forward {
		dense_output {Type I LastRead 2 FirstWrite -1}
		softmax_output {Type IO LastRead 2 FirstWrite 2}
		softmax_kernel {Type I LastRead -1 FirstWrite -1}
		softmax_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23080057", "Max" : "23080057"}
	, {"Name" : "Interval", "Min" : "23080058", "Max" : "23080058"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img { ap_memory {  { img_address0 mem_address 1 10 }  { img_ce0 mem_ce 1 1 }  { img_we0 mem_we 1 1 }  { img_d0 mem_din 1 32 }  { img_q0 mem_dout 0 32 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 4 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
