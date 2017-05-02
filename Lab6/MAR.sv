module MAR ( input logic Clk, LD_MAR, Reset,
				 input logic [15:0] MAR_in, MAR_old,
				 output logic [15:0] MAR_out );

				 logic [15:0] MAR;
				 always_comb
				 begin
					if(Reset)
						MAR = 16'h0000;
					else
					begin
						if(LD_MAR)
							MAR = MAR_in;
						else MAR = MAR_old;
					end
				 end
				 always_ff @ (posedge Clk)
				 begin
					MAR_out = MAR;
				 end
endmodule