`include "thirtytwoBitAdder.v"

module top;
	reg[31:0] A,B;
	reg Cin;
	wire[31:0] sum;
	wire Cout;
	
	thirtytwoBitAdder F0(A,B,Cin,sum,Cout);
	
	initial 
	begin
	
		A= {$random}%(2**32-1);
		B= {$random}%(1000);
		Cin = 0;
		
		#10
		A = 32'b00000000000000000000000000000000 ; B = 32'b00000000000000000000000000000000; Cin = 0;
		
		#10 A = 32'b00110000000000000000000000000000; B = 32'b01000000000000000000000000000000;
		#10 A = 32'b01111010000101000000000000000000; B = 32'b01100110000001100000000000000000; Cin = 1;
		#10 A = 32'b11111111111111111111111111111111; B = 32'b11111111111111111111111111111111;
	end
	
	
	
	initial
	begin
		$monitor($time, " A = %d, B = %d, Cin = %d, Sum = %d, ca = %d",A,B,Cin,sum, Cout);
		$dumpfile("32BitAdder.vcd");
		$dumpvars;
	end

endmodule	
