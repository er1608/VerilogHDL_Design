module SRAM(WE, RE, clk, RD, Address, WD);
reg [31:0] Sram [10000:0];
input [31:0] WD;
input [31:0] Address;
input WE, RE, clk;
output reg [31:0] RD;

always @ (posedge clk)
begin
 if (RE && !WE)
  begin
   RD = Sram[Address];
  end

 else if (WE && !RE)
  begin
  Sram[Address] = WD;
  RD = 32'bz;
  end
 
 else
  begin
  RD = 32'bz;
  end
end
endmodule
