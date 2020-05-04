`include "fourbitAdder.v"
module eightBitAdder(A,B,Cin,Sum,Cout);
	input [7:0] A,B;
	input Cin;
	output [7:0] Sum;
	output Cout;
	wire C1;
	
	fourbitAdder f1(A[3:0],B[3:0], Cin, Sum[3:0], C1);
	fourbitAdder f2(A[7:4],B[7:4], C1, Sum[7:4], Cout);
	
endmodule
