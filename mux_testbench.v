module muxcase1_tb;
// Inputs
reg [7:0] a;
reg [2:0] s;
// Outputs
wire y;
// Instantiate the Unit Under Test (UUT)
muxcase uut (
.y(y),
.a(a),
.s(s)
);
initial begin
// Initialize Inputs
a = 0;
s = 3'b000;#100;
 s = 3'b001;#100;
s = 3'b010;#100;
s = 3'b011;#100;
 s = 3'b100;#100;
s = 3'b101;#100;
s = 3'b110;#100;
s = 3'b111;#100;
// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
end
endmodule