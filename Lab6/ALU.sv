module ALU (input logic Clk, Reset, SR2MUX_Ctrl, LD_CC, N_old, Z_old, P_old,
			input logic [15:0] SR1_in, SR2_in, IR,
			input logic [1:0] ALUK,
			output logic [15:0] Data_out,
			output logic N, Z, P);

			logic [15:0] tmp, SEXT_out;
			SEXT_516 data ( .Clk(Clk), .data_in(IR[4:0]), .data_out(SEXT_out) );
			
			always_comb
			begin
				
				if(SR2MUX_Ctrl)
					tmp = SEXT_out;
				else
					tmp = SR2_in;

				
				if(ALUK == 2'b00)
					Data_out = tmp + SR1_in;
				else if(ALUK == 2'b01)
					Data_out = tmp & SR1_in;
				else if(ALUK == 2'b10)
					Data_out = ~(SR1_in);
				else
					Data_out = 16'hxxxx ;
			end
			
			always_ff @(posedge Clk)
			begin
				if(Reset)
				begin
							N <= 1'b0;
							Z <= 1'b0;
							P <= 1'b0;
				end
				if(LD_CC)
				begin
					
					if(Data_out == 16'h0000)
						begin
							N <= 1'b0;
							Z <= 1'b1;
							P <= 1'b0;
						end
					else if(Data_out[15] == 1)
						begin
							N <= 1'b1;
							Z <= 1'b0;
							P <= 1'b0;
						end
					else
						begin
							N <= 1'b0;
							Z <= 1'b0;
							P <= 1'b1;
						end
				end
				else
					begin
						N <= N_old;
						Z <= Z_old;
						P <= P_old;
					end
			end
endmodule