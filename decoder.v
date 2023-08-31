module decoder(d0,d1,d2,d3,a,b);
 output d0,d1,d2,d3;
 input a,b;
 wire a0,b0;
nand n1(a0,a,a);
nand n2(b0,b,b);
nand n3(d0,a0,b0);
nand n4(d1,a0,b);
nand n5(d2,a,bo);
nand n6(d3,a,b);
endmodule