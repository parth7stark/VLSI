`include "eightBitAdder.v"

module sixteenBitAdder(A,B,Cin,Sum,Cout);
	input [15:0] A,B;
	input Cin;
	output [15:0] Sum;
	output Cout;
	wire C1;
	
	eightBitAdder f1(A[7:0],B[7:0], Cin, Sum[7:0], C1);
	eightBitAdder f2(A[15:8],B[15:8], C1, Sum[15:8], Cout);
	
endmodule


