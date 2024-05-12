module Sub5b_select(out, InA, InB, select);
	output [4:0] out;
	input [4:0] InA, InB;
	wire carry;
	input select;
	wire [4:0] nInB, f, g;
	parameter t = 5'b00001;
	
	not n0(nInB[0], InB[0]);
	not n1(nInB[1], InB[1]);
	not n2(nInB[2], InB[2]);
	not n3(nInB[3], InB[3]);
	not n4(nInB[4], InB[4]);
	
	Full_Adder_5b fa0(g, carry, nInB, t);
	Full_Adder_5b fa1(f, carry, InA, g);
	
	bufif1 b0(out[0], f[0], select);
	bufif1 b1(out[1], f[1], select);
	bufif1 b2(out[2], f[2], select);
	bufif1 b3(out[3], f[3], select);
	bufif1 b4(out[4], f[4], select);
endmodule