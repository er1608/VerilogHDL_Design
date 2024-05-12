module BUF5bit(out, in, s);
	output [4:0] out;
	input s;
	input [4:0] in;
	
	bufif1 (out[4], in[4], s);
	bufif1 (out[3], in[3], s);
	bufif1 (out[2], in[2], s);
	bufif1 (out[1], in[1], s);
	bufif1 (out[0], in[0], s);
endmodule
