`include "fourbitAdder.v"
module top;
	reg[3:0] A,B;
	reg Cin;
	wire[3:0] sum;
	wire Cout;
	
	fourbitAdder F0(A,B,Cin,sum,Cout);
	
	initial 
	begin
		
		A= {$random}%(2**4-1);
		B= {$random}%(10);
		Cin =0;
		#10
		A = 4'b0000 ; B = 4'b0000; Cin = 0;
		
		#10 A = 4'b0011; B = 4'b0100;
		#10 A = 4'b1011; B = 4'b1101; Cin = 1;
		#10 A = 4'b1111; B = 4'b1111;
	end
	
	
	
	initial
	begin
		$monitor($time, " A = %d, B = %d, Cin = %d, Sum = %d, ca = %d",A,B,Cin,sum, Cout);
		$dumpfile("4BitAdder.vcd");
		$dumpvars;
	end

endmodule	
