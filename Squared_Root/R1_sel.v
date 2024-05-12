module R1_sel(Output, abs_a, max, In, op);
	output [4:0] Output;
	input [4:0] abs_a, max, In;
	input [1:0] op;
	wire [4:0] out_mux1, out_mux2;
	mux2_5b mux1(out_mux1, abs_a, In, op);
	mux2_5b mux2(out_mux2, abs_a, In, op);
	mux2_5b mux3(Output, out_mux1, out_mux2, op);
endmodule