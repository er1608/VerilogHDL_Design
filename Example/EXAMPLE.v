`timescale 1 ns/100 ps    // don vi do thoi gian voi 1 ns so nguyen va 100 ps so thap phan
module Chap1CounterTester ();
	reg Clk=0, Reset=0;  // khoi tao bien
	wire [3:0] Count;
	initial begin
		Reset = 0; #5 Reset = 1; #115 Reset = 0;
		#760 $stop;
	end
	always #26.5 Clk = - Clk;
	Chap1Counter U1 (Clk, Reset, Count);
endmodule

module Chap1Counter(Clk, Reset, Count);
	input Clk, Reset;
	output [3:0] Count;
	reg [3:0] Count;
	always @(posedge Clk) begin  //  chay khi canh duong(posedge) clk tich cuc
		if (Reset) Count = 0;
		else Count = Count + 1;
	end
endmodule
