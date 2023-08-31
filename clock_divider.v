module clkdiv(clk_2,clk_4,clk_8,clk_16,clk,reset);
 output clk_2,clk_4,clk_8,clk_16;
 input clk,reset;
 reg clk_2,clk_4,clk_8,clk_16;
reg[3:0]count;
always@(posedge clk)
begin
if(reset==1)
count=4'b0000;
else
count=count+1;
clk_2=count[0];
clk_4=count[1];
clk_8=count[2];
clk_16=count[3];
end
endmodule