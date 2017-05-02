module palette_hex (input logic [4:0] pixel_in,
							output logic [29:0] pixel_out);
	
logic [30:0] pixel;
always_comb
begin	
	unique case(pixel_in)
		5'd0 : pixel = 30'hb307be;
		5'd1 : pixel = 30'h000000;
		5'd2 : pixel = 30'hFFFFFF;
		5'd3 : pixel = 30'heb7d3c;
		5'd4 : pixel = 30'hfffd38;
		5'd5 : pixel = 30'h72ac4d;
		5'd6 : pixel = 30'h213963;
		5'd7 : pixel = 30'hbe0712;
	endcase
end

assign pixel_out = pixel;							
							
endmodule