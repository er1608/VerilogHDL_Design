`timescale 1ns/100ps
module Testbench();
//  reg [5:0] opcode;
//  wire RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst;
//  wire [1:0] ALUOp;
  reg [1:0] ALUOp;
  wire [2:0] control;
  
//  Control C0(opcode, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst, ALUOp);
  ALUcontrol A0(ALUOp, control);
  
  initial begin
    /*and*/
    ALUOp = 0;
    #10;
    /*or*/
    ALUOp = 1;
    #10;
    /*add*/
    ALUOp = 2;
    #10;
    /*sub*/
    ALUOp = 3;
    #10;
  end

  initial #4000 $stop;
endmodule