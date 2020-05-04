`include "FullAdder4.v"

module FA8(A,B,Cin,Sum,Carry);

	input [7:0] A,B;
	input Cin;
	output [7:0] Sum;
	output Carry;
	wire C1;
	
	FA4 f1(A[3:0],B[3:0], Cin, Sum[3:0], C1);
	FA4 f2(A[7:4],B[7:4], C1, Sum[7:4], Carry);
	
endmodule
	

