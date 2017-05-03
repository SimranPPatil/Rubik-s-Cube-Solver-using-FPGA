module VGA_fsm (input logic Clk, Reset, Execute,
				input logic [9:0] X_in, Y_in, DrawX, DrawY,
				output logic [9:0] X_out, Y_out, CubeS,
				output logic [7:0] R,G,B);

	always_ff @(posedge Clk)
	begin
		if(Reset)
			begin
				X_out <= 10'h0000;
				Y_out <= 10'h0000;
			end
		else
			begin
				X_out <= X_in;
				Y_out <= Y_in;
			end
	end

	enum logic [7:0] {  ResetState, Halt, 
						U0_X, U1_X, U2_X, U3_X, U4_X, U5_X, U6_X, U7_X, U8_X,
						D0_X, D1_X, D2_X, D3_X, D4_X, D5_X, D6_X, D7_X, D8_X,
						B0_X, B1_X, B2_X, B3_X, B4_X, B5_X, B6_X, B7_X, B8_X,
						F0_X, F1_X, F2_X, F3_X, F4_X, F5_X, F6_X, F7_X, F8_X,
						L0_X, L1_X, L2_X, L3_X, L4_X, L5_X, L6_X, L7_X, L8_X,
						R0_X, R1_X, R2_X, R3_X, R4_X, R5_X, R6_X, R7_X, R8_X,
						U0_Y, U1_Y, U2_Y, U3_Y, U4_Y, U5_Y, U6_Y, U7_Y, U8_Y,
						D0_Y, D1_Y, D2_Y, D3_Y, D4_Y, D5_Y, D6_Y, D7_Y, D8_Y,
						B0_Y, B1_Y, B2_Y, B3_Y, B4_Y, B5_Y, B6_Y, B7_Y, B8_Y,
						F0_Y, F1_Y, F2_Y, F3_Y, F4_Y, F5_Y, F6_Y, F7_Y, F8_Y,
						L0_Y, L1_Y, L2_Y, L3_Y, L4_Y, L5_Y, L6_Y, L7_Y, L8_Y,
						R0_Y, R1_Y, R2_Y, R3_Y, R4_Y, R5_Y, R6_Y, R7_Y, R8_Y
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
        	
        	ResetState	: if(Execute)
        					next_state = U0;

        	U0 				: if( DrawX < X_in + CubeS && DrawY < Y_in + CubeS)
        							next_state  = curr_state;
        					  else 
        					  		next_state  = U1;

        	U1_X			: if(X_in + CubeS == DrawX )
        							next_state = U2_X;

        	U2_X			: if(X_in + CubeS == DrawX )
        							next_state = U3_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	U0_X			: if(X_in + CubeS == DrawX )
        							next_state = U1_X;

        	


        endcase
    end


endmodule