module reg_file_cell(out, RS, WS, Input, clk, clear);
	output out;
	input RS, WS, Input, clk, clear;
	wire w_and1, w_and2, w_or1, w_dff;
	edge_dff dff1(w_dff, w_or1, clk, clear);
	and a1(w_and1, ~WS, w_dff);
	and a2(w_and2, WS, Input);
	or o1(w_or1, w_and1, w_and2);
	bufif1 (out, w_dff, RS);
endmodule