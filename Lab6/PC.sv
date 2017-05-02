module PC ( input logic Clk, LD_PC, Reset, 
				input logic [1:0] PCMUX,
				input logic [15:0] PC_old, PC_Adder, PC_datapath,
				output logic [15:0] PC_new	);	
			 
				logic [15:0] PC_temp;
				
				always_comb
				begin
					if (Reset)
						PC_temp = 16'h0000;
					else
					begin
						if(LD_PC)
						begin
							if(PCMUX == 2'b00)
								PC_temp = PC_old + 1'b1;
							else if(PCMUX == 2'b01)
								PC_temp = PC_Adder;
							else if(PCMUX == 2'b10)
								PC_temp = PC_datapath;
							else 
								PC_temp = PC_old;
						end
						else
							PC_temp = PC_old;
					end	
				end

				always_ff @ (posedge Clk)
				begin
					PC_new = PC_temp;
				end
endmodule