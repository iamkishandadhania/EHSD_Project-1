set moduleName Conv
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data double 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_out_V_data double 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_in.V.data","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_data", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_out.V.data","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 1 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 1 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 1 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 2 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 3 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 2 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_data", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "Conv",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217", "EstimateLatencyMax" : "217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_in_V_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_out_V_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_mat_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernal_mat_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padded_image_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Conv_dadd_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Conv_dadd_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Conv_dmul_64ns_64ns_64_5_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Conv_dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv {
		data_in_V_data {Type I LastRead 3 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 3 FirstWrite -1}
		data_out_V_data {Type O LastRead -1 FirstWrite 15}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 15}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "217", "Max" : "217"}
	, {"Name" : "Interval", "Min" : "218", "Max" : "218"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_in_V_data { axis {  { data_in_TDATA in_data 0 64 } } }
	data_in_V_last_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TLAST in_data 0 1 } } }
	data_out_V_data { axis {  { data_out_TDATA out_data 1 64 }  { data_out_TREADY out_acc 0 1 } } }
	data_out_V_last_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TLAST out_data 1 1 } } }
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
