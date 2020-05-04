`include "USR.v"

module USR_tb;

//inputs

reg [3:0] I;
reg [1:0] s;
reg clk;
reg reset,SINR,SINL;

//outputs
wire [3:0] O;

initial
	begin
$dumpfile("USR_tb.vcd");
$dumpvars(0,USR_tb);
end

USR u(O,I,clk,reset,s,SINR,SINL);

initial
begin
reset=0;
clk =0;
//Din_left=1;	//Din = 1;
//SINR=1;
SINL =1;

s[1] = 0;	//shift left by 1
s[0] = 1;

#50
SINR =0;	  //shift right with zero
s[1] = 1;
s[0] = 0;

#50
s[1] = 1;		//parallel loading
s[0] = 1;
I = 4'b1111;

#50
s[1] = 0;		//no change
s[0] = 0;

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
 		$display($time, " S1 = %b, S0 = %b,  clk=%b, rst=%b, O=%b\n", s[1],s[0], clk, reset, O);
	end 

initial

	#200 $finish;
endmodule
