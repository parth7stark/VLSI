`include "Wallace.v"

module top;
	reg[7:0] A,B;
	//reg Cin;
	wire[15:0] sum;
	wire Cout;
	
	wm F0(A,B,sum,Cout);
	
	initial 
	begin
		A = 8'b11010011 ; B = 8'b11001110;
		
		#10
		A = {$random}%(2**8-1);	B= {$random}%(10000);
		
    	#10
    	A = 2**8-1 ; B = 2**8-1;
		
		
	end
	
	
	
	initial
	begin
		$monitor($time, " A = %d, B = %d, Result = %d",A,B,sum);
		$dumpfile("Wallace_tb.vcd");
		$dumpvars;
	end

endmodule	
