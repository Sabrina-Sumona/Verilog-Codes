module fa (sum, cout, a, b, cin);

input a, b, cin;
output sum, cout;
wire w0, w1, w2;
xor x1(w0, a, b);
and a1(w1, a, b);
xor x2(sum, w0, cin);
and a2(w2, w0, cin);
or o1(cout, w1, w2);

endmodule

// Most. Sabrina Naorin Sumona
// ID 181472565

module testbench_fa;

reg a, b, cin;
wire sum, cout;
fa f(sum, cout, a, b, cin);
initial 
begin
a = 1'b0; b = 1'b0; cin = 1'b0;
#10; a = 1'b0; b = 1'b0; cin = 1'b1;
#10; a = 1'b0; b = 1'b1; cin = 1'b0;
#10; a = 1'b0; b = 1'b1; cin = 1'b1;
#10; a = 1'b1; b = 1'b0; cin = 1'b0;
#10; a = 1'b1; b = 1'b0; cin = 1'b1;
#10; a = 1'b1; b = 1'b1; cin = 1'b0;
#10; a = 1'b1; b = 1'b1; cin = 1'b1;
end

endmodule