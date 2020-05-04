`include "doub.v"

module top;

reg [15:0]a;
reg [15:0]b;
reg cin;
wire [16:0]sum;

double d(a,b,cin,sum);

initial
    begin
    a= {$random}%(2**16-1);
    b= {$random}%(10000);
    cin = 0;
    #5
    a=16'd65535;     b=16'd56;     cin=1'd0;
    #5
    a=16'd0 ; b=16'd0 ; cin=16'b0 ; 
	#5
	a=16'd600 ; 
#5
	b=16'd807 ; 
#5
	a=16'd1025 ; cin=1'd1 ; 
    end

initial
begin
	$monitor($time, " x = %d, y = %d, cin = %d ,sum=%d",a,b,cin,sum);
	$dumpfile("double.vcd");
	$dumpvars;
end

endmodule
