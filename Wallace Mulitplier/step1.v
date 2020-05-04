module step1(A,B,P1,P2,P3,P4,P5,P6,P7,P8);

	input [7:0] A,B;
	output [7:0] P1,P2,P3,P4,P5,P6,P7,P8;
	
	
	//level1 partial product
	
	assign P1[0] = A[0] & B[0];
	assign P1[1] = A[1] & B[0];
	assign P1[2] = A[2] & B[0];
	assign P1[3] = A[3] & B[0];
	assign P1[4] = A[4] & B[0];
	assign P1[5] = A[5] & B[0];
	assign P1[6] = A[6] & B[0];
	assign P1[7] = A[7] & B[0];
	
	//level2 partial products
	assign P2[0] = A[0] & B[1];
	assign P2[1] = A[1] & B[1];
	assign P2[2] = A[2] & B[1];
	assign P2[3] = A[3] & B[1];
	assign P2[4] = A[4] & B[1];
	assign P2[5] = A[5] & B[1];
	assign P2[6] = A[6] & B[1];
	assign P2[7] = A[7] & B[1];
	
	//level3 partial products
	assign P3[0] = A[0] & B[2];
	assign P3[1] = A[1] & B[2];
	assign P3[2] = A[2] & B[2];
	assign P3[3] = A[3] & B[2];
	assign P3[4] = A[4] & B[2];
	assign P3[5] = A[5] & B[2];
	assign P3[6] = A[6] & B[2];
	assign P3[7] = A[7] & B[2];
	
	//level4 partial products
	assign P4[0] = A[0] & B[3];
	assign P4[1] = A[1] & B[3];
	assign P4[2] = A[2] & B[3];
	assign P4[3] = A[3] & B[3];
	assign P4[4] = A[4] & B[3];
	assign P4[5] = A[5] & B[3];
	assign P4[6] = A[6] & B[3];
	assign P4[7] = A[7] & B[3];
	
	//level5 partial products
	assign P5[0] = A[0] & B[4];
	assign P5[1] = A[1] & B[4];
	assign P5[2] = A[2] & B[4];
	assign P5[3] = A[3] & B[4];
	assign P5[4] = A[4] & B[4];
	assign P5[5] = A[5] & B[4];
	assign P5[6] = A[6] & B[4];
	assign P5[7] = A[7] & B[4];
	
	//level6 partial products
	assign P6[0] = A[0] & B[5];
	assign P6[1] = A[1] & B[5];
	assign P6[2] = A[2] & B[5];
	assign P6[3] = A[3] & B[5];
	assign P6[4] = A[4] & B[5];
	assign P6[5] = A[5] & B[5];
	assign P6[6] = A[6] & B[5];
	assign P6[7] = A[7] & B[5];
	
	//level7 partial products
	assign P7[0] = A[0] & B[6];
	assign P7[1] = A[1] & B[6];
	assign P7[2] = A[2] & B[6];
	assign P7[3] = A[3] & B[6];
	assign P7[4] = A[4] & B[6];
	assign P7[5] = A[5] & B[6];
	assign P7[6] = A[6] & B[6];
	assign P7[7] = A[7] & B[6];
	
	
	//level8 partial products
	assign P8[0] = A[0] & B[7];
	assign P8[1] = A[1] & B[7];
	assign P8[2] = A[2] & B[7];
	assign P8[3] = A[3] & B[7];
	assign P8[4] = A[4] & B[7];
	assign P8[5] = A[5] & B[7];
	assign P8[6] = A[6] & B[7];
	assign P8[7] = A[7] & B[7];
	
endmodule
	
