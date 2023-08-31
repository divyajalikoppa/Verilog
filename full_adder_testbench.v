module fa_tb;
// Inputs
reg a;
reg b;
reg c;
// Outputs
wire sum;
wire cout;
wire yxor;
wire yxnor;
wire yand;
wire yor;
// Instantiate the Unit Under Test (UUT)
fa uut (
.sum(sum),
.cout(cout),
.yxor(yxor),
.yxnor(yxnor),
.yand(yand),
.yor(yor),
.a(a),
.b(b),
.c(c)
);
initial begin
// Initialize Inputs
a = 0;
b = 0;
c = 0;
// Wait 100 ns for global reset to finish
#100;
a=0;b=0;c=1;#50;
a=0;b=1;c=0;#50;
a=0;b=1;c=1;#50;
a=1;b=0;c=0;#50;
a=1;b=0;c=1;#50;
a=1;b=1;c=0;#50;
a=1;b=1;c=1;#50;
 // Add stimulus here
end
endmodule