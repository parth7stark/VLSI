`include "sixteenBitAdder.v"

module top;
	reg[15:0] A,B;
	reg Cin;
	wire[15:0] sum;
	wire Cout;
	
	sixteenBitAdder F0(A,B,Cin,sum,Cout);
	
	initial 
	begin
		
		A= {$random}%(2**16-1);
		B= {$random}%(10000);
		Cin =0;
		#10
		A = 16'b0000000000000000 ; B = 16'b0000000000000000; Cin = 0;
		
		#10 A = 16'b0110000000000000; B = 16'b0100000000000000;
		#10 A = 16'b0110000000101100; B = 16'b0110001110011100; Cin = 1;
		#10 A = 16'b1111111111111111; B = 16'b1111111111111111;
	end
	
	
	
	initial
	begin
		$monitor($time, " A = %d, B = %d, Cin = %d, Sum = %d, ca = %d",A,B,Cin,sum, Cout);
		$dumpfile("16BitAdder.vcd");
		$dumpvars;
	end

endmodule	
