module register(RWE, WA, WD, RA1, RA2, clk, RD1, RD2);
	input RWE, clk;
	input [4:0] WA, RA1, RA2;
	reg [31:0] register [31:0];
	input [31:0] WD;
	output reg [31:0] RD1, RD2; 
	
	always @(posedge clk)
	begin
	 if(RWE)
	  begin
	  register[WA] = WD;
	  register[2] = 2;
	  register[3] = 3;
	  RD1 = register[RA1];
	  RD2 = register[RA2];
	  end
	 else
	 begin
	  register[1] = 1;
	  RD1 = register[RA1];
	  RD2 = register[RA2];
	 end
	end
endmodule
