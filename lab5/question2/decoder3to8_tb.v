`timescale 1ns/1ns
`include "decoder3to8.v"
module decoder3to8_tb();

reg [2:0]W;
reg En;
wire [7:0]Y;

decoder3to8 d24(W, Y, En);
    initial
    begin
    $dumpfile("decoder3to8_tb.vcd");
    $dumpvars(0, decoder3to8_tb);
    
    En=0;W[2]=0;W[1]=0;W[0]=0;#20;
    En=1;W[2]=0;W[1]=0;W[0]=0;#20;
    En=1;W[2]=0;W[1]=0;W[0]=1;#20;
    En=1;W[2]=0;W[1]=1;W[0]=0;#20;
    En=1;W[2]=0;W[1]=1;W[0]=1;#20;
    En=1;W[2]=1;W[1]=0;W[0]=0;#20;
    En=1;W[2]=1;W[1]=0;W[0]=1;#20;
    En=1;W[2]=1;W[1]=1;W[0]=0;#20;
    En=1;W[2]=1;W[1]=1;W[0]=1;#20;
    
    $display("Test Completed");
    end
endmodule
