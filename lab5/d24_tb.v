`timescale 1ns/1ns
`include "d24.v"

module d24_tb();
reg [1:0]W;
reg En;
wire [3:0]Y;

decoder2to4 d24(W, Y, En);
    initial
    begin
    $dumpfile("d24_tb.vcd");
    $dumpvars(0, d24_tb);
    
    En=0;W[1]=0;W[0]=0;#20;
    En=1;W[1]=0;W[0]=0;#20;
    En=1;W[1]=0;W[0]=1;#20;
    En=1;W[1]=1;W[0]=0;#20;
    En=1;W[1]=1;W[0]=1;#20;
    
    $display("Test Completed");
    end
endmodule
