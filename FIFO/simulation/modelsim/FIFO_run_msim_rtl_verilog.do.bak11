transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/FIFO.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/MC.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/counter.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/RAM.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/edge_dff.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/mux2_to_1.v}
vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/CMP.v}

vlog -vlog01compat -work work +incdir+D:/TKHDL/FIFO {D:/TKHDL/FIFO/Testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
