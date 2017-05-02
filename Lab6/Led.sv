module LED12Vec ( input logic LD_LED, 
				  input logic [15:0] IR,
				  output logic [11:0] LED);

				 always_comb
				 begin
					 if(LD_LED)
					 	LED = IR[11:0];
					 else
					 	LED = 12'h000;
				 end
endmodule