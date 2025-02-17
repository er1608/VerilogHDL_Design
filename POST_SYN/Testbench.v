`timescale 1ns/1ps
module Testbench();
reg CLK, RST_N, DATA_IN; 
wire QOUT;
//Create the value for the input signals
initial begin
	CLK = 0;
	RST_N = 0;
	DATA_IN = 0;
	#205;
	RST_N = 1'b1;
	#500;
	DATA_IN = 1'b1;
	#500;
	DATA_IN = 1'b0;
	#2000 $finish;
end
//Create the clock with a period of 10 ns
always @ (CLK)
	#10 CLK <= ~CLK;
//Istantiate the module named ModelSimTest (D-FlipFlop) which descripted in ModelSimTest.v
ModelSimTest ins1 (
	.Clk(CLK),
	.Resetn(RST_N),
	.Din(DATA_IN),
	.Qout(QOUT)
			);
endmodule
