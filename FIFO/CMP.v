module CMP(I1, I2, out);
input [1:0] I1, I2;
output out;
wire [1:0] nI1, nI2; 
wire [1:0] y1, y2, f; 

not n0(nI1[0], I1[0]);
not n1(nI1[1], I1[1]);

not n2(nI2[0], I2[0]);
not n3(nI2[1], I2[1]);

and a0(y1[0], I1[0], I2[0]);
and a1(y2[0], nI1[0], nI2[0]);
or o0(f[0], y1[0], y2[0]);

and a2(y1[1], I1[1], I2[1]);
and a3(y2[1], nI1[1], nI2[1]);
or o1(f[1], y1[1], y2[1]);

and a4(out, f[0], f[1]);
endmodule