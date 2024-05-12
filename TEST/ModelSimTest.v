module ModelSimTest (Din, Clk, Resetn, Qout);
input Din;
input Clk;
input Resetn;
output Qout;
reg Qout;
always @ (posedge Clk or negedge Resetn)
begin 
	if (!Resetn)
		Qout = 1'b0;
	else
		Qout = Din;
end
endmodule


