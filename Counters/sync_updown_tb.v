`include "sync_updown.v"

module sync_updown_tb;
reg t,clk, reset,M;
wire [3:0] q,qb;

initial
	begin
$dumpfile("sync_updown_tb.vcd");
$dumpvars(0,sync_updown_tb);
end

sync_up t1(t, clk , reset, q,qb,M);


initial
begin
reset=0;
clk =0;
t=1;
M = 0;	//up counting
#170 M=1;		//down counting
end

always 
#5  clk =  ! clk; 

/*
initial
begin
#5 reset =1'b0;
d=0;
#5 d = 1'b1;

end
*/

always@(posedge clk)
	begin
 		$display($time, " M = %b, clk=%b, rst=%b,q=%d\n", M, clk, reset, q);
	end 

initial

	#400 $finish;
endmodule
