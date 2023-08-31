module bcd1_tb;
// Inputs
reg [3:0] b;
// Outputs
wire [3:0] g;
// Instantiate the Unit Under Test (UUT)
bcd uut (
.b(b),
.g(g)
);
initial begin
// Initialize Inputs
b =4'b0000;#100;
b =4'b0001;#100;
b =4'b0010;#100;
b =4'b0011;#100;
b =4'b0100;#100;
b =4'b0101;#100;
b =4'b0110;#100;
b =4'b0111;#100;
b =4'b1000;#100;
b =4'b1001;#100;
b =4'b1010;#100;
b =4'b1011;#100;
b =4'b1100;#100;
b =4'b1101;#100;
b =4'b1110;#100;
b =4'b1111;#100;
// Wait 100 ns for global reset to finish
#100;
 // Add stimulus here
end
endmodule