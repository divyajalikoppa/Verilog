module encoder1_tb;
// Inputs
reg [7:0] din;
// Outputs
wire [2:0] dout;
// Instantiate the Unit Under Test (UUT)
encoder uut (
.dout(dout),
.din(din) );
initial begin
// Initialize Inputs
din =8'b00000001;#100;
din =8'b00000010;#100;
din =8'b00000100;#100;
din =8'b00001000;#100;
din =8'b00010000;#100;
din =8'b00100000;#100;
din =8'b01000000;#100;
din =8'b10000000;#100;
 // Add stimulus here
 end
 endmodule