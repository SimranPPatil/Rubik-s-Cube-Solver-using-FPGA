module Register( input logic Clk, Reset, Load,
				 input logic [29:0] Data_in,
				 output logic [29:0] Data_out
				);

	always_ff @(posedge Clk)
	begin
		if(Reset)
			Data_out <= 30'h0000;
		else
			if(Load)
			begin
				Data_out <= Data_in;
			end
	end

endmodule