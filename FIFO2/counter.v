module HA(Cin, Q, D, Cout);
 input Cin, Q;
 output Cout, D;
  
 and a0(Cout, Cin, Q);
 xor x0(D, Cin, Q);
endmodule

module counter(En, Q , clock, clear, carry);
 output [1:0] Q;
 output carry;
 input clock, clear, En;
 wire [1:0] D;
 wire C0, C1, D2, Q2;

 HA H0(En, Q[0], D[0], C0);
 HA H1(C0, Q[1], D[1], carry);
 edge_dff dff0(Q[0], D[0], clock, clear);
 edge_dff dff1(Q[1], D[1], clock, clear);
endmodule
