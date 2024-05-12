module mux2_to_1(out, i0, i1, s); 
// Port declarations from the I/O diagram 
output [1:0] out; 
input [1:0] i0, i1; 
input s; 
// Internal wire declarations 
wire sn; 
wire [1:0] y0, y1; 
// Gate instantiations 
// Create s1n and s0n signals. 
not n0(sn, s); 

and a0(y0[0], i0[0], s); 
and a1(y1[0], i1[0], sn); 

and a2(y0[1], i0[1], s); 
and a3(y1[1], i1[1], sn); 

or o0(out[0], y0[0], y1[0]); 
or o1(out[1], y0[1], y1[1]); 
endmodule