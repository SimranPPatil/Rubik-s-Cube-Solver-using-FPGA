module RegFile( input logic Clk, Reset, Load, SR1, DR, 
				input logic [2:0] SR2,
				input logic [15:0] IR, Data,
				input logic [15:0] R0_old, R1_old, R2_old, R3_old, R4_old, R5_old, R6_old, R7_old,
				output logic [15:0] R0, R1, R2, R3, R4, R5, R6, R7,
				output logic [15:0] SR2_out, SR1_out);
		
				logic [2:0] SR1_MUX, DR_MUX;
				logic [15:0] R0t, R1t, R2t, R3t, R4t, R5t, R6t, R7t , SR2_outt, SR1_outt;
				
				always_comb
				begin
					if(SR1)
						SR1_MUX = IR[11:9];
					else 
						SR1_MUX = IR[8:6];

					if(DR)
						DR_MUX = 3'b111;
					else 
						DR_MUX = IR[11:9];	
				end
				
				always_comb
				begin
				R0t = R0_old;
				R1t = R1_old;
				R2t = R2_old;
				R3t = R3_old;
				R4t = R4_old;
				R5t = R5_old;
				R6t = R6_old;
				R7t = R7_old;
					case (DR_MUX)
						3'b000 : R0t = Data;
						3'b001 : R1t = Data;
						3'b010 : R2t = Data;
						3'b011 : R3t = Data;
						3'b100 : R4t = Data;
						3'b101 : R5t = Data;
						3'b110 : R6t = Data;
						3'b111 : R7t = Data;
						default : ;
					endcase
				end

				always_ff @(posedge Clk)
				begin
					if(Reset)
					begin
						R0 <= 0;
						R1 <= 0;
						R2 <= 0;
						R3 <= 0;
						R4 <= 0;
						R5 <= 0;
						R6 <= 0;
						R7 <= 0;
					end
					
					if(Load)
					begin
						R0 <= R0t;
						R1 <= R1t;
						R2 <= R2t;
						R3 <= R3t;
						R4 <= R4t;
						R5 <= R5t;
						R6 <= R6t;
						R7 <= R7t;
					end
					else 
					begin
						R0 <= R0_old;
						R1 <= R1_old;
						R2 <= R2_old;
						R3 <= R3_old;
						R4 <= R4_old;
						R5 <= R5_old;
						R6 <= R6_old;
						R7 <= R7_old;
					end
				end
				
				always_comb
				begin
				
					case (SR1_MUX)
						3'b000 : SR1_outt = R0;
						3'b001 : SR1_outt = R1;
						3'b010 : SR1_outt = R2;
						3'b011 : SR1_outt = R3;
						3'b100 : SR1_outt = R4;
						3'b101 : SR1_outt = R5;
						3'b110 : SR1_outt = R6;
						3'b111 : SR1_outt = R7;
						default:
									SR1_outt = 16'hxxxx;
					endcase
				end
				

				always_comb
				begin
				
					case (SR2)
						3'b000 : SR2_outt = R0;
						3'b001 : SR2_outt = R1;
						3'b010 : SR2_outt = R2;
						3'b011 : SR2_outt = R3;
						3'b100 : SR2_outt = R4;
						3'b101 : SR2_outt = R5;
						3'b110 : SR2_outt = R6;
						3'b111 : SR2_outt = R7;
						default : 
						SR2_outt = 16'hxxxx;
					endcase
				end
				assign SR2_out = SR2_outt;
				assign SR1_out = SR1_outt;
				
								/*
					if(DR_MUX == 3'b000)
						R0t = Data;
					else if(DR_MUX == 3'b001)
						R1t = Data;
					else if(DR_MUX == 3'b010)
						R2t = Data;
					else if(DR_MUX == 3'b011)
						R3t = Data;
					else if(DR_MUX == 3'b100)
						R4t = Data;
					else if(DR_MUX == 3'b101)
						R5t = Data;
					else if(DR_MUX == 3'b110)
						R6t = Data;
					else
						R7t = Data;
				*/
				/*
						if(SR1_MUX == 3'b000)
							SR1_outt = R0_old;
						else if(SR1_MUX == 3'b001)
							SR1_outt = R1_old;
						else if(SR1_MUX == 3'b010)
							SR1_outt = R2_old;
						else if(SR1_MUX == 3'b011)
							SR1_outt = R3_old;
						else if(SR1_MUX == 3'b100)
							SR1_outt = R4_old;
						else if(SR1_MUX == 3'b101)
							SR1_outt = R5_old;
						else if(SR1_MUX == 3'b110)
							SR1_outt = R6_old;
						else
							SR1_outt = R7_old;
				*/
								/*
				if(SR2 == 3'b000)
							SR2_outt = R0_old;
						else if(SR2 == 3'b001)
							SR2_outt = R1_old;
						else if(SR2 == 3'b010)
							SR2_outt = R2_old;
						else if(SR2 == 3'b011)
							SR2_outt = R3_old;
						else if(SR2 == 3'b100)
							SR2_outt = R4_old;
						else if(SR2 == 3'b101)
							SR2_outt = R5_old;
						else if(SR2 == 3'b110)
							SR2_outt = R6_old;
						else
							SR2_outt = R7_old;
				end
				*/
endmodule