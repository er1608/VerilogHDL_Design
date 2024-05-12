module DATAPATH(clk, Inst, is0, WD, ReadData);
input clk;
wire [4:0] WR, RR1, RR2;
wire [5:0] opcode;
wire [1:0] ALUOp;
wire [2:0] control;
wire RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst;
input [31:0] Inst;
wire [31:0] result;
output is0;
wire [31:0] RD1, RD2, ALUresult, Q_MUX1;
output [31:0] ReadData, WD;

assign opcode = Inst[31:26];
assign RR1 = Inst[25:21];
assign RR2 = Inst[20:16];
assign WR = RegDst ? Inst[15:11] : Inst[20:16];
SignExtend SE(Inst[15:0], result);

register R1(RegWrite, WR, WD, RR1, RR2, clk, RD1, RD2);
MUX21 M1(RD2, result, Q_MUX1, ALUSrc);
ALU A1(RD1, Q_MUX1, ALUresult, is0, control);
SRAM S1(MemWrite, MemRead, clk, ReadData, ALUresult, RD2);
MUX21 M2(ALUresult, ReadData, WD, MemToReg);
Control C1(opcode, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst, ALUOp);
ALUcontrol ALUC1(ALUOp, control);
endmodule
