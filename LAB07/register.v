module register(RWE, WA, WD, RA1, RA2, clk, RD1, RD2);
	input RWE, clk;
	input [4:0] WA, RA1, RA2;
	reg [31:0] register [31:0];
	input [31:0] WD;
	output [31:0] RD1, RD2; 
	
	assign RD1 = RWE ? register[RA1] : 32'bz;
	assign RD2 = RWE ? register[RA2] : 32'bz;
	
	always @(posedge clk)
	begin
	 if(RWE)
	  begin
	  register[WA] = WD;
	  end
	end
	initial begin
	 register[5] = 9;
	 register[2] = 17;
	 register[3] = 11;
	end
endmodule
