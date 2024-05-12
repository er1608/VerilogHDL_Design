module reg_5b_load_en(out_dff, clk, DataIn, En, clear);
	output [4:0] out_dff;
	input clk, En, clear;
	input [4:0] DataIn;
	wire [4:0] out_mux;
	mux2_5b mux1(out_mux[4:0], DataIn[4:0], out_dff[4:0], En);
	edge_dff dff4(out_dff[4], out_mux[4], clk, clear);
	edge_dff dff3(out_dff[3], out_mux[3], clk, clear);
	edge_dff dff2(out_dff[2], out_mux[2], clk, clear);
	edge_dff dff1(out_dff[1], out_mux[1], clk, clear);
	edge_dff dff0(out_dff[0], out_mux[0], clk, clear);
endmodule