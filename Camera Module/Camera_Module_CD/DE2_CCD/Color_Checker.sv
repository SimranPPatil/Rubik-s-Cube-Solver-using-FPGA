module ColorChecker ( input logic Clk, cc,
					  input logic [29:0] Color_in,
					  output logic [29:0] Color_out);

logic [29:0] Red, Green, Blue, Yellow, White, Orange;
real a;
initial
begin
	a = 0.05;
end
Register reg_red (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'b111111111100000000000000000000), .Data_out(Red));
Register reg_green (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'b000000000011111111110000000000), .Data_out(Green));
Register reg_blue (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'b000000000000000000001111111111), .Data_out(Blue));
Register reg_yellow (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'b111111111111111111110000000000), .Data_out(Yellow));
Register reg_white (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'b111111111111111111111111111111), .Data_out(White));
Register reg_orange (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'b111111111111101001010000000000), .Data_out(Orange));

always_ff @(posedge Clk)
begin
	if(cc)
		begin
			if( (Color_in - Red) / Red < a || (Red - Color_in) / Red < a) 
				Color_out <= Red;
			else if ( (Color_in - Green) / Green < a || (Green - Color_in) / Green < a) 
				Color_out <= Green;
			else if ( (Color_in - Blue) / Blue < a || (Blue - Color_in) / Blue < a) 
				Color_out <= Blue;
			else if ( (Color_in - Yellow) / Yellow < a || (Yellow - Color_in) / Yellow < a) 
				Color_out <= Yellow;
			else if ( (Color_in - White) / White < a || (White - Color_in) / White < a) 
				Color_out <= White;
			else if ( (Color_in - Orange) / Orange < a || (Orange - Color_in) / Orange < a) 
				Color_out <= Orange;
			else
				Color_out <= 30'b000000000000000000000000000000;
		end
end

endmodule