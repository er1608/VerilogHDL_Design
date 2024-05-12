`timescale 1 ps/1 ps
module top
  (
  );

parameter CLK_CYC = 50;

//Create clock system
reg clk;
initial
  begin
    clk = 1;
  end
always #(CLK_CYC/2) clk = ~clk;

//instantial module
demo demo_ins (
  .clk (clk),
  .D(1'b1),
  .out()
  );
  
endmodule
