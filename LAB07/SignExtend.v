module SignExtend(a, result);
input [15:0] a;
output [31:0] result;

assign result = {{16{a[15]}}, a};
endmodule
