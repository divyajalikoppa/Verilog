module dff(q,qb,clk,d);
 output q,qb;
 input clk,d;
 reg q=0;
reg qb=1;
always@(posedge clk)
begin
q=d;
qb=~d;
end
endmodule