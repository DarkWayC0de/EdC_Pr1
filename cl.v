module cl(output wire out , input wire a,b, input wire [1:0] s);
wire c,d,e,f;

	and and1 (c,a,b);
	or or1(d,a,b);
	xor xor1(e,a,b);
	not not1(f,e);

	mux4_1 mux4_11(out,c,d,e,f,s);



endmodule
