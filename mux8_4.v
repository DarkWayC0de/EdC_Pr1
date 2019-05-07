module mux8_4(output wire [3:0] out, input wire [3:0] a, b, input wire s);

	assign out = s ? b : a; //oper. condicional de C, sintaxis [condicion ? valor_si_cierta : valor_si_falsa] 

endmodule
