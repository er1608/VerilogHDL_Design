module FSM(o, I, clk, rst);
output o;
reg o;
input I, clk, rst;
reg [1:0] CurrState, NxState;

always @ (posedge clk or posedge rst)
 if (rst)
  CurrState <= 2'b00;
 else
  CurrState <= NxState;

always @ (I or CurrState)
 case (CurrState)
  2'b00: begin
  
   NxState = I ? 2'b00:2'b01;
   o = 0;
  end
  2'b01: begin
   NxState = I ? 2'b10:2'b01;
   o = 0;
  end
  2'b10: begin
   NxState = I ? 2'b00:2'b11;
   o = 0;
  end
  2'b11: begin
   NxState = I ? 2'b00:2'b01;
   o = 1;
  end
 endcase
 
endmodule
