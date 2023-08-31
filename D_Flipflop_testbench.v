module dff_tb;
// Inputs
reg clk;
reg d;
// Outputs
wire q;
wire qb;
// Instantiate the Unit Under Test (UUT)
dff uut (
.q(q),
.qb(qb),
.clk(clk),
.d(d)
);
always #6 clk=~clk;
initial begin
// Initialize Inputs
clk = 0;
d = 0;
#20;
d=1;
#20;
d=0;
#20
// Wait 100 ns for global reset to finish
 $finish;
// Add stimulus here
end

endmodule