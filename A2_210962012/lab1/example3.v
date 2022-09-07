module example3(a,b,c,d,f);
input a,b,c,d;
output f;
wire g,h;
assign g=a&b;
assign h=g|c;
assign f=(~h&d)&(h&d);
endmodule


