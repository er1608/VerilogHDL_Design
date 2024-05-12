module mux2_1b(Output, InA, InB, Sel);
	output Output;
	input InA,InB, Sel;
	wire T1, T2;
	and u1(T1, InA, Sel);
	and u2(T2, InB, ~Sel);
	or  u3(Output, T1, T2);
endmodule
