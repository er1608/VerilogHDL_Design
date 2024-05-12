module mux2_5b(out, InA, InB, Sel);
	output [4:0] out;
	input [4:0] InA, InB;
	input Sel;
	mux2_1b mux4(out[4], InA[4], InB[4], Sel);
	mux2_1b mux3(out[3], InA[3], InB[3], Sel);
	mux2_1b mux2(out[2], InA[2], InB[2], Sel);
	mux2_1b mux1(out[1], InA[1], InB[1], Sel);
	mux2_1b mux0(out[0], InA[0], InB[0], Sel);
endmodule