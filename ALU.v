module alu32bit(result,a,b,opcode,en);
 output [31:0] result;
 input [31:0] a,b;
 input [2:0] opcode;
 input en;
 reg[31:0]result;
always@(a,b,opcode,en)
begin
if(en==1)
begin
case(opcode)
3'b000:result=a+b;
3'b001:result=a-b;
3'b010:result=a+1;
3'b011:result=a-1;
3'b100:result=a;
3'b101:result=~a;
3'b110:result=a|b;
3'b111:result=a&b;
endcase
end
else
begin
result=32'bz;
end
end
endmodule