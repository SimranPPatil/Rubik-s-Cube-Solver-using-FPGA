module ColorChecker ( input logic Clk, cc,
					  input logic [29:0] Color_in,
					  output logic [29:0] Color_out);

logic [29:0] Red, Green, Blue, Yellow, White, Orange;
Red = 30'b111111111100000000000000000000;
Green = 30'b000000000011111111110000000000;
Blue = 30'b000000000000000000001111111111;
Yellow = 30'b111111111111111111110000000000;
White = 30'b111111111111111111111111111111;
Orange = 30'b111111111111101001010000000000;

always_ff @(posedge Clk)
begin
	if(cc)
		begin
			if( (Color_in - Red) / Red < 30'd0.05 || (Red - Color_in) / Red < 30'd0.05) 
				Color_out <= Red;
			else if ( (Color_in - Green) / Green < 30'd0.05 || (Green - Color_in) / Green < 30'd0.05) 
				Color_out <= Green;
			else if ( (Color_in - Blue) / Blue < 30'd0.05 || (Blue - Color_in) / Blue < 30'd0.05) 
				Color_out <= Blue;
			else if ( (Color_in - Yellow) / Yellow < 30'd0.05 || (Yellow - Color_in) / Yellow < 30'd0.05) 
				Color_out <= Yellow;
			else if ( (Color_in - White) / White < 30'd0.05 || (White - Color_in) / White < 30'd0.05) 
				Color_out <= White;
			else if ( (Color_in - Orange) / Orange < 30'd0.05 || (Orange - Color_in) / Orange < 30'd0.05) 
				Color_out <= Orange;
			else
				Color_out <= 30'b000000000000000000000000000000;
		end
end

endmodule