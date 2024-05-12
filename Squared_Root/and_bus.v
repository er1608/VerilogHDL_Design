module and_bus(out, DataIn, c);
	output [4:0] out;
	input [4:0] DataIn;
	input c;
	and (out[4], DataIn[4], c);
	and (out[3], DataIn[3], c);
	and (out[2], DataIn[2], c);
	and (out[1], DataIn[1], c);
	and (out[0], DataIn[0], c);
endmodule