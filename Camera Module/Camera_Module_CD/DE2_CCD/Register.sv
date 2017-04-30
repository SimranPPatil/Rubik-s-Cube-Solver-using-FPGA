module Register( input logic Clk, Load,init, 
				 input logic [29:0] Data_in,
				 output logic [29:0] Data_out
				);

	always_ff @(posedge Clk)
	begin
		if(init)
			Data_out <= 30'h0000;
		else
			if(Load)
			begin
				Data_out <= Data_in;
			end
	end

endmodule