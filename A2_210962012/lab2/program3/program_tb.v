`timescale 1ns/1ns
`include "program.v"

module program_tb();
reg a;
wire f;
program pg(a,f);

initial 
begin

	$dumpfile("program_tb.vcd");
 	$dumpvars(0,program_tb);
 	a=0;
 	#20;
 	a=1;
 	#20;
	
	
	$display("Test complete");
end
endmodule
