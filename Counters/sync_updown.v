`include "tff.v"
module sync_up(t,clock,reset,q,qb,M);
input t,clock, reset,M;
output [3:0]q,qb;
wire tb,tc,td;

tff T0(t,clock, reset,q[0],qb[0]);
assign tb =  M ^ q[0];		// tb = m xor Qa

tff T1(tb,clock, reset,q[1],qb[1]);
assign tc = (!M & q[0] & q[1]) | (M & !q[0] & !q[1]);

tff T2(tc,clock, reset,q[2],qb[2]);
assign td = (!M & q[0] & q[1] & q[2]) | (M & !q[0] & !q[1] & !q[2]);
tff T3(td,clock, reset,q[3],qb[3]);
endmodule
