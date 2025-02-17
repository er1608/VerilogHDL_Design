transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/SRAM.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/register.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/MUX21.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/ALU.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/DATAPATH.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/SignExtend.v}

vlog -vlog01compat -work work +incdir+D:/TKHDL/LAB05 {D:/TKHDL/LAB05/Testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
