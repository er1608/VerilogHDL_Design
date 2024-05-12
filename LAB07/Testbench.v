`timescale 1ns/100ps
module Testbench();
  reg clk;
  reg [31:0] Inst; 
  wire is0;
  wire [31:0] WD, ReadData;

  DATAPATH DB(clk, Inst, is0, WD, ReadData);

  initial begin
    /*add $1, $2, $3*/
    clk = 0;
    Inst = 32'h04430820;
    #10;
    /*sw $1, 3($2)*/
    Inst = 32'h08410003;
    #10;
    /*lw $4, 3($2)*/
    Inst = 32'h10440003;
    #20;
    /*sub $6, $5, $2*/
    Inst = 32'h0CA23022;
    #10;
    /*and $7, $2, $3*/
    Inst = 32'h14433824;
    #10;
    /*or $8, $2, $3*/
    Inst = 32'h1C434025;
    #10;
  end

  always #5 clk = ~clk;
  initial #4000 $stop;
endmodule