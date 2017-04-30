module io_module (	input logic Clk, Reset, ready, Execute, 
					input logic [1:0] to_hw_sig,
					input logic [29:0] to_hw_port,
					input logic [5:0] FaceNum,
					input logic [29:0] 	Color1,
										Color2,
										Color3,
										Color4,
										Color5,
										Color6,
										Color7,
										Color8,
										Color9,
					output logic Face,
					output logic [29:0] to_sw_port,
					output logic [1:0] to_sw_sig
				);

enum logic [5:0] {  ResetState, Wait, SendToRubik, GetFromRubik, 
					SendBack_0, SendBack_1, SendBack_2, SendBack_3, SendBack_4, SendBack_5, SendBack_6, SendBack_7, SendBack_8, SendBack_9,
					GotAck_0, GotAck_1, GotAck_2, GotAck_3, GotAck_4, GotAck_5, GotAck_6, GotAck_7, GotAck_8, GotAck_9
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

            ResetState 			:   next_state = Wait;
            
            Wait 				:	if(to_hw_sig == 2'd3)
            							next_state = SendToRubik;
            SendToRubik			:	if(ready)
            							next_state = GetFromRubik;
            GetFromRubik		: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_0;
            SendBack_0			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_0;
            SendBack_1			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_1;
            SendBack_2			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_2;
            SendBack_3			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_3;
            SendBack_4			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_4;
            SendBack_5			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_5;
            SendBack_6			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_6;
            SendBack_7			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_7;
            SendBack_8			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_8;
            SendBack_9			: 	if(to_hw_sig == 2'd2)
            							next_state = GotAck_9;
            GotAck_0			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_1;
            GotAck_1			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_2;
            GotAck_2			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_3;
            GotAck_3			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_4;
            GotAck_4			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_5;
            GotAck_5			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_6;
            GotAck_6			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_7;
            GotAck_7			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_8;
            GotAck_8			: 	if(to_hw_sig == 2'd1)
            							next_state = SendBack_9;
            GotAck_9			: 	if(to_hw_sig == 2'd1)
            							next_state = Wait;
        endcase
   
       	Face = 1'b0;				
       	to_sw_port = 30'b0;				
       	to_sw_sig = 2'b0;			
       	
        unique case (curr_state) 
	   		
	   		ResetState: 
	   			begin
	   				to_sw_sig = 2'd3;
	   			end

	   		Wait: 
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		SendBack_0:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_1:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_2:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_3:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_4:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_5:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_6:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_7:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_8:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		SendBack_9:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		GotAck_0:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_1:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_2:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_3:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_4:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_5:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_6:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_7:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_8:
	   			begin
	   				to_sw_sig = 2'd0;
	   			end

	   		GotAck_9:
	   			begin
	   				to_sw_sig = 2'd0;
	   				Face = 1'b1;
	   			end

	   		SendToRubik:
	   			begin
	   				to_sw_sig = 2'd1;
	   			end

	   		GetFromRubik:
	   			begin
	   				to_sw_sig = 2'd2;
	   			end

			default:  
		      begin 
                	Face = 1'b0;				
       				to_sw_port = 30'b0;				
       				to_sw_sig = 2'b0;
		      end
        endcase

        unique case (curr_state)

        	SendBack_0:
	   			begin
	   				to_sw_port = FaceNum;
	   			end

        	SendBack_1:
	   			begin
	   				to_sw_port = Color1;
	   			end

	   		SendBack_2:
	   			begin
	   				to_sw_port = Color2;
	   			end

	   		SendBack_3:
	   			begin
	   				to_sw_port = Color3;
	   			end

	   		SendBack_4:
	   			begin
	   				to_sw_port = Color4;
	   			end

	   		SendBack_5:
	   			begin
	   				to_sw_port = Color5;
	   			end

	   		SendBack_6:
	   			begin
	   				to_sw_port = Color6;
	   			end

	   		SendBack_7:
	   			begin
	   				to_sw_port = Color7;
	   			end

	   		SendBack_8:
	   			begin
	   				to_sw_port = Color8;
	   			end

	   		SendBack_9:
	   			begin
	   				to_sw_port = Color9;
	   			end
	   	endcase
    end

endmodule