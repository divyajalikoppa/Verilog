module alu32bit_tb;
// Inputs
reg [31:0] a;
reg [31:0] b;
reg [2:0] opcode;
reg en;
// Outputs
wire [31:0] result;
// Instantiate the Unit Under Test (UUT)
alu32bit uut (
.result(result),
.a(a),
.b(b),
.opcode(opcode),
.en(en)
);
initial begin
// Initialize Inputs
a = 0;
b = 0;
opcode = 0;
en = 0;
// Wait 100 ns for global reset to finish
#100;
a=32'h000000ff;
b=32'h0000000f;
en=1;
#100;
opcode=3'b000;
#100;
opcode=3'b001;
#100;
opcode=3'b010;
#100;
opcode=3'b011;
#100;
opcode=3'b100;
#100;
opcode=3'b101;
#100;
opcode=3'b110;
#100;
opcode=3'b111;
#100;
 // Add stimulus here
end
endmodule