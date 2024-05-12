module FIFO (clear, clk, En, RW, I, O, Empty, Full);
 input clear, clk, En, RW;
 input [3:0] I;
 wire [1:0] Q1, Q2, A;
 output [3:0] O;
 output Empty, Full;
 wire nRW, EFront, EBack, t, nt, out, carry1, carry2;
 
 not n0(nRW, RW);
 and a0(EFront, nRW, En);
 and a1(EBack, RW, En);
 counter Front(EFront, Q1, clk, clear, carry1);
 counter Back(EBack, Q2, clk, clear, carry2);
 
 CMP Comparator(Q1, Q2, out);
 mux2_to_1 Selector(A, Q1, Q2, EFront); 
 
 xor x0(t, carry1, carry2);
 not n1(nt, t);
 // FULL and EMPTY
 and a2(Empty, nt, out, RW);
 and a3(Full, t, RW);
 
 RAM R(A, I, EBack, En, O, clear);
endmodule

