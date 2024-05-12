`timescale 1ns / 1ps
module Testbench();
reg rst, clk, start; 
reg [4:0] in1, in2;
wire [4:0] out;

Square_Root SQR_tb(
    .In1(in1),
    .clear(rst),
    .clk(clk),
    .In2(in2),
    .start(start),
    .out(out));

parameter clock = 10;
always #(clock) clk=~clk;
initial begin
start = 1'b1;
rst = 1'b1;
in1 = 5'b11101;
in2 = 5'b11100;
clk = 1'b0;
#(clock) 
rst = 1'b0;
end

initial
begin
  operate();
  $finish;
end

task operate;
 begin
  #(clock * 2) 
  in1 = 5'b00000;
  in2 = 5'b00000;
  #(clock * 8) // after 4 cycles
  in1 = 5'b00110;
  in2 = 5'b01000;
  #(clock * 2) 
  in1 = 5'b00000;
  in2 = 5'b00000;
  #(clock * 30);
 end
endtask
endmodule
