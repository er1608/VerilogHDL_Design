module shift_right_3b(Out, DataIn);
	output [4:0] Out;
	input [4:0] DataIn;
	assign Out[4] = 1'b0;
	assign Out[3] = 1'b0;
	assign Out[2:0] = DataIn[4:2];
endmodule