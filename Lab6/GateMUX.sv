module GateMUX (input logic [15:0] PC_in, MARMUX_in, ALU_in, MDR_in,
					input logic Clk, GatePC, GateMARMUX, GateALU, GateMDR,
					output logic [15:0] Datapath);
					
					logic [3:0] select;
					assign select = {GatePC, GateMARMUX, GateALU, GateMDR};
					always_comb
					begin
						if(select == 4'b0000)
							Datapath = 16'hxxxx;
						else if(select == 4'b1000)
							Datapath = PC_in;
						else if(select == 4'b0100)
							Datapath = MARMUX_in;
						else if(select == 4'b0010)
							Datapath = ALU_in;
						else if(select == 4'b0001)
							Datapath = MDR_in;
						else
							Datapath = 16'hxxxx;
					end
					
endmodule