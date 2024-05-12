`timescale 1ns/100ps
module Testbench();
  reg clk, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst;
  reg [31:0] Inst;
  reg [2:0] ALUcontrol; 
  wire is0;
  wire [31:0] WD, ReadData;

  DATAPATH DB(clk, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst, Inst, is0, WD, ALUcontrol, ReadData);
  
  initial begin
    /*add*/
    clk = 0;
    Inst = 32'h00430820;
    RegDst = 1;
    RegWrite = 1;
    ALUSrc = 0;
    ALUcontrol = 3'b101;
    MemWrite = 0;
    MemRead = 0;
    MemToReg = 0;
    #10;
    /*lw*/
    Inst = 32'h8C410000;
    RegDst = 0;
    RegWrite = 1;
    ALUSrc = 1;
    ALUcontrol = 3'b101;
    MemWrite = 0;
    MemRead = 1;
    MemToReg = 1;
    #10;
    /*sw*/
    Inst = 32'hAC410000;
    RegDst = 1; /*x*/
    RegWrite = 0;
    ALUSrc = 1;
    ALUcontrol = 3'b101;
    MemWrite = 1;
    MemRead = 0;
    MemToReg = 0; /*x*/
    #10;
  end

  always #5 clk = ~clk;
  initial #4000 $stop;
endmodule