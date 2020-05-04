module tff(t,clk,reset,q,qb);
input t, clk, reset;
output q,qb;
reg q=0;			//giving initial value in memory instead of x


always@(posedge clk or posedge reset)
begin
	if(reset)
 		q <= 1'b0;
	else if(t==1)
		q <= !q;
	else
		q <= q;
end
 assign qb = !q;
endmodule
