module example4(a,b,c,d,f,g);
input a,b,c,d;
output f,g;
nand(p,a,b);
xor(f,d,p,c);
nor(g,d,b,c);
endmodule

