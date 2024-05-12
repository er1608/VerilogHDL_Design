module Register_5b_loadEn(out, DataIn, clk, En);
	output [4:0] out;
	input [4:0] DataIn;
	input clk, En;
	wire w_mux4, w_mux3, w_mux2, w_mux1, w_mux0;
	mux2_1b mux4(w_mux4, DataIn[4], w_mux4, En);
	mux2_1b mux3(w_mux3, DataIn[3], w_mux3, En);
	mux2_1b mux2(w_mux2, DataIn[2], w_mux2, En);
	mux2_1b mux1(w_mux1, DataIn[1], w_mux1, En);
	mux2_1b mux0(w_mux0, DataIn[0], w_mux0, En);
	//
	edge_dff dff4(out[4], ,w_mux4, clk, );
	edge_dff dff3(out[3], ,w_mux3, clk, );
	edge_dff dff2(out[2], ,w_mux2, clk, );
	edge_dff dff1(out[1], ,w_mux1, clk, );
	edge_dff dff0(out[0], ,w_mux0, clk, );
endmodule