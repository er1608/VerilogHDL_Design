module register4bits( dataOut, dataIn, enable, clock, clear );
// Inputs and outputs
output [3:0] dataOut;
input [3:0] dataIn;
input enable, clock, clear;
// 4 D-flipflops
edge_dff ff0( dataOut[0], dataIn[0], enable, clock, clear );
edge_dff ff1( dataOut[1], dataIn[1], enable, clock, clear );
edge_dff ff2( dataOut[2], dataIn[2], enable, clock, clear );
edge_dff ff3( dataOut[3], dataIn[3], enable, clock, clear );
endmodule
