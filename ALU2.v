module alu2(input[15:0] a, b, input[3:0] sel, output[15:0] out, output cout);

reg [15:0] alu_result;
wire [16:0] tmp;
assign out = alu_result;

// initially a & b are 0
assign tmp = {1'b0, a} + {1'b0, b};
assign cout = tmp[16];

// clock pulse: all operation selected
always @(*)

begin

case (sel)
3'b0000: alu_result = a + b;
3'b0001: alu_result = a - b;
3'b0010: alu_result = a * b;
3'b0011: alu_result = a / b;
3'b0100: alu_result = a & b;
3'b0101: alu_result = a | b;
3'b0110: alu_result = ~(a & b);
3'b0111: alu_result = ~(a | b);
3'b1000: alu_result = ~a;
3'b1001: alu_result = ~b;
3'b1010: alu_result = b - a;
3'b1011: alu_result = b / a;
3'b1100: alu_result = (~a) & (~b);
3'b1101: alu_result = (~a) | (~b);
3'b1110: alu_result = a & (~b);
3'b1111: alu_result = (~a) & b;
default: alu_result = a % b;
endcase

end

endmodule
