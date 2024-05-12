module counter(Q , clock, clear);
output [3:0] Q;
input clock, clear;
// Instantiate the T flipflops
t_ff tff0(Q[0], clock, clear);
t_ff tff1(Q[1], Q[0], clear);
t_ff tff2(Q[2], Q[1], clear);
t_ff tff3(Q[3], Q[2], clear);
endmodule
