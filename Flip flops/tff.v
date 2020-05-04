module tff(t,clk,reset,q);
input t, clk, reset;
output q;
reg q;

always@(posedge clk or posedge reset)
begin
	if(reset)
 		q <= 1'b0;
	else if(t==1)
		q <= !q;
	else
		q <= q;
end
endmodule
