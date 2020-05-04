`include "sixteenBitAdder.v"

module thirtytwoBitAdder(A,B,Cin,Sum,Cout);
	input [31:0] A,B;
	input Cin;
	output [31:0] Sum;
	output Cout;
	wire C1;
	
	sixteenBitAdder f1(A[15:0],B[15:0], Cin, Sum[15:0], C1);
	sixteenBitAdder f2(A[31:16],B[31:16], C1, Sum[31:16], Cout);
	
endmodule


