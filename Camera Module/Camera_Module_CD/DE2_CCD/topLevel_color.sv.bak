module TopLevelColor ( 	input logic Clk, Reset, Execute, Face,
						input logic [29:0] pixelValue,
						input logic [10:0] X_Cont, Y_Cont,  
						input logic [9:0] N,
						output logic [29:0]  Color1,
											Color2,
											Color3,
											Color4,
											Color5,
											Color6,
											Color7,
											Color8,
											Color9,
						output logic ready, algstart, facedone
					);


logic gc, ds, cs , cc , algstart , init, facedone;

logic CubeDetected, gotCenters; 

logic [29:0] Color;

logic [10:0] Block1X, Block1Y, Block2X, Block2Y, Block3X, Block3Y, Block4X, Block4Y, Block5X, Block5Y, Block6X, Block6Y, Block7X, Block7Y, Block8X, Block8Y, Block9X, Block9Y;

logic [29:0] Counter_in;

logic [10:0] CubeX_Start, CubeY_Start;

ColorChecker Checker ( .Clk(Clk), .cc(cc), .Color_in(Color), .Color_out(Color) );

ColorDetection Detecter ( 	.pixelValue(pixelValue) , .X_Cont(X_Cont) , .Y_Cont(Y_Cont) , 
						  	.Clk(Clk) , .cs(cs) , .init(init) ,
					   		.Block1X(Block1X) , .Block1Y(Block1Y) , 
							.Block2X(Block2X) , .Block2Y(Block2Y) ,
							.Block3X(Block3X) , .Block3Y(Block3Y) ,
							.Block4X(Block4X) , .Block4Y(Block4Y) ,
							.Block5X(Block5X) , .Block5Y(Block5Y) ,
							.Block6X(Block6X) , .Block6Y(Block6Y) ,
							.Block7X(Block7X) , .Block7Y(Block7Y) ,
							.Block8X(Block8X) , .Block8Y(Block8Y) ,
							.Block9X(Block9X) , .Block9Y(Block9Y) ,
							.Counter_in(Counter_in) ,
							.Color1_in(Color1) ,
							.Color2_in(Color2) ,
							.Color3_in(Color3) ,
							.Color4_in(Color4) ,
							.Color5_in(Color5) ,
							.Color6_in(Color6) ,
							.Color7_in(Color7) ,
							.Color8_in(Color8) ,
							.Color9_in(Color9) ,
							.Color1(Color1) ,
							.Color2(Color2) ,
							.Color3(Color3) ,
							.Color4(Color4) ,
							.Color5(Color5) ,
							.Color6(Color6) ,
							.Color7(Color7) ,
							.Color8(Color8) ,
							.Color9(Color9) ,
							.Counter_out(Counter_in) 
						);

DetectStart Starter ( 	.ds(ds) , .Clk(Clk) ,
						.X_Cont(X_Cont) , .Y_Cont(Y_Cont) ,
						.pixelValue(pixelValue) ,
						.CubeX_Start(CubeX_Start) , .CubeY_Start(CubeY_Start) ,
						.CubeDetected(CubeDetected) );

ControlUnit Controller ( .Clk(Clk) , .Reset(Reset) , .Execute(Execute) , .Face(Face) , 
					 	 .gc(gc)  , .ds(ds)  , .cs(cs) , .cc(cc) , .algstart(algstart) , .init(init) , .facedone(facedone) );

getCenters Getter ( .Clk(Clk) , .gc(gc) ,
					.CubeX_Start(CubeX_Start) , .CubeY_Start(CubeY_Start) ,
					.N(N) ,
					.Block1X(Block1X) , .Block1Y(Block1Y) , 
					.Block2X(Block2X) , .Block2Y(Block2Y) ,
					.Block3X(Block3X) , .Block3Y(Block3Y) ,
					.Block4X(Block4X) , .Block4Y(Block4Y) ,
					.Block5X(Block5X) , .Block5Y(Block5Y) ,
					.Block6X(Block6X) , .Block6Y(Block6Y) ,
					.Block7X(Block7X) , .Block7Y(Block7Y) ,
					.Block8X(Block8X) , .Block8Y(Block8Y) ,
					.Block9X(Block9X) , .Block9Y(Block9Y) ,
					.gotCenters(gotCenters) );

endmodule