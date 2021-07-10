module prac2 (w, x, y, z, a, b, c, d);
 
input a, b, c, d;
output w, x, y, z;
wire w1, w2, w3, w4, w5, w6, w7;

not n1(z, d);

and a1(w1, c, d);
or o1(w2, c, d);
not n2(w3, w2);
or o2(y, w1, w3);

and a2(w4, w3, b);
not n3(w6, b);
and a3(w5, w6, w2);
or o3(x, w4, w5);

and a4(w7, w2, b);
or o4(w, w7, a);

endmodule

// Most. Sabrina Naorin Sumona
// ID 181472565

module testbench_prac2;

reg a, b, c, d;
wire w, x, y, z;
prac2 f(w, x, y, z, a, b, c, d);

initial 

begin
a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
#10; a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
#10; a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
#10; a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
#10; a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
#10; a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
#10; a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
#10; a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
#10; a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
#10; a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
#10; a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
#10; a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
#10; a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
#10; a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
#10; a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
end

endmodule