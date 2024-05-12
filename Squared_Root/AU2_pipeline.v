module AU2_pipeline(out, InA, InB, op);
	output [4:0] out;
	input [4:0] InA, InB;
	input [1:0] op;
	wire [3:0] l;

	decode2_4 U1 (l[0], l[1], l[2], l[3], op[0], op[1]);

	Full_Adder_5b_select add(out, InA, InB, l[0]);
	Sub5b_select sub(out, InA, InB, l[1]);
	MAX max(out, InA, InB, l[2]);
endmodule

