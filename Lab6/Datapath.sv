module Datapath(input logic Clk,
					 input logic [15:0] Data_in,
					 output logic  [15:0] Data_out,
					 inout wire [15:0] Data );
 
 wire [15:0] b, a;
 
 assign Data  = a;
 assign Data_out = b;
 always_ff @(posedge Clk)
 begin
	b <= Data;
	a <= Data_in;
 end
			 					 
endmodule