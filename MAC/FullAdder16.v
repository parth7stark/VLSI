`include "FullAdder8.v"

module FA16(A,B,Cin,Sum,Cout);
	input [15:0] A,B;
	input Cin;
	output [15:0] Sum;
	output Cout;
	wire C1;
	
	FA8 f1(A[7:0],B[7:0], Cin, Sum[7:0], C1);
	FA8 f2(A[15:8],B[15:8], C1, Sum[15:8], Cout);
	
endmodule