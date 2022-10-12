`include "decoder3to8.v"

module decoder4to16(input [4:0]W, output [16:0]Y);

decoder3to8 d1(W[1:0], ~W[2], Y[3:0]);
decoder3to8 d2(W[1:0], W[2], Y[7:4]);

endmodule
