module ZEXT ( input logic Clk, 
				  input logic [15:0] data_in,
				  output logic [19:0] data_out);
				  
				  always_ff @(posedge Clk)
				  begin
					data_out = {0,0,0,0,data_in};
				  end			
endmodule	