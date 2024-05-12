module Square_Root(In1, In2, clk, start, out, clear);
	input [4:0] In1, In2;
	output [4:0] out;
	input clk, start, clear;
	wire R1_tri, R2_tri, R1_e, R2_e,In1_tri, In2_tri, AU1_tri, AU1_tri1;
	wire shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_tri, done;
	wire [1:0] AU1_op, AU2_op;
	
	Control C1(clk, start, clear, R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done);
	
	Datapath D1(out, R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done, clear, clk, In1, In2);
endmodule
