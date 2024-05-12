module next_state(out, start, Q);
	output [3:0] out;
	input [3:0] Q;
	input start;
	wire wD3_1, wD3_2, wD3_3, wD3_4;
	and a1 (wD3_1, Q[3], ~Q[1], ~Q[0]);
	and a2 (wD3_2, Q[3], ~Q[2], ~Q[1]);
	and a3 (wD3_3, Q[3], Q[2], Q[1]);
	and a4 (wD3_4, Q[2], Q[1], Q[0]);
	or o1 (out[3], wD3_1, wD3_2, wD3_3, wD3_4);
	
	wire wD2_1, wD2_2, wD2_3, wD2_4, wD2_5;
	and a5 (wD2_1, ~Q[3], Q[2], ~Q[1]);
	and a6 (wD2_2, Q[3], ~Q[1], Q[0]);
	and a7 (wD2_3, ~Q[3], Q[1], ~Q[0]);
	and a8 (wD2_4, Q[2], Q[0]);
	and a9 (wD2_5, Q[2], Q[1]);
	or o2 (out[2], wD2_1, wD2_2, wD2_3, wD2_4, wD2_5);
	
	wire wD1_1, wD1_2, wD1_3, wD1_4;
	and a10 (wD1_1, ~Q[3], Q[2], ~Q[1]);
	and a11 (wD1_2, ~Q[3], ~Q[2], Q[1]);
	and a12 (wD1_3, Q[2], Q[1], Q[0]);
	and a13 (wD1_4, ~Q[3], Q[0]);
	or o3 (out[1], wD1_1, wD1_2, wD1_3, wD1_4);

	wire wD0_1, wD0_2, wD0_3, wD0_4, wD0_5;
	and a14 (wD0_1, ~Q[3], Q[2], ~Q[1]);
	and a15 (wD0_2, ~Q[3], Q[2], Q[0]);
	and a16 (wD0_3, Q[3], ~Q[2], ~Q[1]);
	and a17 (wD0_4, ~Q[1], Q[0]);
	and a18 (wD0_5, start, ~Q[3], ~Q[2], ~Q[1], ~Q[0]);
	or o4 (out[0], wD0_1, wD0_2, wD0_3, wD0_4, wD0_5);
endmodule
