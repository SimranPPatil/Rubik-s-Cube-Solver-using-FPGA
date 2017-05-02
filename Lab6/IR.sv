module IR (input logic Clk, LD_IR, Reset,
			  input logic [15:0] IR_datapath, IR_old,
			  output logic [15:0] IR);
			  
		logic [15:0] IR_temp;
		always_comb
		begin
		if(Reset)
			IR_temp = 16'h0000;
		else
		begin
			if(LD_IR)
				IR_temp = IR_datapath;
			else IR_temp = IR_old;
		end
		end
		always_ff @(posedge Clk)
		begin
			IR = IR_temp;
		end

endmodule