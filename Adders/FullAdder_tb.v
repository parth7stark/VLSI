`include "FullAdder.v"

module top;

reg a, b, c;
wire sum, ca;

	FullAdder FA_0(a,b,c,sum,ca);

initial
begin

	
	a=0; b=0; c=0;
	#10 b=0;
	#10 a=1; c=1;
	#10 b=1; c=1;
end

initial
begin
	$monitor($time, " a = %b, b = %b, c = %b, Sum = %b, ca = %b",a,b,c,sum, ca);
	$dumpfile("FullAdder.vcd");
	$dumpvars;
end

endmodule
