module double(
    input [15:0]A,
    input [15:0]B,
    input cin,
    output [16:0]sum
    );
    wire [16:0]a0,b0;
    wire [16:0]a1,b1;
    wire [16:0]a2,b2;
    wire [16:0]a3,b3;
    wire [16:0]a4,b4;
    wire [16:0]a5,b5;

    //level 0
    assign a0[0]= cin;
    assign b0[0]= cin;
    assign a0[1]= A[0]&B[0];
    assign b0[1]= A[0]|B[0];
    assign a0[2]= A[1]&B[1];
    assign b0[2]= A[1]|B[1];
    assign a0[3]= A[2]&B[2];
    assign b0[3]= A[2]|B[2];
    assign a0[4]= A[3]&B[3];
    assign b0[4]= A[3]|B[3];
    assign a0[5]= A[4]&B[4];
    assign b0[5]= A[4]|B[4];
    assign a0[6]= A[5]&B[5];
    assign b0[6]= A[5]|B[5];
    assign a0[7]= A[6]&B[6];
    assign b0[7]= A[6]|B[6];
    assign a0[8]= A[7]&B[7];
    assign b0[8]= A[7]|B[7];
    assign a0[9]= A[8]&B[8];
    assign b0[9]= A[8]|B[8];
    assign a0[10]= A[9]&B[9];
    assign b0[10]= A[9]|B[9];
    assign a0[11]= A[10]&B[10];
    assign b0[11]= A[10]|B[10];
    assign a0[12]= A[11]&B[11];
    assign b0[12]= A[11]|B[11];
    assign a0[13]= A[12]&B[12];
    assign b0[13]= A[12]|B[12];
    assign a0[14]= A[13]&B[13];
    assign b0[14]= A[13]|B[13];
    assign a0[15]= A[14]&B[14];
    assign b0[15]= A[14]|B[14];
    assign a0[16]= A[15]&B[15];
    assign b0[16]= A[15]|B[15];

    //level 1
    //y1=wx+yx;
    //y0=wx+zx;
    assign a1[0]= a0[0];
    assign b1[0]= b0[0];
    assign a1[1]= (a0[1]&b0[1]) | (a0[0]&b0[1]);
    assign b1[1]= (a0[1]&b0[1]) | (b0[0]&b0[1]);
    assign a1[2]= (a0[2]&b0[2]) | (a0[1]&b0[2]);
    assign b1[2]= (a0[2]&b0[2]) | (b0[1]&b0[2]);
    assign a1[3]= (a0[3]&b0[3]) | (a0[2]&b0[3]);
    assign b1[3]= (a0[3]&b0[3]) | (b0[2]&b0[3]);
    assign a1[4]= (a0[4]&b0[4]) | (a0[3]&b0[4]);
    assign b1[4]= (a0[4]&b0[4]) | (b0[3]&b0[4]);
    assign a1[5]= (a0[5]&b0[5]) | (a0[4]&b0[5]);
    assign b1[5]= (a0[5]&b0[5]) | (b0[4]&b0[5]);
    assign a1[6]= (a0[6]&b0[6]) | (a0[5]&b0[6]);
    assign b1[6]= (a0[6]&b0[6]) | (b0[5]&b0[6]);
    assign a1[7]= (a0[7]&b0[7]) | (a0[6]&b0[7]);
    assign b1[7]= (a0[7]&b0[7]) | (b0[6]&b0[7]);
    assign a1[8]= (a0[8]&b0[8]) | (a0[7]&b0[8]);
    assign b1[8]= (a0[8]&b0[8]) | (b0[7]&b0[8]);
    assign a1[9]= (a0[9]&b0[9]) | (a0[8]&b0[9]);
    assign b1[9]= (a0[9]&b0[9]) | (b0[8]&b0[9]);
    assign a1[10]= (a0[10]&b0[10]) | (a0[9]&b0[10]);
    assign b1[10]= (a0[10]&b0[10]) | (b0[9]&b0[10]);
    assign a1[11]= (a0[11]&b0[11]) | (a0[10]&b0[11]);
    assign b1[11]= (a0[11]&b0[11]) | (b0[10]&b0[11]);
    assign a1[12]= (a0[12]&b0[12]) | (a0[11]&b0[12]);
    assign b1[12]= (a0[12]&b0[12]) | (b0[11]&b0[12]);
    assign a1[13]= (a0[13]&b0[13]) | (a0[12]&b0[13]);
    assign b1[13]= (a0[13]&b0[13]) | (b0[12]&b0[13]);
    assign a1[14]= (a0[14]&b0[14]) | (a0[13]&b0[14]);
    assign b1[14]= (a0[14]&b0[14]) | (b0[13]&b0[14]);
    assign a1[15]= (a0[15]&b0[15]) | (a0[14]&b0[15]);
    assign b1[15]= (a0[15]&b0[15]) | (b0[14]&b0[15]);
    assign a1[16]= (a0[16]&b0[16]) | (a0[15]&b0[16]);
    assign b1[16]= (a0[16]&b0[16]) | (b0[15]&b0[16]);
    
    //2-2
    assign a2[0]= a1[0];
    assign b2[0]= b1[0];
    assign a2[1]= a1[1];
    assign b2[1]= b1[1];
    assign a2[2]= (a1[2]&b1[2]) | (a1[0]&b1[2]);
    assign b2[2]= (a1[2]&b1[2]) | (b1[0]&b1[2]);
    assign a2[3]= (a1[3]&b1[3]) | (a1[1]&b1[3]);
    assign b2[3]= (a1[3]&b1[3]) | (b1[1]&b1[3]);
    assign a2[4]= (a1[4]&b1[4]) | (a1[2]&b1[4]);
    assign b2[4]= (a1[4]&b1[4]) | (b1[2]&b1[4]);
    assign a2[5]= (a1[5]&b1[5]) | (a1[3]&b1[5]);
    assign b2[5]= (a1[5]&b1[5]) | (b1[3]&b1[5]);
    assign a2[6]= (a1[6]&b1[6]) | (a1[4]&b1[6]);
    assign b2[6]= (a1[6]&b1[6]) | (b1[4]&b1[6]);
    assign a2[7]= (a1[7]&b1[7]) | (a1[5]&b1[7]);
    assign b2[7]= (a1[7]&b1[7]) | (b1[5]&b1[7]);
    assign a2[8]= (a1[8]&b1[8]) | (a1[6]&b1[8]);
    assign b2[8]= (a1[8]&b1[8]) | (b1[6]&b1[8]);
    assign a2[9]= (a1[9]&b1[9]) | (a1[7]&b1[9]);
    assign b2[9]= (a1[9]&b1[9]) | (b1[7]&b1[9]);
    assign a2[10]= (a1[10]&b1[10]) | (a1[8]&b1[10]);
    assign b2[10]= (a1[10]&b1[10]) | (b1[8]&b1[10]);
    assign a2[11]= (a1[11]&b1[11]) | (a1[9]&b1[11]);
    assign b2[11]= (a1[11]&b1[11]) | (b1[9]&b1[11]);
    assign a2[12]= (a1[12]&b1[12]) | (a1[10]&b1[12]);
    assign b2[12]= (a1[12]&b1[12]) | (b1[10]&b1[12]);
    assign a2[13]= (a1[13]&b1[13]) | (a1[11]&b1[13]);
    assign b2[13]= (a1[13]&b1[13]) | (b1[11]&b1[13]);
    assign a2[14]= (a1[14]&b1[14]) | (a1[12]&b1[14]);
    assign b2[14]= (a1[14]&b1[14]) | (b1[12]&b1[14]);
    assign a2[15]= (a1[15]&b1[15]) | (a1[13]&b1[15]);
    assign b2[15]= (a1[15]&b1[15]) | (b1[13]&b1[15]);
    assign a2[16]= (a1[16]&b1[16]) | (a1[14]&b1[16]);
    assign b2[16]= (a1[16]&b1[16]) | (b1[14]&b1[16]);
    //4-4
    assign a3[0]= a2[0];
    assign b3[0]= b2[0];
    assign a3[1]= a2[1];
    assign b3[1]= b2[1];
    assign a3[2]= a2[2];
    assign b3[2]= b2[2];
    assign a3[3]= a2[3];
    assign b3[3]= b2[3];
    assign a3[4]= (a2[4]&b2[4]) | (a2[0]&b2[4]);
    assign b3[4]= (a2[4]&b2[4]) | (b2[0]&b2[4]);
    assign a3[5]= (a2[5]&b2[5]) | (a2[1]&b2[5]);
    assign b3[5]= (a2[5]&b2[5]) | (b2[1]&b2[5]);
    assign a3[6]= (a2[6]&b2[6]) | (a2[2]&b2[6]);
    assign b3[6]= (a2[6]&b2[6]) | (b2[2]&b2[6]);
    assign a3[7]= (a2[7]&b2[7]) | (a2[3]&b2[7]);
    assign b3[7]= (a2[7]&b2[7]) | (b2[3]&b2[7]);
    assign a3[8]= (a2[8]&b2[8]) | (a2[4]&b2[8]);
    assign b3[8]= (a2[8]&b2[8]) | (b2[4]&b2[8]);
    assign a3[9]= (a2[9]&b2[9]) | (a2[5]&b2[9]);
    assign b3[9]= (a2[9]&b2[9]) | (b2[5]&b2[9]);
    assign a3[10]= (a2[10]&b2[10]) | (a2[8]&b2[10]);
    assign b3[10]= (a2[10]&b2[10]) | (b2[8]&b2[10]);
    assign a3[11]= (a2[11]&b2[11]) | (a2[9]&b2[11]);
    assign b3[11]= (a2[11]&b2[11]) | (b2[9]&b2[11]);
    assign a3[12]= (a2[12]&b2[12]) | (a2[10]&b2[12]);
    assign b3[12]= (a2[12]&b2[12]) | (b2[10]&b2[12]);
    assign a3[13]= (a2[13]&b2[13]) | (a2[11]&b2[13]);
    assign b3[13]= (a2[13]&b2[13]) | (b2[11]&b2[13]);
    assign a3[14]= (a2[14]&b2[14]) | (a2[12]&b2[14]);
    assign b3[14]= (a2[14]&b2[14]) | (b2[12]&b2[14]);
    assign a3[15]= (a2[15]&b2[15]) | (a2[13]&b2[15]);
    assign b3[15]= (a2[15]&b2[15]) | (b2[13]&b2[15]);
    assign a3[16]= (a2[16]&b2[16]) | (a2[14]&b2[16]);
    assign b3[16]= (a2[16]&b2[16]) | (b2[14]&b2[16]);
    //8-8
    assign a4[0]= a3[0];
    assign b4[0]= b3[0];
    assign a4[1]= a3[1];
    assign b4[1]= b3[1];
    assign a4[2]= a3[2];
    assign b4[2]= b3[2];
    assign a4[3]= a3[3];
    assign b4[3]= b3[3];
    assign a4[4]= a3[4];
    assign b4[4]= b3[4];
    assign a4[5]= a3[5];
    assign b4[5]= b3[5];
    assign a4[6]= a3[6];
    assign b4[6]= b3[6];
    assign a4[7]= a3[7];
    assign b4[7]= b3[7];
    assign a4[8]= (a3[8]&b3[8]) | (a3[0]&b3[8]);
    assign b4[8]= (a3[8]&b3[8]) | (b3[0]&b3[8]);
    assign a4[9]= (a3[9]&b3[9]) | (a3[1]&b3[9]);
    assign b4[9]= (a3[9]&b3[9]) | (b3[1]&b3[9]);
    assign a4[10]= (a3[10]&b3[10]) | (a3[2]&b3[10]);
    assign b4[10]= (a3[10]&b3[10]) | (b3[2]&b3[10]);
    assign a4[11]= (a3[11]&b3[11]) | (a3[3]&b3[11]);
    assign b4[11]= (a3[11]&b3[11]) | (b3[3]&b3[11]);
    assign a4[12]= (a3[12]&b3[12]) | (a3[4]&b3[12]);
    assign b4[12]= (a3[12]&b3[12]) | (b3[4]&b3[12]);
    assign a4[13]= (a3[13]&b3[13]) | (a3[5]&b3[13]);
    assign b4[13]= (a3[13]&b3[13]) | (b3[5]&b3[13]);
    assign a4[14]= (a3[14]&b3[14]) | (a3[6]&b3[14]);
    assign b4[14]= (a3[14]&b3[14]) | (b3[6]&b3[14]);
    assign a4[15]= (a3[15]&b3[15]) | (a3[7]&b3[15]);
    assign b4[15]= (a3[15]&b3[15]) | (b3[7]&b3[15]);
    assign a4[16]= (a3[16]&b3[16]) | (a3[8]&b3[16]);
    assign b4[16]= (a3[16]&b3[16]) | (b3[8]&b3[16]);
    //16-16
    assign a5[0]= a4[0];
    assign b5[0]= b4[0];
    assign a5[1]= a4[1];
    assign b5[1]= b4[1];
    assign a5[2]= a4[2];
    assign b5[2]= b4[2];
    assign a5[3]= a4[3];
    assign b5[3]= b4[3];
    assign a5[4]= a4[4];
    assign b5[4]= b4[4];
    assign a5[5]= a4[5];
    assign b5[5]= b4[5];
    assign a5[6]= a4[6];
    assign b5[6]= b4[6];
    assign a5[7]= a4[7];
    assign b5[7]= b4[7];
    assign a5[8]= a4[8];
    assign b5[8]= b4[8];
    assign a5[9]= a4[9];
    assign b5[9]= b4[9];
    assign a5[10]= a4[10];
    assign b5[10]= b4[10];
    assign a5[11]= a4[11];
    assign b5[11]= b4[11];
    assign a5[12]= a4[12];
    assign b5[12]= b4[12];
    assign a5[13]= a4[13];
    assign b5[13]= b4[13];
    assign a5[14]= a4[14];
    assign b5[14]= b4[14];
    assign a5[15]= a4[15];
    assign b5[15]= b4[15];
    assign a5[16]= (a4[16]&b4[16]) | (a4[0]&b4[16]);
    assign b5[16]= (a4[16]&b4[16]) | (b4[0]&b4[16]);



    assign sum[0] = A[0]^B[0]^(a5[0]&b5[0]);
    assign sum[1] = A[1]^B[1]^(a5[1]&b5[1]);
    assign sum[2] = A[2]^B[2]^(a5[2]&b5[2]);
    assign sum[3] = A[3]^B[3]^(a5[3]&b5[3]);
    assign sum[4] = A[4]^B[4]^(a5[4]&b5[4]);
    assign sum[5] = A[5]^B[5]^(a5[5]&b5[5]);
    assign sum[6] = A[6]^B[6]^(a5[6]&b5[6]);
    assign sum[7] = A[7]^B[7]^(a5[7]&b5[7]);
    assign sum[8] = A[8]^B[8]^(a5[8]&b5[8]);
    assign sum[9] = A[9]^B[9]^(a5[9]&b5[9]);
    assign sum[10] = A[10]^B[10]^(a5[10]&b5[10]);
    assign sum[11] = A[11]^B[11]^(a5[11]&b5[11]);
    assign sum[12] = A[12]^B[12]^(a5[12]&b5[12]);
    assign sum[13] = A[13]^B[13]^(a5[13]&b5[13]);
    assign sum[14] = A[14]^B[14]^(a5[14]&b5[14]);
    assign sum[15] = A[15]^B[15]^(a5[15]&b5[15]);
    assign sum[16] = (a5[16]&b5[16]);
   
endmodule

