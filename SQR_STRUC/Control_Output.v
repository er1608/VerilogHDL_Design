module Control_Output(R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done, Q,
								OE1, WS1, RS1,OE2,WS2,RS2);
	input [3:0] Q;
	output R1_tri, R2_tri, R1_e, R2_e,In1_tri, In2_tri, AU1_tri, AU1_tri1;
	output shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_tri, done;
	output OE1, WS1, RS1,OE2,WS2,RS2;
	output [1:0] AU1_op, AU2_op;
	
	//R1_tri
	wire w_R1t1, w_R1t2;
	and a1 (w_R1t1, ~Q[3], ~Q[2], ~Q[1], Q[0]);
	and a2 (w_R1t2, Q[3], Q[2], ~Q[1], ~Q[0]);
	or o1 (R1_tri, w_R1t1, w_R1t2);
	
	//R2_tri
	wire w_R2t1, w_R2t2, w_R2t3, w_R2t4, w_R2t5;
	and a3 (w_R2t1, ~Q[3], Q[2], ~Q[1]);
	and a4 (w_R2t2, Q[2], ~Q[1], Q[0]);
	and a5 (w_R2t3, ~Q[3], Q[2], ~Q[0]);
	and a6 (w_R2t4, ~Q[3], ~Q[2], Q[1], Q[0]);
	and a7 (w_R2t5, Q[3], ~Q[2], ~Q[1], ~Q[0]);
	or o2 (R2_tri, w_R2t1, w_R2t2, w_R2t3, w_R2t4, w_R2t5);
	
	//R1_e
	wire w_R1e1, w_R1e2, w_R1e3;
	and a8 (w_R1e1, ~Q[2], ~Q[1], ~Q[0]);
	and a9 (w_R1e2, Q[3], ~Q[2], Q[1], Q[0]);
	and a10 (w_R1e3, Q[3], Q[2], Q[1], ~Q[0]);
	or o3 (R1_e, w_R1e1, w_R1e2, w_R1e3);
	
	//R2_e
	wire w_R2e1, w_R2e2, w_R2e3, w_R2e4;
	and a11 (w_R2e1, ~Q[3], ~Q[2], ~Q[1], ~Q[0]);
	and a12 (w_R2e2, ~Q[3], ~Q[2], Q[1], Q[0]);
	and a13 (w_R2e3, Q[3], Q[2], Q[1], ~Q[0]);
	and a14 (w_R2e4, Q[3], ~Q[2], ~Q[1], Q[0]);
	or o4 (R2_e, w_R2e1, w_R2e2, w_R2e3, w_R2e4);
	
	//AU1_op[1]
	wire w_A1op1, w_A1op2, w_A1op3;
	and a15 (w_A1op1, ~Q[3], Q[2], ~Q[1]);
	and a16 (w_A1op2, ~Q[3], Q[2], ~Q[0]);
	and a17 (w_A1op3, Q[2], ~Q[1], Q[0]);
	or o5 (AU1_op[1], w_A1op1, w_A1op2, w_A1op3);
	
	//AU1_op[0]
	wire w_A10op1, w_A10op2, w_A10op3;
	and a18 (w_A10op1, ~Q[3], ~Q[2], Q[0]);
	and a19 (w_A10op2, ~Q[3], Q[2], ~Q[1]);
	and a20 (w_A10op3, Q[3], ~Q[1], ~Q[0]);
	or o6 (AU1_op[0], w_A10op1, w_A10op2, w_A10op3);

	//In1_tri
	wire I1t1,I1t2;
	and a21 (I1t1, ~Q[3], ~Q[2], ~Q[1], ~Q[0]);
	and a22 (I1t2, Q[3], Q[2], Q[1], ~Q[0]);
	or o7 (In1_tri, I1t1, I1t2);
	
	//In2_tri
	or o8 (In2_tri, I1t1, I1t2);
	
	//AU1_tri
	wire A1t1,A1t2;
	and a23(A1t1, ~Q[3], ~Q[2], Q[1], Q[0]);
	and a24(A1t2, Q[3], ~Q[2], ~Q[1], ~Q[0]);
	or o9 (AU1_tri, A1t1, A1t2);
	
	//AU1_tr1
	wire A11t1,A11t2;
	and a23(A11t1, ~Q[3], ~Q[2], Q[1], ~Q[0]);
	and a24(A11t2, Q[3], ~Q[2], ~Q[1], Q[0]);
	or o17 (AU1_tri1, A11t1, A11t2);
	
	//shif3_tri
	and a25 (shift3_tri, ~Q[3], Q[2], Q[1], Q[0]);
	
	//AU2_op[1]
	and a26 (AU2_op[1], Q[3], ~Q[2], ~Q[1], Q[0]);
	
	//R3_e
	wire R3e1,R3e2, R3e3, R3e4;
	and a27 (R3e1, ~Q[3], Q[2], Q[1], Q[0]);
	and a28 (R3e2, Q[3], Q[2], Q[1], Q[0]);
	and a29 (R3e3, Q[3], ~Q[2], ~Q[1], ~Q[0]);
	and a30 (R3e4, Q[3], Q[2], ~Q[1], Q[0]);
	or o10 (R3_e, R3e1, R3e2, R3e3, R3e4);
	
	//R4_e
	assign R4_e = shift3_tri;
	
	//R5_e
	and a31 (R5_e, ~Q[3], Q[2], ~Q[1]);
	
	//R4_tri
	wire R4t1,R4t2;
	and a32 (R4t1, Q[3], Q[2], Q[1], Q[0]);
	and a33 (R4t2, Q[3], ~Q[2], ~Q[1], Q[0]);
	or o11 (R4_tri, R4t1, R4t2);
	
	//R5_tri
	and a34 (R5_tri, Q[3], Q[2], ~Q[1], ~Q[0]);
	
	//AU2_op[0]
	and a35 (AU2_op[0], Q[3], Q[2], Q[1], Q[0]);
	
	//AU2_tri
	wire A2t1,A2t2,A2t3;
	and a36 (A2t1, Q[3], Q[2], Q[1], ~Q[0]);
	and a37 (A2t2, Q[3], ~Q[2], ~Q[1], ~Q[0]);
	and a38 (A2t3, Q[3], Q[2], ~Q[1], Q[0]);
	or o12 (AU2_tri, A2t1, A2t2, A2t3);
	
	//OE1
	wire OE1_1, OE1_2, OE1_3, OE1_4;
	and a39 (OE1_1, ~Q[3], ~Q[2], Q[1]);
	and a40 (OE1_2, Q[3], Q[2], ~Q[1]);
	and a41 (OE1_3, Q[3], ~Q[2], ~Q[1]);
	and a42 (OE1_4, ~Q[3], Q[1], Q[0]);
	or o13 (OE1, OE1_1, OE1_2, OE1_3, OE1_4);
	
	//WS1
	wire WS1_1, WS1_2, WS1_3;
	and a43 (WS1_1, ~Q[3], Q[2], ~Q[1]);
	and a44 (WS1_2, ~Q[3], ~Q[2], Q[1], Q[0]);
	and a45 (WS1_3, Q[3], ~Q[2], ~Q[1], ~Q[0]);
	or o14 (WS1, WS1_1, WS1_2, WS1_3);
	
	//RS1
	wire RS1_1, RS1_2, RS1_3;
	and a46 (RS1_1, ~Q[3], ~Q[2], Q[1], ~Q[0]);
	and a47 (RS1_2, ~Q[3], Q[2], Q[1], Q[0]);
	and a48 (RS1_3, Q[3], ~Q[2], ~Q[1], Q[0]);
	or o15 (RS1, RS1_1, RS1_2, RS1_3);
	
	//OE2
	wire OE2_1, OE2_2, OE2_3;
	and a49 (OE2_1, Q[3], Q[2], Q[1], ~Q[0]);
	and a50 (OE2_2, Q[3], ~Q[2], ~Q[1], ~Q[0]);
	and a51 (OE2_3, Q[3], Q[2], ~Q[1], Q[0]);
	or o16 (OE2, OE2_1, OE2_2, OE2_3);
	
	//WS2
	assign WS2 = OE2;
	
	//RS2
	assign RS2 = 1'b0;
	
	//done
	and a52 (done, ~Q[3], Q[2], ~Q[1], Q[0]);
endmodule
