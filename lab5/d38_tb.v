`timescale 1ns/1ns
`include "d38.v"

module d38_tb();
reg [2:0]En;
wire [7:0]Y;

decoder3to8 d38(in, out);
    initial
    begin
    $dumpfile("d38_tb.vcd");
    $dumpvars(0, d38_tb);
    
    for (integer k = 0; k <= 7; k = k+1) begin
        En = k; #20;
    end
    
    $display("Test Completed");
end
endmodule
