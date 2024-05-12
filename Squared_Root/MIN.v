module MIN(out, A, B, select);
	input [4:0] A, B;
	input select;
	output [4:0] out;
	wire [4:0] A1, f;
	Sub_5b sub(A1, A, B);
	mux2_5b mux(f, A, B, A1[4]);
	
	bufif1 b0(out[0], f[0], select);
	bufif1 b1(out[1], f[1], select);
	bufif1 b2(out[2], f[2], select);
	bufif1 b3(out[3], f[3], select);
	bufif1 b4(out[4], f[4], select);
endmodule