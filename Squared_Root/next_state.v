module next_state(out, start, S);
	output [3:0] out;
	input [3:0] S;
	input start;
	wire nstart;
	assign nstart = ~start;
	wire Q0, Q1, Q2, Q3;
	assign Q0 = S[0] | 1'b0;
	assign Q1 = S[1] | 1'b0;
	assign Q2 = S[2] | 1'b0;
	assign Q3 = S[3] | 1'b0;
	wire wa1, wa2, wa3, wa4, wa5, wa6, wa7;
	assign wa1 = Q3 & ~Q2 & Q1;
	assign wa2 = ~Q3 & Q2 & Q1;
	assign wa3 = Q3 & ~Q2 & Q0;
	assign wa7 = ~Q3 & ~Q2 & ~Q1 & ~Q0;
	
	wire wo4, wo5, wa8, wa9, wo6, wo7;
	assign wo4 = wa1 | wa2 | wa3;
	assign wo5 = wa1 | wa2 | wa3 | wa7;
	assign wa8 = nstart & wo4;
	assign wa9 = start & wo5;
	assign out[0] = wa8 | wa9;
	
	wire wa10, wa11, wa12, wa13, wa14, wa15, wa16;
	assign wa10 = Q3 & Q1;
	assign wa11 = Q2 & Q1 & Q0;
	assign wa12 = Q3 & ~Q2 & Q0;
	assign wa13 = ~Q3 & Q2 & Q1;
	assign wa14 = Q2 & Q1 & Q0;
	assign wa15 = ~Q3 & ~Q2 & Q1 & ~Q0;
	assign wa16 = Q3 & ~Q2 & ~Q1 & Q0;
	
	wire wo8,wo9;
	assign out[3] = wa10 | wa11 | wa12;
	assign out[2] = wa13 | wa14 | wa15 | wa16;
	
	wire wa17,wa18, wa19, wa20, wa21, wa22, wa23;
	assign wa17 = Q3 & Q2 & Q1;
	assign wa18 = Q2 & Q1 & Q0;
	assign wa19 = ~Q3 & Q2 & Q1;
	assign wa20 = ~Q3 & ~Q2 & ~Q1 & Q0;
	assign wa21 = ~Q3 & ~Q2 & Q1 & ~Q0;
	assign wa22 = Q3 & ~Q2 & Q1 & ~Q0;
	assign wa23 = Q3 & ~Q2 & ~Q1 & Q0;
	
	assign out[1] = wa17 | wa18 | wa19 | wa20 | wa21 | wa22 | wa23;
endmodule