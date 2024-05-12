module Full_Adder_5b_select(out, inA, inB, select); 
	output [4:0] out; 
	input [4:0] inA, inB;
	input select;
	wire c0, c1, c2, c3, c4;
	wire [4:0] sum;
	adder1 a0 (sum[0], c0, inA[0], inB[0], 1'b0); 
	adder1 a1 (sum[1], c1, inA[1], inB[1], c0); 
	adder1 a2 (sum[2], c2, inA[2], inB[2], c1); 
	adder1 a3 (sum[3], c3, inA[3], inB[3], c2);
	adder1 a4 (sum[4], c4, inA[4], inB[4], c3); 
	
	bufif1 b0(out[0], sum[0], select);
	bufif1 b1(out[1], sum[1], select);
	bufif1 b2(out[2], sum[2], select);
	bufif1 b3(out[3], sum[3], select);
	bufif1 b4(out[4], sum[4], select);
endmodule