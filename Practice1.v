module prac1 (f1, f2, f3, f4, f5, f7, a, b, c);
 
input a, b, c;
output f1, f2, f3, f4, f5, f7;
wire w1, w2, w3, w4, w5, w6, w7, w8;

and a1(f1, a, b);

and a2(f2, a, c);

and a3(w1, b, c);
or o1(w2, w1, f1);
or o2(f3, w2, f2);

not n1(w3, a);
and a4(w4, w3, b);
or o3(f4, w4, f2);

not n2(w5, c);
and a5(w6, b, w5);
or o4(f5, a, w6);

not n3(w7, b);
and a6(w8, w3, w7);
and a7(f7, w8, c);

endmodule

// Most. Sabrina Naorin Sumona
// ID 181472565

module testbench_prac1;

reg a, b, c;
wire f1, f2, f3, f4, f5, f7;
prac1 f(f1, f2, f3, f4, f5, f7, a, b, c);
initial 
begin
a = 1'b0; b = 1'b0; c = 1'b0;
#10; a = 1'b0; b = 1'b0; c = 1'b1;
#10; a = 1'b0; b = 1'b1; c = 1'b0;
#10; a = 1'b0; b = 1'b1; c = 1'b1;
#10; a = 1'b1; b = 1'b0; c = 1'b0;
#10; a = 1'b1; b = 1'b0; c = 1'b1;
#10; a = 1'b1; b = 1'b1; c = 1'b0;
end

endmodule
