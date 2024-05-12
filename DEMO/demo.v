module demo (clk, D, out);
    input clk, D;
    output out;
    
reg out;
always@ (posedge clk) out <= D;
endmodule

