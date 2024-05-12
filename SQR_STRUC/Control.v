module Control(clk, start, clear, R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done,
								OE1, WS1, RS1,OE2,WS2,RS2);
	input clk, start, clear;
	output R1_tri, R2_tri, R1_e, R2_e,In1_tri, In2_tri, AU1_tri, AU1_tri1;
	output shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_tri, done;
	output OE1, WS1, RS1,OE2,WS2,RS2;
	output [1:0] AU1_op, AU2_op;
	wire [3:0] S, out;
	next_state ns(out, start, S);
	curr_state cs(S, clk, out, clear);
	Control_Output CO(R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done, S, OE1, WS1, RS1,OE2,WS2,RS2);
endmodule
