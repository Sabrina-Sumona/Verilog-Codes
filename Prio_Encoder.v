module prio_encoder (y, x, d3, d2, d1);
input d3, d2, d1;
output y, x;
wire w0, w1;

not n1(w1, d2);
and a1(w0, w1, d1);
or o1(y, d3, w0);
or o2(x, d2, d3);

endmodule

module testbench_prio_encoder;
reg d3, d2, d1;
wire y, x;
prio_encoder f(y, x, d3, d2, d1);

initial 

begin
d3 = 1'b0; d2 = 1'b0; d1 = 1'b0;
#10; d3 = 1'b0; d2 = 1'b0; d1 = 1'b1;
#10; d3 = 1'b0; d2 = 1'b1; d1 = 1'b1;
#10; d3 = 1'b1; d2 = 1'b1; d1 = 1'b1;
end

endmodule