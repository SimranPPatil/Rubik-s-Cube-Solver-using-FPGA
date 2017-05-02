module Register(input logic Clk,
					 input logic [15:0] Data_in,
					 output logic [15:0] Data_out);
					 
					 always_ff @(posedge Clk)
					 begin
					 Data_out = Data_in;
					 end					 
					 					 
endmodule