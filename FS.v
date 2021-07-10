module fs (d, bout, a, b, bin);

input a, b, bin;
output d, bout;
wire w0, w1, w2, w3, w4;

xor x1(w0, a, b);
not n1(w1, a);
and a1(w2, b, w1);
xor x2(d, w0, bin);
not n2(w3, w0);
and a2(w4, bin, w3);
or o1(bout, w4, w2);

endmodule

// Most. Sabrina Naorin Sumona
// ID 181472565

module testbench_fs;

reg a, b, bin;
wire d, bout;
fs f(d, bout, a, b, bin);
initial 
begin
a = 1'b0; b = 1'b0; bin = 1'b0;
#10; a = 1'b0; b = 1'b0; bin = 1'b1;
#10; a = 1'b0; b = 1'b1; bin = 1'b0;
#10; a = 1'b0; b = 1'b1; bin = 1'b1;
#10; a = 1'b1; b = 1'b0; bin = 1'b0;
#10; a = 1'b1; b = 1'b0; bin = 1'b1;
#10; a = 1'b1; b = 1'b1; bin = 1'b0;
#10; a = 1'b1; b = 1'b1; bin = 1'b1;
end

endmodule
