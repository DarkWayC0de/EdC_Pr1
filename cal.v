module cal(output wire out, c_out, input wire a, b,arit,c_in, input wire [1:0] s);

wire e,f;
mux2_1 mux2_11(out,e,f,arit);
fa fa1(c_out,f,a,b,c_in);
cl cl1(e,a,b,s);

endmodule
