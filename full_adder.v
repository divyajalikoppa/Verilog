module fa(sum,cout,yxor,yxnor,yand,yor,a,b,c);
 output sum,cout,yxor,yxnor,yand,yor;
 input a,b,c;
assign sum=a^b^c;
assign cout=(a&b)|(b&c)|(c&a);
assign yxor=a^b^c;
assign yxnor=~a^b^c;
assign yand =a&b&c;
assign yor=a|b|c;
endmodule