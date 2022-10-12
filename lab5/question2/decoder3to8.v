module decoder3to8(W, Y, En);
input [2:0] W;
input En;

output [0:7] Y;
reg [0:7] Y;

always @(W or En)
if(En==0)
Y=0;
else if(W==0)
Y=0;
else if(W==1)
Y=1;
else if(Y==2)
Y=2;
else if(Y==3)
Y=3;
else if(Y==4)
Y=4;
else if(Y==5)
Y=5;
else if(Y==6)
Y=6;
else
Y=7;   
endmodule
	
