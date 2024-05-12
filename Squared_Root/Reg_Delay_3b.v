module Reg_Delay_3b(out, DataIn, clk, RS, WS, OE, clear);
	output [2:0] out;
	input [2:0] DataIn;
	input clk, RS, WS, OE, clear;
	wire w_rfc2, w_rfc1, w_rfc0;
	reg_file_cell rfc2(w_rfc2, RS, WS, DataIn[2],clk, clear);
	reg_file_cell rfc1(w_rfc1, RS, WS, DataIn[1],clk, clear);
	reg_file_cell rfc4(w_rfc0, RS, WS, DataIn[0],clk, clear);

	bufif1 t2(out[2], w_rfc2, OE);
	bufif1 t1(out[1], w_rfc1, OE);
	bufif1 t0(out[0], w_rfc0, OE);
endmodule