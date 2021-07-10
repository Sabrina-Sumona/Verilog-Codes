module midlab (f1, f2, f3, f4, a, b, c, d);
 
input a, b, c, d;
output f1, f2, f3, f4;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12;

and a1(w0, c, d);
or o1(f1, a, w0);

not n1(w1, a);
not n2(w2, c);
and a2(w3, w1, w2);

not n3(w4, b);
and a3(w5, w4, w2);

not n4(w6, d);
and a4(w7, w1, c, w6);

and a5(w8, a, c, d);

or o2(f2, w3, w5, w7, w8);

and a6(w9, w2, d);
and a7(w10, c, w6);
or o3(f3, w8, w9);

and a8(w11, w2, w6);
or o4(f4, w10, w11);

endmodule

// Most. Sabrina Naorin Sumona
// ID 181472565

module testbench_midlab;

reg a, b, c, d;
wire f1, f2, f3, f4;
midlab f(f1, f2, f3, f4, a, b, c, d);

initial 

begin
a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
#10; a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
#10; a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
#10; a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
#10; a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
#10; a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
#10; a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
#10; a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
#10; a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
end

endmodule