module feedEncrypt(input logic [1:0] num,
						 input logic [31:0] out_32,
						 input logic[127:0] en_in,
						 output logic [127:0] encrypt
						 );
			
			always_comb
			begin
			if(num == 2'b00)
				encrypt = {out_32, en_in[95:0]};
			else if(num == 2'b01)
				encrypt = {en_in[127:96], out_32, en_in[63:0]};
			else if(num == 2'b10)
				encrypt = {en_in[127:64], out_32, en_in[31:0]};
			else
				encrypt = {en_in[127:32], out_32};
			end 
			
						 
endmodule