module MDR ( input logic Clk, LD_MDR, MIO_EN, Reset,
				 input logic [15:0] Data_to_CPU, MDR_Datapath, MDR_old,
				 output logic [15:0] MDR_out);
				 
				 logic [15:0] MDR_temp, MDR;
				 always_comb
				 begin
					 if (Reset)
						MDR = 16'h0000;
					 else
					 begin
						if(LD_MDR)
							if(MIO_EN == 1'b1)
								MDR = Data_to_CPU;
							else 
								MDR = MDR_Datapath;							
						else
							MDR = MDR_old;
					 end
				 end
				 
				 always_ff @ (posedge Clk)
				 begin
					MDR_out = MDR;
				 end

endmodule