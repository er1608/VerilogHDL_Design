module MUX21(A, B, Q, sel);
input signed [31:0] A, B;
output reg [31:0] Q;
input sel;
always @ (*)
begin
 case (sel)
	1'b0: Q = A;
	1'b1: Q = B; 
 endcase
end
endmodule

