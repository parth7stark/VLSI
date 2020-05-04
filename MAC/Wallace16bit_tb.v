`include "Wallace16bit.v"
module top1;

    reg [15:0] A, B;

    wire [31:0] out;

   Wallace16bit w(A, B, out);

    initial begin
        A = 16'd1024 ; B = 16'd65535;
        #10 A = 16'd255 ; B = 16'd255;
        #10  A = 16'd40088 ; B = 16'd65535;
    end
      
    initial
        $monitor($time," A: %d, B: %d -> Output: %d",A,B,out);

endmodule