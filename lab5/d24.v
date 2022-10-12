module decoder2to4(W, Y, En);
input [1:0] W;
input En;

output [0:3] Y;
reg [0:3] Y;
	
always @(W or En)
if(En==0)
Y=0;
else if(W==0)
Y=0;
else if(W==1)
Y=1;
else if(Y==2)
Y=2;
else
Y=3;   
endmodule
