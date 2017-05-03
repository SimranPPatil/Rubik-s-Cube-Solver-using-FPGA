module fontFSM 	( 	input logic Clk, Reset, printing, Execute, 
					input logic [2:0] to_hw_sig_font,
					input logic [29:0] to_hw_port_font,
					output logic [29:0] to_sw_port_font,
					output logic [2:0] to_sw_sig_font);

enum logic [2:0] {  ResetState, Wait, Retrieve
				 }  curr_state, next_state; 


always_ff @ (posedge Clk)  
    begin
        if (Reset)
            curr_state <= ResetState;
        else 
            curr_state <= next_state;
    end

always_comb
    begin 
		next_state  = curr_state;	
        unique case (curr_state) 
        	
        	ResetState: next_state = Wait;
			
			Wait:	if(to_hw_sig_font == 3'd5)
        				next_state = Retrieve;
        	Retrieve: if(to_hw_sig_font == 3'd6)
        				next_state = Wait;
        endcase

        unique case (curr_state) 
	   		
	   		ResetState: 
	   			begin
	   				to_sw_sig_font = 3'd3;
	   			end

	   		Wait: 
	   			begin
	   				to_sw_sig_font = 3'd0;
	   			end

	   		Retrieve:
	   			begin
	   				to_sw_sig_font = 3'd1;
	   			end
	   	endcase
endmodule