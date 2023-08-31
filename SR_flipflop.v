module srff(q,qb,clk,sr);
 output q,qb;
 input clk;
 input [1:0]sr;
 reg q=0;
reg qb=1;
always@(posedge clk)
begin
case(sr)
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=1'bz;
endcase
qb=~q;
end
endmodule