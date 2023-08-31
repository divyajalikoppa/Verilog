module jkff(q,qb,clk,jk);
 output q,qb;
 input clk;
 input [1:0]jk;
 reg q=0;
reg qb=1;
always@(posedge clk)
begin
case(jk)
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=~q;
endcase
qb=~q;
end
endmodule