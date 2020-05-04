`include "DFF.v"
`include "mux_4_1.v"
module USR(O,I,clk,reset,s,SINR,SINL);
wire [3:0] w;
input [3:0] I;
input [1:0] s;
input clk;
input reset,SINR,SINL;
output [3:0] O;

	mux_4_1 m1(w[0],s[1],s[0],I[0],SINL,O[1],O[0]);
	mux_4_1 m2(w[1],s[1],s[0],I[1],O[0],O[2],O[1]);
	mux_4_1 m3(w[2],s[1],s[0],I[2],O[1],O[3],O[2]);
	mux_4_1 m4(w[3],s[1],s[0],I[3],O[2],SINR,O[3]);
	
	D_FF d1(O[0],w[0],clk,reset);
	D_FF d2(O[1],w[1],clk,reset);
	D_FF d3(O[2],w[2],clk,reset);
	D_FF d4(O[3],w[3],clk,reset);
	
endmodule
