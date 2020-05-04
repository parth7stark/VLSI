`include "HalfAdder.v"
`include "FA.v"
//`include "step1.v"

module it(P1,P2,P3,P4,P5,P6,P7,P8,S,C);
	
	input [7:0] P1,P2,P3,P4,P5,P6,P7,P8;
	
	output [14:0] S;
	output [10:0] C;	//output is final sum and carry after 4th iteration
		
	wire [9:0] S1,S2;	
	wire [7:0] C1,C2;	//iteration1 wires
	
	//iteration1	gives s1,c1,s2,c2
	
	//take first 3rows
	assign S1[0] = P1[0]; //simple forward;
	
	HA h1(P1[1],P2[0],S1[1],C1[0]);
	
	FA f1(P1[2],P2[1],P3[0],S1[2],C1[1]);
	FA f2(P1[3],P2[2],P3[1],S1[3],C1[2]);
	FA f3(P1[4],P2[3],P3[2],S1[4],C1[3]);
	FA f4(P1[5],P2[4],P3[3],S1[5],C1[4]);
	FA f5(P1[6],P2[5],P3[4],S1[6],C1[5]);
	FA f6(P1[7],P2[6],P3[5],S1[7],C1[6]);
	
	HA h2(P2[7],P3[6],S1[8],C1[7]);
	
	assign S1[9] = P3[7];
	
	//take next 3 rows (P4,P5,P6) and give 2 rows (S2,C2)
	assign S2[0] = P4[0]; //simple forward;
	
	HA i1h1(P4[1],P5[0],S2[1],C2[0]);
	
	FA i1f1(P4[2],P5[1],P6[0],S2[2],C2[1]);
	FA i1f2(P4[3],P5[2],P6[1],S2[3],C2[2]);
	FA i1f3(P4[4],P5[3],P6[2],S2[4],C2[3]);
	FA i1f4(P4[5],P5[4],P6[3],S2[5],C2[4]);
	FA i1f5(P4[6],P5[5],P6[4],S2[6],C2[5]);
	FA i1f6(P4[7],P5[6],P6[5],S2[7],C2[6]);
	
	HA i1h2(P5[7],P6[6],S2[8],C2[7]);
	
	assign S2[9] = P6[7];
	
	//iteration 2
	//take S1,c1,s2 to give s3,c3
	wire [10:0] S3;
	wire [9:0] C3;
	
	assign S3[0] = S1[0];
	assign S3[1] = S1[1];
	
	HA i2h1(S1[2],C1[0],S3[2],C3[0]);
	
	FA i2f1(S1[3],C1[1],S2[0],S3[3],C3[1]);
	FA i2f2(S1[4],C1[2],S2[1],S3[4],C3[2]);
	FA i2f3(S1[5],C1[3],S2[2],S3[5],C3[3]);
	FA i2f4(S1[6],C1[4],S2[3],S3[6],C3[4]);
	FA i2f5(S1[7],C1[5],S2[4],S3[7],C3[5]);
	FA i2f6(S1[8],C1[6],S2[5],S3[8],C3[6]);
	FA i2f7(S1[9],C1[7],S2[6],S3[9],C3[7]);
	
	assign S3[10] = S2[7];
	assign C3[8] = S2[8];
	assign C3[9] = S2[9];
	
	//take c2,p7,p8 to give s4,c4
	wire [9:0] S4;
	wire [7:0] C4;
	assign S4[0] = C2[0]; //simple forward;
	
	HA it2h1(C2[1],P7[0],S4[1],C4[0]);
	
	FA it2f1(C2[2],P7[1],P8[0],S4[2],C4[1]);
	FA it2f2(C2[3],P7[2],P8[1],S4[3],C4[2]);
	FA it2f3(C2[4],P7[3],P8[2],S4[4],C4[3]);
	FA it2f4(C2[5],P7[4],P8[3],S4[5],C4[4]);
	FA it2f5(C2[6],P7[5],P8[4],S4[6],C4[5]);
	FA it2f6(C2[7],P7[6],P8[5],S4[7],C4[6]);
	
	HA it2h2(P7[7],P8[6],S4[8],C4[7]);
	
	assign S4[9] = P8[7];
	
	//iteration 3
	//take s3,c3,s4 and give s5,c5
	
	wire [13:0] S5;
	wire [10:0] C5;
	
	assign S5[0] = S3[0];
	assign S5[1] = S3[1];
	assign S5[2] = S3[2];
	
	HA i3h1(S3[3],C3[0],S5[3],C5[0]);
	HA i3h2(S3[4],C3[1],S5[4],C5[1]);
	
	FA i3f1(S3[5],C3[2],S4[0],S5[5],C5[2]);
	FA i3f2(S3[6],C3[3],S4[1],S5[6],C5[3]);
	FA i3f3(S3[7],C3[4],S4[2],S5[7],C5[4]);
	FA i3f4(S3[8],C3[5],S4[3],S5[8],C5[5]);
	FA i3f5(S3[9],C3[6],S4[4],S5[9],C5[6]);
	FA i3f6(S3[10],C3[7],S4[5],S5[10],C5[7]);
	
	HA i3h3(C3[8],S4[6],S5[11],C5[8]);
	HA i3h4(C3[9],S4[7],S5[12],C5[9]);
	
	assign S5[13] = S4[8];
	assign C5[10] = S4[9];
	
	//iteration4
	
	//take S5,C5,C4 give final sum,S and carry,C
	assign S[0] = S5[0];
	assign S[1] = S5[1];
	assign S[2] = S5[2];
	assign S[3] = S5[3];
	
	HA i4h1(S5[4],C5[0],S[4],C[0]);
	HA i4h2(S5[5],C5[1],S[5],C[1]);
	HA i4h3(S5[6],C5[2],S[6],C[2]);

	FA i4f1(S5[7],C5[3],C4[0],S[7],C[3]);
	FA i4f2(S5[8],C5[4],C4[1],S[8],C[4]);
	FA i4f3(S5[9],C5[5],C4[2],S[9],C[5]);
	FA i4f4(S5[10],C5[6],C4[3],S[10],C[6]);
	FA i4f5(S5[11],C5[7],C4[4],S[11],C[7]);
	FA i4f6(S5[12],C5[8],C4[5],S[12],C[8]);
	FA i4f7(S5[13],C5[9],C4[6],S[13],C[9]);
	
	HA i4h4(C5[10],C4[7],S[14],C[10]);
	
	
	
	
endmodule
	
