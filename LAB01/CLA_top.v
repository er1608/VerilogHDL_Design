module CLA_top(A, B, Cin, S, mS);
	input [2:0] A, B;
	input Cin;
	output [3:0] S, mS;
	
	CLA_M i1 (A, B, Cin, S);
	Adder i2 (A, B, Cin, mS);
endmodule
	
	