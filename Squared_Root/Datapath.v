module Datapath(out, R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done, clear, clk, In1, In2);
	input [4:0] In1, In2;
	input clk, clear;
	input R1_tri, R2_tri, R1_e, R2_e,In1_tri, In2_tri, AU1_tri, AU1_tri1;
	input shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_tri, done;
	input [1:0] AU1_op, AU2_op;
	output [4:0] out;
	wire [4:0] InA, InB1, InB, DataIn_R1, DataIn_R2;
	reg_5b_load_en R1(InA, clk, DataIn_R1, R1_e, clear);
	reg_5b_load_en R2(InB1, clk, DataIn_R2, R2_e, clear);
	BUF5bit b1(InB, InB1, R1_tri);
	BUF5bit b2(InB, InB1, R2_tri);
	
	wire [4:0] out_AU1, out_SR1, out_SR3;
	AU1_pipeline AU1(out_AU1, InA, InB, AU1_op);
	shift_right_1b SR1(out_SR1, out_AU1);
	shift_right_3b SR3(out_SR3, out_AU1);
	BUF5bit b3(DataIn_R1, In2, In2_tri);
	BUF5bit b4(DataIn_R1, out_AU1, AU1_tri);
	BUF5bit b5(DataIn_R2, In1, In1_tri);
	BUF5bit b6(DataIn_R2, out_AU1, AU1_tri1);
	
	wire [4:0] DataIn_R3, out_R3, out_R4, out_R5, AU2_InA;
	BUF5bit b7(DataIn_R3, out_SR3, shift3_tri);
	reg_5b_load_en R3(out_R3, clk, DataIn_R3, R3_e, clear);
	reg_5b_load_en R4(out_R4, clk, out_AU1, R4_e, clear);
	reg_5b_load_en R5(out_R5, clk, out_SR1, R5_e, clear);
	BUF5bit b8(out, out_R3, done);
	BUF5bit b9(AU2_InA, out_R4, R4_tri);
	BUF5bit b10(AU2_InA, out_R5, R5_tri);
	
	wire [4:0] out_AU2;
	AU2_pipeline AU2(out_AU2, AU2_InA, out_R3, AU2_op);
	BUF5bit b11(DataIn_R3, out_AU2, AU2_tri);
endmodule
