`timescale 1ns/100ps
module Testbench();
 reg WE, RE, clk;
 reg [31:0] A, WD;
 wire [31:0] RD;
 SRAM sram_tb(.WE(WE), .RE(RE), .clk(clk), .RD(RD), .Address(A), .WD(WD));
 initial begin
  clk = 0;
  WE = 1;
  RE = 0;
  WD = 0;
  A = 0;
  #10
  WD = 1;
  A = 1;
  #10
  WD = 2;
  A = 2;
  #10
  WD = 3;
  A = 3;
  #10
  WD = 4;
  A = 4;
  #10
  WE = 0;
  RE = 1;
  A = 0;
  #10 A = 1;
  #10 A = 2;
  #10 A = 3;
  #10 A = 4;
 end
 
 always #5 clk = ~clk;
 initial #4000 $stop;
endmodule
