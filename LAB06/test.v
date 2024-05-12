module test(input [3:0] A, B, input Cin, output reg [3:0] Sum, output reg Cout);

    always @(A or B or Cin) begin
        {Cout, Sum} = A + B + Cin;
    end

endmodule
