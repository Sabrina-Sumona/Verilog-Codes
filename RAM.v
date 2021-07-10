module ram(input clk, input [7:0] data_in, input wr, input rd, input [2:0] add, output[7:0] data_out);

reg [7:0] ram [7:0];
always @ (posedge clk)
begin
if (wr)
ram[add] <= data_in;
end
assign data_out = rd ? ram[add] : 8'bzzzzzzzzz;

endmodule