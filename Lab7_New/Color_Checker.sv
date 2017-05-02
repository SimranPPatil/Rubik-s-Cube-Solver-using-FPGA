module ColorChecker ( input logic Clk, cc,
					  input logic [29:0] Color_in,
					  output logic [29:0] Color_out);

logic [29:0] Red, Green, Blue, Yellow, White, Orange;
/*real a;
initial
begin
	a = 0.05;
end*/
Register reg_red (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'hbe0712), .Data_out(Red));
Register reg_green (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'h72ac4d), .Data_out(Green));
Register reg_blue (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'h213963), .Data_out(Blue));
Register reg_yellow (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'hfffd38), .Data_out(Yellow));
Register reg_white (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'hFFFFFF), .Data_out(White));
Register reg_orange (.Clk(Clk), .init(init), .Load(1'b1), .Data_in(30'heb7d3c), .Data_out(Orange));

always_ff @(posedge Clk)
begin
	if(cc)
		begin
			if(Color_in == Red ) 
				Color_out <= Red;
			else if ( Color_in == Green) 
				Color_out <= Green;
			else if ( Color_in == Blue) 
				Color_out <= Blue;
			else if ( Color_in == Yellow) 
				Color_out <= Yellow;
			else if ( Color_in == White) 
				Color_out <= White;
			else if ( Color_in == Orange) 
				Color_out <= Orange;
			else
				Color_out <= 30'h000000;
		end
end

endmodule