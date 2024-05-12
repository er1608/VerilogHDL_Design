transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Datapath.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Control.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Control_Output.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/curr_state.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/next_state.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/mux2_1b.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/mux2_5b.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/reg_5b_load_en.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/edge_dff.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/shift_right_1b.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/shift_right_3b.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Sub_5b.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/AU1_pipeline.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/adder1.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Full_Adder_5b.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/AU2_pipeline.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/ABS.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/MIN.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/MAX.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Sub5b_select.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Full_Adder_5b_select.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/decode2_4.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/BUF5bit.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Square_Root.v}

vlog -vlog01compat -work work +incdir+D:/TKHDL/Squared_Root {D:/TKHDL/Squared_Root/Testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
