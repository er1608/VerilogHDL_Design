module t_ff(q, clk, clear);
output q;
input clk, clear;
// Instantiate the edge triggered DFF
// Complement of output q is fed back.
// Notice qbar not needed. Empty port.
edge_dff ff1(q, ,~q, clk, clear);
endmodule

