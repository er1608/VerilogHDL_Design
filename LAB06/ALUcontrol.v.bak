module Control(opcode, RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst, ALUOp);
input [5:0] opcode;
output reg RegWrite, ALUSrc, MemWrite, MemRead, MemToReg, RegDst;
output reg [1:0] ALUOp;
always @ (*)
begin
 case (opcode)
	6'b000001: //add
	begin
	 ALUOp = 2;
	 ALUSrc = 0;
	 RegDst = 1;
	 RegWrite = 1;
	 MemRead = 0;
	 MemWrite = 0;
	 MemToReg = 0;
	end
	6'b000010: //sw
	begin
	 ALUOp = 2;
	 ALUSrc = 1;
	 RegDst = 0;
	 RegWrite = 1;
	 MemRead = 0;
	 MemWrite = 1;
	 MemToReg = 0;
	end
	6'b000011: //sub
	begin
	 ALUOp = 3;
	 ALUSrc = 0;
	 RegDst = 1;
	 RegWrite = 1;
	 MemRead = 0;
	 MemWrite = 0;
	 MemToReg = 0;
	end
	6'b000100: //lw
	begin
	 ALUOp = 2;
	 ALUSrc = 1;
	 RegDst = 0;
	 RegWrite = 1;
	 MemRead = 1;
	 MemWrite = 0;
	 MemToReg = 1;
	end
	6'b000101: //and
	begin
	 ALUOp = 0;
	 ALUSrc = 0;
	 RegDst = 1;
	 RegWrite = 1;
	 MemRead = 0;
	 MemWrite = 0;
	 MemToReg = 0;
	end
	6'b000111: //or
	begin
	 ALUOp = 1;
	 ALUSrc = 0;
	 RegDst = 1;
	 RegWrite = 1;
	 MemRead = 0;
	 MemWrite = 0;
	 MemToReg = 0;
	end
	default:
	begin
	 ALUOp = 0;
	 ALUSrc = 0;
	 RegDst = 0;
	 RegWrite = 0;
	 MemRead = 0;
	 MemWrite = 0;
	 MemToReg = 0;
	end
 endcase
end
endmodule
