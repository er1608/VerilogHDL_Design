`timescale 1ns / 1ps

module edge_dff(q, d, clk, clear);
output q;
input d, clk, clear;
wire cbar, qbar, nd, nclk;
not n0(cbar, clear);
not n1(nd, d);
not n2(nclk, clk);
// Input latches
wire s, r, s1, r1, s2, r2;
nand na0(s, d, nclk);
nand na1(r, nd, nclk);
nand na2(s1, s, r1);
nand na3(r1, r, s1, cbar);
nand na4(s2, s1, clk);
nand na5(r2, r1, clk);

// Output latch
nand na6(q, s2, qbar);
nand na7(qbar, q, r2, cbar);
endmodule

