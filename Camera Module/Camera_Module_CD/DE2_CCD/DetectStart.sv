module DetectStart (input logic [10:0] X_Cont, Y_Cont,
					input logic [9:0] pixelValue,
					output logic [10:0] CubeX_Start, CubeY_Start,
					output logic CubeDetected);

logic [10:0]  X_out, Y_out, Detected;

always_comb
begin
	if(pixelValue == 16'h0000)
	begin
		X_out = X_Cont;
		Y_out = Y_Cont;
		Detected = 1'b1;
	end
	else
	begin
		X_out = 10'b00;
		Y_out = 10'b00;
		Detected = 1'b0;
	end
end

assign CubeX_Start = X_out;
assign CubeY_Start = Y_out;
assign CubeDetected = Detected;

endmodule