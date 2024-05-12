module MC(select, I, W, O, clear);
 output [3:0] O;
 input [3:0] I;
 input select, W, clear;
 wire [3:0] f;
 wire clk;
 and a0(clk, select, W);

 edge_dff dff0(f[0], I[0], clk, clear);
 edge_dff dff1(f[1], I[1], clk, clear);
 edge_dff dff2(f[2], I[2], clk, clear);
 edge_dff dff3(f[3], I[3], clk, clear);
 
 bufif1 b0(O[0], f[0], select);
 bufif1 b1(O[1], f[1], select);
 bufif1 b2(O[2], f[2], select);
 bufif1 b3(O[3], f[3], select);
endmodule
