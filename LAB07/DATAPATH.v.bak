module DATAPATH(clk, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst, Inst, is0, WD, ALUcontrol, ReadData);
input clk, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst;
wire [4:0] WR, RR1, RR2;
input [31:0] Inst;
wire [31:0] result;
output is0;
input [2:0] ALUcontrol;
wire [31:0] RD1, RD2, ALUresult, Q_MUX1;
output [31:0] ReadData, WD;

assign RR1 = Inst[25:21];
assign RR2 = Inst[20:16];
assign WR = RegDst ? Inst[20:16] : Inst[15:11];
SignExtend SE(Inst[15:0], result);

register R1(RegWrite, WR, WD, RR1, RR2, clk, RD1, RD2);
MUX21 M1(RD2, result, Q_MUX1, ALUSrc);
ALU A1(RD1, Q_MUX1, ALUresult, is0, ALUcontrol);
SRAM S1(MemWrite, MemRead, clk, ReadData, ALUresult, RD2);
MUX21 M2(ALUresult, ReadData, WD, MemToReg);
endmodule
