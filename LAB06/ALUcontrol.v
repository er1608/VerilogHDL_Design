module ALUcontrol(ALUOp, control);
input [1:0] ALUOp;
output reg [2:0] control;
always @ (*)
begin
 case (ALUOp)
	2'b00: control = 1;
	2'b01: control = 3;
	2'b10: control = 5;
	2'b11: control = 6;
 endcase
end
endmodule
