`include "FullAdder.v"

module	fourbitAdder(A,B,Cin, sum,carry);
	input [3:0] A,B;
	input Cin;
	output [3:0] sum;
	output carry;
	wire C1,C2,C3;
	
	FullAdder FA_0(A[0],B[0],Cin,sum[0],C1);
	FullAdder FA_1(A[1],B[1],C1, sum[1], C2);
	FullAdder FA_2(A[2],B[2],C2, sum[2], C3);
	FullAdder FA_3(A[3],B[3], C3, sum[3], carry);
	
endmodule
	
	
	
