module clkdiv_tb;
// Inputs
reg clk;
reg reset;
// Outputs
wire clk_2;
wire clk_4;
wire clk_8;
wire clk_16;
// Instantiate the Unit Under Test (UUT)
clkdiv uut (
.clk_2(clk_2),
.clk_4(clk_4),
.clk_8(clk_8),
.clk_16(clk_16),
.clk(clk),
.reset(reset)
);
always #5 clk=~clk;
initial begin
clk=0;
reset=1;
#20;
reset=0;
#500;
$finish;
end
 endmodule