module ControlUnit ( input logic Clk, Reset, Execute, Face, 
					 output logic gc , ds , cs, cc, algstart, init, facedone
					);

enum logic [5:0] {  ResetState, Stop_1, Stop_2, Stop_3, Stop_4, Stop_5, Stop_6, Halt, initState,
					DetectStart_1, GetCenters_1, ColorDetection_1, ColorChecker_1,
					DetectStart_2, GetCenters_2, ColorDetection_2, ColorChecker_2,
					DetectStart_3, GetCenters_3, ColorDetection_3, ColorChecker_3,
					DetectStart_4, GetCenters_4, ColorDetection_4, ColorChecker_4,
					DetectStart_5, GetCenters_5, ColorDetection_5, ColorChecker_5,
					DetectStart_6, GetCenters_6, ColorDetection_6, ColorChecker_6 }   curr_state, next_state; 


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

            ResetState 			:    if (Execute)
                       					next_state = initState;
            initState			: 	 next_state = DetectStart_1;
            DetectStart_1 		:    next_state = GetCenters_1;
            GetCenters_1 		:    next_state = ColorDetection_1;
            ColorDetection_1 	:    next_state = ColorChecker_1;
            ColorChecker_1 		:	 next_state = Stop_1;
            Stop_1				:    if (Face)
                       					next_state = DetectStart_2;

			DetectStart_2 		:    next_state = GetCenters_2;
            GetCenters_2 		:    next_state = ColorDetection_2;
            ColorDetection_2 	:    next_state = ColorChecker_2;
            ColorChecker_2 		:	 next_state = Stop_2;
            Stop_2				:    if (Face)
                       					next_state = DetectStart_3;

            DetectStart_3 		:    next_state = GetCenters_3;
            GetCenters_3 		:    next_state = ColorDetection_3;
            ColorDetection_3 	:    next_state = ColorChecker_3;
            ColorChecker_3 		:	 next_state = Stop_3;
            Stop_3				:    if (Face)
                       					next_state = DetectStart_4;

            DetectStart_4 		:    next_state = GetCenters_4;
            GetCenters_4 		:    next_state = ColorDetection_4;
            ColorDetection_4 	:    next_state = ColorChecker_4;
            ColorChecker_4 		:	 next_state = Stop_4;
            Stop_4				:    if (Face)
                       					next_state = DetectStart_5;

            DetectStart_5 		:    next_state = GetCenters_5;
            GetCenters_5 		:    next_state = ColorDetection_5;
            ColorDetection_5 	:    next_state = ColorChecker_5;
            ColorChecker_5 		:	 next_state = Stop_5;
            Stop_5				:    if (Face)
                       					next_state = DetectStart_6;

            DetectStart_6 		:    next_state = GetCenters_6;
            GetCenters_6 		:    next_state = ColorDetection_6;
            ColorDetection_6 	:    next_state = ColorChecker_6;
            ColorChecker_6 		:	 next_state = Stop_6;
            Stop_6				:    Halt
  			
  			Halt				:	 if (~Execute)
            							next_state = ResetState;
        endcase
   
       	gc = 1'b0;				// GetCenter
       	ds = 1'b0;				// DetectStart
       	cs = 1'b0;				// ColorStored
       	cc = 1'b0;				// ColorCheck
       	algstart = 1'b0;
       	facedone = 1'b0;
       	init = 1'b0;

        case (curr_state) 
	   		
	   		ResetState: 
	   			begin
	   				gc = 1'b0;				// GetCenter
			       	ds = 1'b0;				// DetectStart
			       	cs = 1'b0;				// ColorStored
			       	cc = 1'b0;				// ColorCheck
			       	algstart = 1'b0;
			       	init = 1'b0;
	   			end

	   		initState:
	   			begin
	   				init = 1'b1;
	   			end
	   		
	   		DetectStart_1: 
	   			begin
	   				ds = 1'b1;
	   			end
	   		GetCenters_1: 
	   			begin
	   				gc = 1'b1;
	   			end
	   		ColorDetection_1: 
	   			begin
	   				cs = 1'b1;
	   			end
	   		ColorChecker_1: 
	   			begin
	   				cc = 1'b1;
	   			end
	   		Stop_1: 
	   			begin
	   				facedone = 1'b1;
	   			end

	   		DetectStart_2: 
	   			begin
	   				ds = 1'b1;
	   			end
	   		GetCenters_2: 
	   			begin
	   				gc = 1'b1;
	   			end
	   		ColorDetection_2: 
	   			begin
	   				cs = 1'b1;
	   			end
	   		ColorChecker_2: 
	   			begin
	   				cc = 1'b1;
	   			end
	   		Stop_2: 
	   			begin
	   				facedone = 1'b1;
	   			end

	   		DetectStart_3: 
	   			begin
	   				ds = 1'b1;
	   			end
	   		GetCenters_3: 
	   			begin
	   				gc = 1'b1;
	   			end
	   		ColorDetection_3: 
	   			begin
	   				cs = 1'b1;
	   			end
	   		ColorChecker_3: 
	   			begin
	   				cc = 1'b1;
	   			end
	   		Stop_3: 
	   			begin
	   				facedone = 1'b1;
	   			end

	   		DetectStart_4: 
	   			begin
	   				ds = 1'b1;
	   			end
	   		GetCenters_4: 
	   			begin
	   				gc = 1'b1;
	   			end
	   		ColorDetection_4: 
	   			begin
	   				cs = 1'b1;
	   			end
	   		ColorChecker_4: 
	   			begin
	   				cc = 1'b1;
	   			end
	   		Stop_4: 
	   			begin
	   				facedone = 1'b1;
	   			end

	   		DetectStart_5: 
	   			begin
	   				ds = 1'b1;
	   			end
	   		GetCenters_5: 
	   			begin
	   				gc = 1'b1;
	   			end
	   		ColorDetection_5: 
	   			begin
	   				cs = 1'b1;
	   			end
	   		ColorChecker_5: 
	   			begin
	   				cc = 1'b1;
	   			end
	   		Stop_5: 
	   			begin
	   				facedone = 1'b1;
	   			end

	   		DetectStart_6: 
	   			begin
	   				ds = 1'b1;
	   			end
	   		GetCenters_6: 
	   			begin
	   				gc = 1'b1;
	   			end
	   		ColorDetection_6: 
	   			begin
	   				cs = 1'b1;
	   			end
	   		ColorChecker_6: 
	   			begin
	   				cc = 1'b1;
	   			end
	   		Stop_6: 
	   			begin
	   				facedone = 1'b1;
	   			end

	   		Halt:
	   			begin
	   				algstart = 1'b1;
	   			end

			default:  
		      begin 
                gc = 1'b0;				// GetCenter
		       	ds = 1'b0;				// DetectStart
		       	cs = 1'b0;				// ColorStored
		       	cc = 1'b0;				// ColorCheck
		       	algstart = 1'b0;
		       	init = 1'b0;
		       	facedone = 1'b0;
		      end
        
        endcase
    end

endmodule
