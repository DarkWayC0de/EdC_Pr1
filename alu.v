module alu(output wire [3:0] R, output wire zero, carry, sign,input wire[3:0] A, B,input wire [1:0] ALUOp, input wire arit);

	wire [3:0] OP1,OP2,OP_, cout;
	wire op1_A, op2_B,cpl,cin0;

	mux8_4 mux1(OP1,4'b0000,A,op1_A);
	mux8_4 mux2(OP_,A,B,op2_B);

	compl1 COMPLa1(OP2,OP_,cpl);
	cal cal0(R[0],cout[0],OP2[0],OP1[0],arit,cin0   ,ALUOp);
	cal cal1(R[1],cout[1],OP2[1],OP1[1],arit,cout[0],ALUOp);	
	cal cal2(R[2],cout[2],OP2[2],OP1[2],arit,cout[1],ALUOp);
	cal cal3(R[3],cout[3],OP2[3],OP1[3],arit,cout[2],ALUOp);
	
	assign zero= R?1'b0:1'b1;

	assign sign= arit? R[3]:1'dx;	
	assign carry= arit? cout[3]:1'dx;	
	
	assign cpl=(arit&ALUOp[0])|(arit&ALUOp[1]);
	assign cin0=(ALUOp[0]&arit)|(arit&ALUOp[1]);
	assign op1_A=~ALUOp[1] | (ALUOp[0]&~arit);
	assign op2_B=~ALUOp[1] | (~ALUOp[0]&~arit)| (ALUOp[0]&arit);

endmodule
