module DetectStart (input logic ds, Clk,
					input logic [10:0] X_Cont, Y_Cont,
					input logic [9:0] pixelValue,
					output logic [10:0] CubeX_Start, CubeY_Start,
					output logic CubeDetected);

always_ff @(posedge Clk)
begin
	if(ds)
		begin
			if(pixelValue == 16'h0000)
				begin
					CubeX_Start = X_Cont;
					CubeY_Start = Y_Cont;
					CubeDetected = 1'b1;
				end
			else
				begin
					CubeX_Start = 10'b00;
					CubeY_Start = 10'b00;
					CubeDetected = 1'b0;
				end
		end
end

endmodule