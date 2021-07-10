module prac3 (y,a,b,x);
 
output y;
input a,b,x;
wire w1, w2, w3, w4, w5, w6;

and a1 (w1, a, x);
and a2 (w2, b, x);
or o1 (a, w1, w2);

not n1 (w3, a);
and a3 (b, w3, x);

or o2 (w4, a, b);
not n2 (w6, x);
and a4 (y, w4, w5);

endmodule

// Most. Sabrina Naorin Sumona
// ID 181472565

module testbench_prac3;

reg a,b,x;
wire y;
prac3 f(y,a,b,x);
initial 
begin
a = 1'b0; b = 1'b0; x = 1'b0;
#10; a = 1'b0; b = 1'b0; x = 1'b1;
#10; a = 1'b0; b = 1'b1; x = 1'b0;
#10; a = 1'b0; b = 1'b1; x = 1'b1;
#10; a = 1'b1; b = 1'b0; x = 1'b0;
#10; a = 1'b1; b = 1'b0; x = 1'b1;
#10; a = 1'b1; b = 1'b1; x = 1'b0;
end

endmodule
