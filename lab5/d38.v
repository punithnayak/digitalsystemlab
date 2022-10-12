`include "d24.v"

module decoder3to8(input [2:0]W, output [7:0]Y);

decoder2to4 d1(W[1:0], ~W[2], Y[3:0]);
decoder2to4 d2(W[1:0], W[2], Y[7:4]);

endmodule
