module bcd4bit_tb;
// Inputs
reg clk;
reg reset;
// Outputs
wire [3:0] count;
// Instantiate the Unit Under Test (UUT)
bcd4bit uut (
.count(count),
.clk(clk),
.reset(reset)
);
always #5 clk=~clk;
initial begin
clk = 0;
reset = 1;
#20;
reset=0;
#60;
 $finish;

end

endmodule