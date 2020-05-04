`include "eightBitAdder.v"

module top;
	reg[7:0] A,B;
	reg Cin;
	wire[7:0] sum;
	wire Cout;
	
	eightBitAdder F0(A,B,Cin,sum,Cout);
	
	initial 
	begin
		
		A= {$random}%(2**8-1);
		B= {$random}%(100);
		Cin =0;
		#10
		A = 8'b00000000 ; B = 8'b00000000; Cin = 0;
		
		#10 A = 8'b00000011; B = 8'b01000000;
		#10 A = 8'b01100011; B = 8'b00110010; Cin = 1;
		#10 A = 8'b11111111; B = 8'b11111111;
	end
	
	
	
	initial
	begin
		$monitor($time, " A = %d, B = %d, Cin = %d, Sum = %d, ca = %d",A,B,Cin,sum, Cout);
		$dumpfile("8BitAdder.vcd");
		$dumpvars;
	end

endmodule	
