module mux4_to_1 (out, i0, i1, i2, i3, s1, s0); 
// Port declarations from the I/O diagram 
output [3:0] out; 
input [3:0] i0, i1, i2, i3; 
input s1, s0; 
// Internal wire declarations 
wire s1n, s0n; 
wire [3:0] y0, y1, y2, y3; 
// Gate instantiations 
// Create s1n and s0n signals. 
not n0(s1n, s1); 
not n1(s0n, s0); 
// 3-input and gates instantiated 
and a0(y0[0], i0[0], s1n, s0n); 
and a1(y1[0], i1[0], s1n, s0); 
and a2(y2[0], i2[0], s1, s0n); 
and a3(y3[0], i3[0], s1, s0); 

and a4(y0[1], i0[1], s1n, s0n); 
and a5(y1[1], i1[1], s1n, s0); 
and a6(y2[1], i2[1], s1, s0n); 
and a7(y3[1], i3[1], s1, s0); 

and a8(y0[2], i0[2], s1n, s0n); 
and a9(y1[2], i1[2], s1n, s0); 
and a10(y2[2], i2[2], s1, s0n); 
and a11(y3[2], i3[2], s1, s0); 

and a12(y0[3], i0[3], s1n, s0n); 
and a13(y1[3], i1[3], s1n, s0); 
and a14(y2[3], i2[3], s1, s0n); 
and a15(y3[3], i3[3], s1, s0); 
// 4-input or gate instantiated 
or o0(out[0], y0[0], y1[0], y2[0], y3[0]); 
or o1(out[1], y0[1], y1[1], y2[1], y3[1]); 
or o2(out[2], y0[2], y1[2], y2[2], y3[2]); 
or o3(out[3], y0[3], y1[3], y2[3], y3[3]); 
endmodule