module adder1 (s, cout, a, b, cin); 
	output s, cout; 
	input a, b, cin; 
	wire t1, t2, t3;
	xor (t1, a, b); 
	xor (s, t1, cin); 
	and (t2, t1, cin);
	and (t3, a, b); 
	or (cout, t2, t3); 
endmodule