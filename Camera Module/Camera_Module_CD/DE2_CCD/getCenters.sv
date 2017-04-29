module getCenters ( input logic Clk,gc,
					input logic [10:0] CubeX_Start, CubeY_Start,
					input logic [9:0] N,
					output logic [10:0] Block1X, Block1Y, 
										Block2X, Block2Y,
										Block3X, Block3Y,
										Block4X, Block4Y,
										Block5X, Block5Y,
										Block6X, Block6Y,
										Block7X, Block7Y,
										Block8X, Block8Y,
										Block9X, Block9Y,
					output logic gotCenters
					);

always_ff @(posedge Clk)
begin
	if(gc)
		begin
			Block1X <= CubeX_Start + N/6 ;
			Block1Y <= CubeY_Start + N/6 ;

			Block2X <= CubeX_Start + N/2 ;
			Block2Y <= CubeY_Start + N/6 ;

			Block3X <= CubeX_Start + 5*N/6 ;
			Block3Y <= CubeY_Start + N/6 ;

			Block4X <= CubeX_Start + N/6 ;
			Block4Y <= CubeY_Start + N/2 ;

			Block5X <= CubeX_Start + N/2 ;
			Block5Y <= CubeY_Start + N/2 ;

			Block6X <= CubeX_Start + 5*N/6 ;
			Block6Y <= CubeY_Start + N/2 ;

			Block7X <= CubeX_Start + N/6 ;
			Block7Y <= CubeY_Start + 5*N/6 ;

			Block8X <= CubeX_Start + N/2 ;
			Block8Y <= CubeY_Start + 5*N/6 ;

			Block9X <= CubeX_Start + 5*N/6 ;
			Block9Y <= CubeY_Start + 5*N/6 ;
			
			gotCenters <= 1'b1;
		end
end

endmodule