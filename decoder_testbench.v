// Inputs
reg a;
reg b;
// Outputs
wire d3;
wire d2;
wire d1;
wire d0;
// Instantiate the Unit Under Test (UUT)
decoder uut (
.d3(d3),
.d2(d2),
.d1(d1),
.d0(d0),
.a(a),
.b(b)
);
initial begin
// Initialize Inputs
a = 0;
b = 0;
// Wait 100 ns for global reset to finish
#100;
a = 0;
b = 1;
#100;
 a = 1;
b = 0;
#100;
 a = 1;
b = 1;

end
endmodule
