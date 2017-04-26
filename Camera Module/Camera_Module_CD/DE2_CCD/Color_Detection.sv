module ColorDetection (input logic [9:0] pixelValue, 
					   input logic [10:0] X_Cont, Y_Cont,  
					   input logic Fval, Lval, Clk,
					   input logic [10:0] Block1X, Block1Y, 
										Block2X, Block2Y,
										Block3X, Block3Y,
										Block4X, Block4Y,
										Block5X, Block5Y,
										Block6X, Block6Y,
										Block7X, Block7Y,
										Block8X, Block8Y,
										Block9X, Block9Y,
						input logic [9:0] Counter_in,
						input logic [9:0]   Color1_in,
											Color2_in,
											Color3_in,
											Color4_in,
											Color5_in,
											Color6_in,
											Color7_in,
											Color8_in,
											Color9_in,
						output logic [9:0]  Color1,
											Color2,
											Color3,
											Color4,
											Color5,
											Color6,
											Color7,
											Color8,
											Color9,
						output logic [9:0] Counter_out,
						output logic ColorsStored
						);

logic [9:0] b1, b2, b3, b4, b5, b6, b7, b8, b9;
logic [9:0] Counter;
logic Load, Reset, colS;

Reset = 1'b0;
Load = 1'b1;
Counter = 10'h00;

always_comb
begin
	if(Counter_in == 10'd45)
		colS = 1'b1;
	else
		colS = 1'b0;

	if( X_Cont == Block1X && Y_Cont == Block1Y 
		|| X_Cont == (Block1X-1) && Y_Cont == Block1Y 
	    || X_Cont == (Block1X+1) && Y_Cont == Block1Y 
	    || X_Cont == Block1X && Y_Cont == (Block1Y-1)
	    || X_Cont == Block1X && Y_Cont == (Block1Y+1))
		begin
			Counter = Counter_in + 1;
			b1 = pixelValue;
		end
	else
		b1 = 10'h0000;

	if( X_Cont == Block2X && Y_Cont == Block2Y 
		|| X_Cont == (Block2X-1) && Y_Cont == Block2Y 
	    || X_Cont == (Block2X+1) && Y_Cont == Block2Y 
	    || X_Cont == Block2X && Y_Cont == (Block2Y-1)
	    || X_Cont == Block2X && Y_Cont == (Block2Y+1))
		begin
			Counter = Counter_in + 1;
			b2 = pixelValue;
		end
	else
		b2 = 10'h00003

	if( X_Cont == Block3X && Y_Cont == Block3Y 
		|| X_Cont == (Block3X-1) && Y_Cont == Block3Y 
	    || X_Cont == (Block3X+1) && Y_Cont == Block3Y 
	    || X_Cont == Block3X && Y_Cont == (Block3Y-1)
	    || X_Cont == Block3X && Y_Cont == (Block3Y+1))
		begin
			Counter = Counter_in + 1;
			b3 = pixelValue;
		end
	else
		b3 = 10'h0000;

	if( X_Cont == Block4X && Y_Cont == Block4Y 
		|| X_Cont == (Block4X-1) && Y_Cont == Block4Y 
	    || X_Cont == (Block4X+1) && Y_Cont == Block4Y 
	    || X_Cont == Block4X && Y_Cont == (Block4Y-1)
	    || X_Cont == Block4X && Y_Cont == (Block4Y+1))
		begin
			Counter = Counter_in + 1;
			b4 = pixelValue;
		end
	else
		b4 = 10'h0000;

	if( X_Cont == Block5X && Y_Cont == Block5Y 
		|| X_Cont == (Block5X-1) && Y_Cont == Block5Y 
	    || X_Cont == (Block5X+1) && Y_Cont == Block5Y 
	    || X_Cont == Block5X && Y_Cont == (Block5Y-1)
	    || X_Cont == Block5X && Y_Cont == (Block5Y+1))
		begin
			Counter = Counter_in + 1;
			b5 = pixelValue;
		end
	else
		b5 = 10'h0000;

	if( X_Cont == Block6X && Y_Cont == Block6Y 
		|| X_Cont == (Block6X-1) && Y_Cont == Block6Y 
	    || X_Cont == (Block6X+1) && Y_Cont == Block6Y 
	    || X_Cont == Block6X && Y_Cont == (Block6Y-1)
	    || X_Cont == Block6X && Y_Cont == (Block6Y+1))
		begin
			Counter = Counter_in + 1;
			b6 = pixelValue;
		end
	else
		b6 = 10'h0000;

	if( X_Cont == Block7X && Y_Cont == Block7Y 
		|| X_Cont == (Block7X-1) && Y_Cont == Block7Y 
	    || X_Cont == (Block7X+1) && Y_Cont == Block7Y 
	    || X_Cont == Block7X && Y_Cont == (Block7Y-1)
	    || X_Cont == Block7X && Y_Cont == (Block7Y+1))
		begin
			Counter = Counter_in + 1;
			b7 = pixelValue;
		end
	else
		b7 = 10'h0000;

	if( X_Cont == Block8X && Y_Cont == Block8Y 
		|| X_Cont == (Block8X-1) && Y_Cont == Block8Y 
	    || X_Cont == (Block8X+1) && Y_Cont == Block8Y 
	    || X_Cont == Block8X && Y_Cont == (Block8Y-1)
	    || X_Cont == Block8X && Y_Cont == (Block8Y+1))
		begin
			Counter = Counter_in + 1;
			b8 = pixelValue;
		end
	else
		b8 = 10'h0000;

	if( X_Cont == Block9X && Y_Cont == Block9Y 
		|| X_Cont == (Block9X-1) && Y_Cont == Block9Y 
	    || X_Cont == (Block9X+1) && Y_Cont == Block9Y 
	    || X_Cont == Block9X && Y_Cont == (Block9Y-1)
	    || X_Cont == Block9X && Y_Cont == (Block9Y+1))
		begin
			Counter = Counter_in + 1;
			b9 = pixelValue;
		end
	else
		b9 = 10'h0000;
end

Register block1_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color1_in+b1), .Data_out(Color1));
Register block2_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color2_in+b2), .Data_out(Color2));
Register block3_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color3_in+b3), .Data_out(Color3));
Register block4_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color4_in+b4), .Data_out(Color4));
Register block5_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color5_in+b5), .Data_out(Color5));
Register block6_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color6_in+b6), .Data_out(Color6));
Register block7_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color7_in+b7), .Data_out(Color7));
Register block8_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color8_in+b8), .Data_out(Color8));
Register block9_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Color9_in+b9), .Data_out(Color9));

Register counter_reg (.Clk(Clk), .Reset(Reset), .Load(Load), .Data_in(Counter), .Data_out(Counter_out));

assign ColorsStored = colS;

endmodule