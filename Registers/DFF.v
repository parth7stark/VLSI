module D_FF(q,d,clk,reset);
output reg q;
input d,clk,reset;

always@(posedge clk)
begin
	if(reset==1'b1)
		q<=1'b0;
	
	else
		q<=d;
end	

endmodule	
