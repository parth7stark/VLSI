`include "MAC.v"

module top;

	reg [15:0] A,B;
	reg clk,reset;

	wire [35:0] out;

	MAC m(A,B,out,clk,reset);

	initial
	begin
		reset=1;
		clk = 0;
		A =($random)%65535; 
		B =($random)%65535; 
		
	end

	always 
	#5  clk =  !clk; 


	always begin
		
		 #10 A =($random)%65535;  B =($random)%65535; 	
		 reset =0;
		// A = 16'd0; B = 16'd0;
		// #10 reset=0;
		// #10 A = 16'd12; B=16'd20; 
		// #10 A = 16'd11; B=16'd5;
		// #10 A = 16'd0; B=16'd0;
	end

	initial begin
		$monitor($time,"  clk=%d \t reset=%d \t A =%d \t B =%d \t ANS = %d",clk,reset,A,B,out);
		#100 $finish;
	end


endmodule