module Control_Output(R1_tri, R2_tri, R1_e, R2_e, AU1_op, In1_tri, In2_tri, 
								AU1_tri, AU1_tri1, shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_op, AU2_tri, done, S);
	input [3:0] S;
	output R1_tri, R2_tri, R1_e, R2_e,In1_tri, In2_tri, AU1_tri, AU1_tri1;
	output shift3_tri, R3_e, R4_e, R5_e, R4_tri, R5_tri, AU2_tri, done;
	output [1:0] AU1_op, AU2_op;
	
	wire Q3, Q2, Q1, Q0;
	assign Q3 = S[3] | 1'b0;
	assign Q2 = S[2] | 1'b0;
	assign Q1 = S[1] | 1'b0;
	assign Q0 = S[0] | 1'b0;
	
	//R1_tri
	wire w_R1t1, w_R1t2;
	assign w_R1t1 = ~Q3 & ~Q2 & ~Q1 & Q0;
	assign w_R1t2 = Q3 & Q2 & Q1 & ~Q0;
	assign R1_tri = w_R1t1 | w_R1t2;
	
	//R2_tri
	wire w_R2t1, w_R2t2;
	assign w_R2t1 = Q3 | Q2 | Q1;
	assign w_R2t2 = ~Q3 | ~Q2 | ~Q1;
	assign R2_tri = w_R2t1 & w_R2t2;
	
	//R1_e
	wire w_R1e1, w_R1e2;
	assign w_R1e1 = Q3 & Q2 & Q1;
	assign w_R1e2 = ~Q3 & ~Q2 & ~Q1;
	assign R1_e = w_R1e1 | w_R1e2;
	
	//R2_e
	wire w_R2e1, w_R2e2, w_R2e3;
	assign w_R2e1 = ~Q3 & ~Q2 & ~Q0;
	assign w_R2e2 = Q3 & Q2 & Q1 & Q0;
	assign w_R2e3 = Q3 & ~Q2 & Q1 & ~Q0;
	assign R2_e = w_R2e1 | w_R2e2 | w_R2e3;
	
	//AU1_op[1]
	wire w_A1op1, w_A1op2;
	assign w_A1op1 = Q3 & ~Q2 & Q0;
	assign w_A1op2 = ~Q3 & Q2 & Q1;
	assign AU1_op[1] = w_A1op1 | w_A1op2;
	
	//AU1_op[0]
	wire w_A10op1, w_A10op2, w_A10op3, w_A10op4, w_A10op5;
	assign w_A10op1 = Q3 & Q1 & ~Q0;
	assign w_A10op2 = ~Q3 & ~Q2 & ~Q1 & Q0;
	assign w_A10op3 = ~Q3 & ~Q2 & Q1 & ~Q0;
	assign w_A10op4 = Q3 & ~Q2 & ~Q1 & Q0;
	assign w_A10op5 = ~Q3 & Q2 & Q1 & Q0;
	assign AU1_op[0] = w_A10op1 | w_A10op2 | w_A10op3 | w_A10op4 | w_A10op5;
	
	//AU2_op[1]
	assign AU2_op[1] = Q3 & ~Q2 & Q1 & ~Q0;
	
	//R3_e
	wire R3e1,R3e2, R3e3, R3e4;
	assign R3e1 = Q3 & Q2 & Q1;
	assign R3e2 = Q3 & Q1 & ~Q0;
	assign R3e3 = ~Q3 & Q2 & Q1 & Q0;
	assign R3e4 = Q3 & ~Q2 & ~Q1 & Q0;
	assign R3_e = R3e1 | R3e2 | R3e3 | R3e4;
	
	//R4_e
	wire R4e1,R4e2, R4e3;
	assign R4e1 = ~Q3 & Q2 & Q1 & Q0;
	assign R4e2 = Q3 & ~Q2 & Q1 & ~Q0;
	assign R4e3 = Q3 & ~Q2 & ~Q1 & Q0;
	assign R4_e = R4e1 | R4e2 | R4e3;
	
	//R5_e
	wire R5e1,R5e2;
	assign R5e1 = ~Q3 & Q2 & Q1 & ~Q0;
	assign R5e2 = Q3 & ~Q2 & Q1 & Q0;
	assign R5_e = R5e1 | R5e2;
	
	//R4_tri
	wire R4t1,R4t2;
	assign R4t1 = Q3 & Q2 & Q1 & Q0;
	assign R4t2 = Q3 & ~Q2 & Q1 & ~Q0;
	assign R4_tri = R4t1 | R4t2;
	
	//R5_tri
	assign R5_tri = Q3 & Q2 & Q1 & ~Q0;
	
	//AU2_op[0]
	assign AU2_op[0] = Q3 & Q2 & Q1 & Q0;
	
	//AU2_tri
	wire A2t1,A2t2;
	assign A2t1 = Q3 & Q2 & Q1;
	assign A2t2 = Q3 & Q1 & ~Q0;
	assign AU2_tri = A2t1 | A2t2;
	
	//done
	assign done = Q3 & ~Q2 & Q1 & Q0;
	
	//In1_tri
	wire I1t1,I1t2;
	assign I1t1 = ~Q3 & ~Q1 & ~Q2 & ~Q0;
	assign I1t2 = Q3 & Q2 & Q1 & Q0;
	assign In1_tri = I1t1 | I1t2;
	
	//In2_tri
	assign In2_tri = I1t1 | I1t2;
	
	//AU1_tri
	wire A1t1,A1t2;
	assign A1t1 = ~Q3 & ~Q1 & ~Q2 & Q0;
	assign A1t2 = Q3 & Q2 & Q1 & ~Q0;
	assign AU1_tri = A1t1 | A1t2;
	
	//AU1_tr1
	assign AU1_tri1 = ~Q2 & Q1 & ~Q0;
	
	//shif3_tri
	wire s3I1,s3I2;
	assign s3I1 = ~Q3 & Q2 & Q1 & Q0;
	assign s3I2 = Q3 & ~Q2 & ~Q1 & Q0;
	assign shift3_tri = s3I1 | s3I2;
endmodule