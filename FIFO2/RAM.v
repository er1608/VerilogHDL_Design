module decode2_4(y0, y1, y2, y3, s0, s1);
 output y0, y1, y2, y3;
 input s0, s1;
 
 wire s1n, s0n;
 
 not n1(s1n, s1);
 not n2(s0n, s0);
 and a0(y0, s1n, s0n);
 and a1(y1, s1n, s0);
 and a2(y2, s1, s0n);
 and a3(y3, s1, s0);
endmodule

module RAM(A, I, RWS, CS, O, clear);
 input [1:0] A;
 input [3:0] I;
 input RWS, CS, clear;
 output [3:0] O;
 wire [3:0] l;
 wire nRWS, W, TRI_EN;
 wire [3:0] f;
 
 decode2_4 U1 (l[0], l[1], l[2], l[3], A[0], A[1]);
 not n3(nRWS, RWS);
 and a4(W, RWS, CS);
 and a5(TRI_EN, CS, nRWS);

 MC M0(l[0], I, W, f, clear);
 MC M1(l[1], I, W, f, clear);
 MC M2(l[2], I, W, f, clear);
 MC M3(l[3], I, W, f, clear);

 bufif1 b0(O[0], f[0], TRI_EN);
 bufif1 b1(O[1], f[1], TRI_EN);
 bufif1 b2(O[2], f[2], TRI_EN);
 bufif1 b3(O[3], f[3], TRI_EN);
endmodule

