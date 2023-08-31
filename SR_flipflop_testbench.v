module srff_tb;
// Inputs
reg clk;
reg [1:0] sr;
// Outputs
wire q;
wire qb;
// Instantiate the Unit Under Test (UUT)
srff uut (
.q(q),
.qb(qb),
.clk(clk),
.sr(sr)
);
always #6 clk=~clk;
initial begin
// Initialize Inputs
clk = 0;
sr=2'b00;
#20;
sr= 2'b01;
#20;
sr=2'b10;
#20;
sr=2'b11;
#20;
// Wait 100 ns for global reset to finish
// Add stimulus here
end
endmodule