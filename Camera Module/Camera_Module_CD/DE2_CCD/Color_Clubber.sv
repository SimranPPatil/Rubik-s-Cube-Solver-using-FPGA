module ColorClubber ( input logic [9:0] R, G, B,
					  output logic [29:0] Color);

logic [29:0] temp;
temp = 30'h00000000;

always_comb
begin
	temp = {R, G, B};
end
assign Color = temp;

endmodule