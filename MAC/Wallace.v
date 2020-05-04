`include "step1.v"
`include "it1.v"
`include "FullAdder36.v"
module wm(A,B,Sum,Cout);

input [7:0] A,B;	//input ports
output [15:0] Sum;		//output is AxB 
output Cout;

wire [7:0] P1,P2,P3,P4,P5,P6,P7,P8;
step1 s(A,B,P1,P2,P3,P4,P5,P6,P7,P8);

wire [14:0] S;
wire [10:0] C;
it i(P1,P2,P3,P4,P5,P6,P7,P8,S,C);

wire [15:0] a,b;	//inputs to cla
assign a[14:0] = S[14:0];
assign a[15] = 1'b0;

assign b[4:0] = 5'b00000;
assign b[15:5] = C[10:0];

FA16 add(a,b,1'b0,Sum,Cout);


endmodule
