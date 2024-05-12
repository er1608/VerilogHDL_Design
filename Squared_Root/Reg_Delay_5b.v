module Reg_Delay_5b(out, DataIn, clk, RS, WS, OE, clear);
	output [4:0] out;
	input [4:0] DataIn;
	input clk, RS, WS, OE, clear;
	wire w_rfc4, w_rfc3, w_rfc2, w_rfc1, w_rfc0;
	reg_file_cell rfc4(w_rfc4, RS, WS, DataIn[4],clk, clear);
	reg_file_cell rfc3(w_rfc3, RS, WS, DataIn[3],clk, clear);
	reg_file_cell rfc2(w_rfc2, RS, WS, DataIn[2],clk, clear);
	reg_file_cell rfc1(w_rfc1, RS, WS, DataIn[1],clk, clear);
	reg_file_cell rfc0(w_rfc0, RS, WS, DataIn[0],clk, clear);
	bufif1 t4(out[4], w_rfc4, OE);
	bufif1 t3(out[3], w_rfc3, OE);
	bufif1 t2(out[2], w_rfc2, OE);
	bufif1 t1(out[1], w_rfc1, OE);
	bufif1 t0(out[0], w_rfc0, OE);
endmodule