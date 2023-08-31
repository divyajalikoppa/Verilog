module bcd4bit(count,clk,reset);
 output [3:0]count;
 input clk,reset;
 reg [3:0]count=4'b0000;
always@(posedge clk)
begin
if((reset==1)|(count==4'b1001))
count=4'b0000;
else
count=count+1;
end
endmodule