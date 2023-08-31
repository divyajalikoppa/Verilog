module encoder(dout,din);
 output [2:0] dout;
 input [7:0] din;
 reg [2:0]dout;
always@(din)
begin
if(din[0])
dout=0;
 else if(din[1])
dout=1;
 else if(din[2])
dout=2;
 else if(din[3])
 dout=3;
 else if(din[4])
dout=4;
 else if(din[5])
dout=5;
 else if(din[6])
dout=6;
 else if(din[7])
dout=7;
else
dout=3'bz;
end
endmodule