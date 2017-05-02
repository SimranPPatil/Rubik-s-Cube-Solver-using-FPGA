module MARMUX (input logic Clk, GateMARMUX, MARMUX,
				input logic [15:0] MAR_IR, MAR_Adder,
				output logic [15:0] MAR, 
				inout wire [15:0] Data);
				
				logic [15:0] MAR_temp, MAR_new;
				always_ff @(posedge Clk)
				begin
					if(MARMUX == 1'b0)
						MAR_temp = MAR_Adder;
					else
						MAR_temp = MAR_IR;
				end
				
				tristate MARGate (.Clk(Clk), .tristate_output_enable(GateMARMUX), .Data_write(MAR_temp), .Data_read(MAR), .Data(Data) );
endmodule