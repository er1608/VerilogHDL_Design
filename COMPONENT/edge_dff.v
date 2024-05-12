module edge_dff(q, qbar, d, clk, clear);
output q,qbar;
input d, clk, clear;
wire s, sbar, r, rbar,cbar;
not (cbar, clear);
not (clkbar, clk);
// Input latches
nand (sbar, rbar, s);
nand (s, sbar, cbar, clkbar);
nand (r, rbar, clkbar, s);
nand (rbar, r, cbar, d);
// Output latch
nand (q, s, qbar);
nand (qbar, q, r, cbar);
endmodule
