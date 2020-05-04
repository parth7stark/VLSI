`include "thirtytwoBitAdder.v"

module sixtyfourBitAdder(A,B,Cin,Sum,Cout);
	input [63:0] A,B;
	input Cin;
	output [63:0] Sum;
	output Cout;
	wire C1;
	
	thirtytwoBitAdder f1(A[31:0],B[31:0], Cin, Sum[31:0], C1);
	thirtytwoBitAdder f2(A[63:32],B[63:32], C1, Sum[63:32], Cout);
	
endmodule


