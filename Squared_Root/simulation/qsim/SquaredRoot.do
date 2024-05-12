onerror {quit -f}
vlib work
vlog -work work SquaredRoot.vo
vlog -work work SquaredRoot.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.AU2_pipeline_vlg_vec_tst
vcd file -direction SquaredRoot.msim.vcd
vcd add -internal AU2_pipeline_vlg_vec_tst/*
vcd add -internal AU2_pipeline_vlg_vec_tst/i1/*
add wave /*
run -all
