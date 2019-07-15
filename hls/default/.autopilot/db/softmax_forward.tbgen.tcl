set moduleName softmax_forward
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
set C_modelName {softmax_forward}
set C_modelType { void 0 }
set C_modelArgList {
	{ dense_output float 32 regular {array 128 { 1 3 } 1 1 }  }
	{ softmax_output float 32 regular {array 10 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dense_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "softmax_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "softmax_output","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dense_output_address0 sc_out sc_lv 7 signal 0 } 
	{ dense_output_ce0 sc_out sc_logic 1 signal 0 } 
	{ dense_output_q0 sc_in sc_lv 32 signal 0 } 
	{ softmax_output_address0 sc_out sc_lv 4 signal 1 } 
	{ softmax_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ softmax_output_we0 sc_out sc_logic 1 signal 1 } 
	{ softmax_output_d0 sc_out sc_lv 32 signal 1 } 
	{ softmax_output_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dense_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dense_output", "role": "address0" }} , 
 	{ "name": "dense_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dense_output", "role": "ce0" }} , 
 	{ "name": "dense_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dense_output", "role": "q0" }} , 
 	{ "name": "softmax_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "softmax_output", "role": "address0" }} , 
 	{ "name": "softmax_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output", "role": "ce0" }} , 
 	{ "name": "softmax_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "softmax_output", "role": "we0" }} , 
 	{ "name": "softmax_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_output", "role": "d0" }} , 
 	{ "name": "softmax_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "softmax_output", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_kernel_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_bias_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fadd_32ns_32nAem_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fmul_32ns_32nBew_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	softmax_forward {
		dense_output {Type I LastRead 2 FirstWrite -1}
		softmax_output {Type IO LastRead 2 FirstWrite 2}
		softmax_kernel {Type I LastRead -1 FirstWrite -1}
		softmax_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11612", "Max" : "11612"}
	, {"Name" : "Interval", "Min" : "11612", "Max" : "11612"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dense_output { ap_memory {  { dense_output_address0 mem_address 1 7 }  { dense_output_ce0 mem_ce 1 1 }  { dense_output_q0 mem_dout 0 32 } } }
	softmax_output { ap_memory {  { softmax_output_address0 mem_address 1 4 }  { softmax_output_ce0 mem_ce 1 1 }  { softmax_output_we0 mem_we 1 1 }  { softmax_output_d0 mem_din 1 32 }  { softmax_output_q0 mem_dout 0 32 } } }
}
