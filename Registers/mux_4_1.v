module mux_4_1(y,s1,s0,i3,i2,i1,i0);

output reg y;
input i3,i2,i1,i0;
input s1,s0;

always@(s1,s0,i3,i2,i1,i0)
begin
	if(s0==0 & s1==0)
		y = i0;
		
	else if(s0==0 & s1==1)
		y = i1;
		
	if(s0==1 & s1==0)
		y = i2;
		
	if(s0==1 & s1==1)
		y = i3;
end

endmodule		
