module alu(input[7:0] a, b, input[2:0] sel, output[7:0] out, output cout);

reg [7:0] alu_result;
wire [8:0] tmp;
assign out = alu_result;

// initially a & b are 0
assign tmp = {1'b0, a} + {1'b0, b};
assign cout = tmp[8];

// clock pulse: all operation selected
always @(*)

begin

case (sel)
3'b000: alu_result = a + b;
3'b001: alu_result = a - b;
3'b010: alu_result = a * b;
3'b011: alu_result = a / b;
3'b100: alu_result = a & b;
3'b101: alu_result = a | b;
3'b110: alu_result = ~(a & b);
3'b111: alu_result = ~(a | b);
default: alu_result = a % b;
endcase

end

endmodule