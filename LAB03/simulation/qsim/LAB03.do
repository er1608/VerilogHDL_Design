onerror {quit -f}
vlib work
vlog -work work LAB03.vo
vlog -work work LAB03.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SRAM_vlg_vec_tst
vcd file -direction LAB03.msim.vcd
vcd add -internal SRAM_vlg_vec_tst/*
vcd add -internal SRAM_vlg_vec_tst/i1/*
add wave /*
run -all
