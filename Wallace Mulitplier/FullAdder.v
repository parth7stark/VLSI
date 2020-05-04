module FullAdder(A,B,C,sum, carry);
	input A,B,C;
	output sum,carry;
	
	assign sum = A^B^C;
	assign carry = (A&B) | (B&C) | (C&A);
	
endmodule
	
