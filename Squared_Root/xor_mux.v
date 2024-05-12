module xor_mux(out, DataIn, c);
	output [4:0] out;
	input [4:0] DataIn;
	input c;
	xor (out[4], DataIn[4], c);
	xor (out[3], DataIn[3], c);
	xor (out[2], DataIn[2], c);
	xor (out[1], DataIn[1], c);
	xor (out[0], DataIn[0], c);
endmodule