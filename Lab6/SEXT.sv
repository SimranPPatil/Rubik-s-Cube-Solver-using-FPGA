module SEXT_516 ( input logic Clk, 
				 input logic [4:0] data_in,
				 output logic [15:0] data_out);
			
			always_ff @(posedge Clk)
			begin
				if(data_in[4] == 1'b1)
					data_out = {11'b11111111111, data_in};
				else
					data_out = {11'b00000000000,data_in};
			end
				 
endmodule