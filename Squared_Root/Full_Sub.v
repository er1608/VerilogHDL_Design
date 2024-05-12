module Full_Sub(out, Bout, A, B, Bin);
	output out, Bout;
	input A, B, Bin;
	wire w_xor1, w_and1, w_and2, nw_xor1;
	xor x1(w_xor1, A, B);
	not (nw_xor1, w_xor1);
	xor x2(out, Bin, w_xor1);
	and a1(w_and1, nw_xor1, Bin);
	and a2(w_and2, ~A, B);
	or x3(Bout, w_and1, w_and2);
endmodule