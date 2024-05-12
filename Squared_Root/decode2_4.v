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