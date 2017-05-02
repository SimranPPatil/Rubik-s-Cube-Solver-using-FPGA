module nzp ( input logic Clk, Reset, N,Z,P, LD_BEN, BEN_old,
			 input logic [15:0] IR,
			 output logic BEN);

			always_comb
			begin
				if(Reset)
					BEN = 1'b0;
				else
					begin
						if(LD_BEN)
							BEN = (IR[11] & N) + (IR[10] & Z) + (IR[9] & P);
						else
							BEN = BEN_old;
					end
			end
endmodule