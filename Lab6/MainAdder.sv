module MainAdder ( input logic  Clk,ADDR1MUX,
				   input logic [15:0] IR, SR1_in, PC_in,
				   input logic [1:0] ADDR2MUX,
				   output logic [15:0] Adder_out );

				   logic [15:0] in0, in1, in2, in3, ADDR2_outt, ADDR1_outt;
				   
					always_comb
				   begin
				   if(IR[5] == 1'b1)
						in1 = {10'b1111111111, IR[5:0]};
					else
						in1 = {10'b0000000000, IR[5:0]};
					end
				   //SEXT #(.N(5), .M(15)) data1 ( .Clk(Clk), .data_in(IR[5:0]), .data_out(in1) );
				   always_comb
				   begin
				   if(IR[8] == 1'b1)
						in2 = {7'b1111111, IR[8:0]};
					else
						in2 = {7'b0000000, IR[8:0]};
				   end
					//SEXT #(.N(8), .M(15)) data2 ( .Clk(Clk), .data_in(IR[8:0]), .data_out(in2) );
				   always_comb
				   begin
					if(IR[10] == 1'b1)
						in3 = {5'b11111, IR[10:0]};
					else
						in3 = {5'b00000, IR[10:0]};
						
					in0 = 16'h0000;
				   end
				   //SEXT #(.N(10), .M(15)) data3 ( .Clk(Clk), .data_in(IR[10:0]), .data_out(in3) );
				   
					always_comb
				   begin
					if(ADDR2MUX == 2'b00)
						ADDR2_outt = in0;
					else if(ADDR2MUX == 2'b01)
						ADDR2_outt = in1;
					else if(ADDR2MUX == 2'b10)
						ADDR2_outt = in2;
					else if(ADDR2MUX == 2'b11)
						ADDR2_outt = in3;
					else 
						ADDR2_outt = 16'hxxxx;
					end
					
					always_comb
				   begin
					if(ADDR1MUX)
						ADDR1_outt = PC_in;
					else
						ADDR1_outt = SR1_in;
				   end
					
					assign Adder_out = ADDR2_outt + ADDR1_outt;
endmodule