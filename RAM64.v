module ram64 (input cs, input [15:0] data_in, input wr, input rd, input [5:0] add, output[15:0] data_out);

reg [15:0] ram [15:0];
always @(*)
begin
if(cs==0 && wr)
ram[add] <= data_in;
end
assign data_out = rd ? ram[add] : 16'bzzzzzzzzzzzzzzzz;

endmodule
