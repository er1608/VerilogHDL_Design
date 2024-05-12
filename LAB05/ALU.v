module ALU(A, B, Q, OF, sel);
input [31:0] A, B;
output reg [31:0] Q;
input [2:0] sel;
output reg OF;
reg [31:0] C;
always @ (*)
begin
 case (sel)
	3'b000: Q = ~A;
	3'b001: Q = A & B; 
	3'b010: Q = A ^ B;
	3'b011: Q = A | B;
	3'b100:
	begin
	 Q = A - 1;
	 if (A[31] == 1 & Q[31] == 0) OF = 1;
	 else OF = 0;
	end
	3'b101:
	begin
	 Q = A + B;
	 if (A[31] == 0 & B[31] == 0 & Q[31] == 1) OF = 1;
	 else if (A[31] == 1 & B[31] == 1 & Q[31] == 0) OF = 1;
	 else OF = 0;
	end
	3'b110:
	begin
	 Q = A - B;
	 C = ~B + 1;
	 if (A[31] == 0 & C[31] == 0 & Q[31] == 1) OF = 1;
	 else if (A[31] == 1 & C[31] == 1 & Q[31] == 0) OF = 1;
	 else OF = 0;
	end
	3'b111:
	begin
	 Q = A + 1;
	 if (A[31] == 0 & Q[31] == 1) OF = 1;
	 else OF = 0;
	end
endcase
end
endmodule
