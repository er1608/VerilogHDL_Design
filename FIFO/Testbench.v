`timescale 1ns / 1ps
module Testbench();
reg en,rw,rst,clk; 
reg [3:0] in;
wire [3:0] out;
wire Empty,Full;

FIFO fifo_tb(
    .RW(rw),
    .clear(rst),
    .clk(clk),
    .En(en),
    .I(in),
    .O(out),
    .Empty(Empty),
    .Full(Full));

parameter clock = 10;
always #(clock) clk=~clk;
initial begin
rw = 1'b1;
rst = 1'b1;
en = 1'b1;
in = 4'b0000;
clk = 1'b1;
#(clock) 
rst = 1'b0;
end

initial
begin
  operate();
  $finish;
end

task operate;
  integer i; // Declare loop variable i
  begin
    for (i = 0; i < 4; i = i + 1)
    begin
      #(2 * clock) rw = 1'b1;
      in = in + 4'b0001;
    end
    rw = 1'b0;
    for (i = 0; i < 4; i = i + 1)
    begin
      #(2 * clock);
    end

    for (i = 0; i < 4; i = i + 1)
    begin
      #(2 * clock) rw = 1'b1;
      in = in + 4'b0001;
    end
    rw = 1'b0;
    for (i = 0; i < 4; i = i + 1)
    begin
      #(2 * clock);
    end
  end
endtask
endmodule
