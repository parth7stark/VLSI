`include "FullAdder16.v"

module FA36(A,B,Sum,Carry);

	input [35:0] A,B;
	//input Cin;

	output [35:0] Sum;
	output Carry;
	wire C0,C1;
	FA16 f1(A[15:0],B[15:0],1'b0,Sum[15:0],C0);
	FA16 f2(A[31:16],B[31:16],C0,Sum[31:16],C1);
	FA4 f3(A[35:32],B[35:32],C1,Sum[35:32],Carry);
	

endmodule
