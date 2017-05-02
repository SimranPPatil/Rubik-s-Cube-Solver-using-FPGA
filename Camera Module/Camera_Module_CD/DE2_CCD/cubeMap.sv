module  Cube ( input         Reset, 
                             frame_clk,          // The clock indicating a new frame (~60Hz)
               input logic [6:0] index,
               input logic [29:0] Color_in,
               output [9:0]  CubeX, CubeY, CubeS, // CubeX and CubeY are the center coordinates for the blocks
               output logic [29:0] Color_out
              );
    
    logic [9:0] Cube_X_Pos,  Cube_Y_Pos;
    logic [9:0] Cube_X_Pos_in, Cube_Y_Pos_in;
     
    parameter [9:0] Cube_X_Center=320;  // Center position on the X axis
    parameter [9:0] Cube_Y_Center=240;  // Center position on the Y axis
    parameter [9:0] Cube_X_Min=0;       // Leftmost point on the X axis
    parameter [9:0] Cube_X_Max=639;     // Rightmost point on the X axis
    parameter [9:0] Cube_Y_Min=0;       // Topmost point on the Y axis
    parameter [9:0] Cube_Y_Max=479;     // Bottommost point on the Y axis
    parameter [9:0] Cube_Size = 4;      // Block size
    
    assign CubeX = Cube_X_Pos;
    assign CubeY = Cube_Y_Pos;
    assign CubeS = Cube_Size;
    
    always_ff @ (posedge frame_clk or posedge Reset)
    begin
        if (Reset)
        begin
            Cube_X_Pos <= Cube_X_Center;
            Cube_Y_Pos <= Cube_Y_Center;
            Color_out <= 30'hffffffff;
        end
        else 
        begin
            Cube_X_Pos <= Cube_X_Pos_in;
            Cube_Y_Pos <= Cube_Y_Pos_in;
            Color_out <= Color_in;
        end
    end
    
    always_comb
    begin
        
         // Be careful when using comparators with "logic" datatype becuase compiler treats 
        //   both sides of the operator UNSIGNED numbers. (unless with further type casting)
        // e.g. Cube_Y_Pos - Cube_Size <= Cube_Y_Min 
        // If Cube_Y_Pos is 0, then Cube_Y_Pos - Cube_Size will not be -4, but rather a large positive number.

        unique case (index)

            // U --> (0 to 8)

            7'd0 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd6;
            end

            7'd1 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd6;
            end

            7'd2 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd6;
            end

            7'd3 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd10;
            end

            7'd4 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd10;
            end

            7'd5 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd10;
            end

            7'd6 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd14;
            end

            7'd7 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd14;
            end

            7'd8 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd14;
            end

            // D --> (9 to 17)

            7'd9 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd30;
            end

            7'd10 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd30;
            end

            7'd11 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd30;
            end

            7'd12 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd34;
            end

            7'd13 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd34;
            end

            7'd14 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd34;
            end

            7'd15 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd38;
            end

            7'd16 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd38;
            end

            7'd17 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd38;
            end

            // B --> (18 to 26)

            7'd18 : 
            begin
                Cube_X_Pos_in = 10'd40;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd19 : 
            begin
                Cube_X_Pos_in = 10'd44;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd20 : 
            begin
                Cube_X_Pos_in = 10'd48;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd21 : 
            begin
                Cube_X_Pos_in = 10'd40;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd22 : 
            begin
                Cube_X_Pos_in = 10'd44;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd23 : 
            begin
                Cube_X_Pos_in = 10'd48;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd24 : 
            begin
                Cube_X_Pos_in = 10'd40;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd25 : 
            begin
                Cube_X_Pos_in = 10'd44;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd26 : 
            begin
                Cube_X_Pos_in = 10'd48;
                Cube_Y_Pos_in = 10'd26;
            end

            // F --> (27 to 35)

            7'd27 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd28 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd29 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd30 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd31 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd32 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd33 : 
            begin
                Cube_X_Pos_in = 10'd16;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd34 : 
            begin
                Cube_X_Pos_in = 10'd20;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd35 : 
            begin
                Cube_X_Pos_in = 10'd24;
                Cube_Y_Pos_in = 10'd26;
            end

            // L --> (36 to 44)

            7'd36 : 
            begin
                Cube_X_Pos_in = 10'd4;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd37 : 
            begin
                Cube_X_Pos_in = 10'd8;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd38 : 
            begin
                Cube_X_Pos_in = 10'd12;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd39 : 
            begin
                Cube_X_Pos_in = 10'd4;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd40 : 
            begin
                Cube_X_Pos_in = 10'd8;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd41 : 
            begin
                Cube_X_Pos_in = 10'd12;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd42 : 
            begin
                Cube_X_Pos_in = 10'd4;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd43 : 
            begin
                Cube_X_Pos_in = 10'd8;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd44 : 
            begin
                Cube_X_Pos_in = 10'd12;
                Cube_Y_Pos_in = 10'd26;
            end

            // R --> (45 to 53)

            7'd45 : 
            begin
                Cube_X_Pos_in = 10'd28;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd46 : 
            begin
                Cube_X_Pos_in = 10'd32;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd47 : 
            begin
                Cube_X_Pos_in = 10'd36;
                Cube_Y_Pos_in = 10'd18;
            end

            7'd48 : 
            begin
                Cube_X_Pos_in = 10'd28;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd49 : 
            begin
                Cube_X_Pos_in = 10'd32;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd50 : 
            begin
                Cube_X_Pos_in = 10'd36;
                Cube_Y_Pos_in = 10'd22;
            end

            7'd51 : 
            begin
                Cube_X_Pos_in = 10'd28;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd52 : 
            begin
                Cube_X_Pos_in = 10'd32;
                Cube_Y_Pos_in = 10'd26;
            end

            7'd53 : 
            begin
                Cube_X_Pos_in = 10'd36;
                Cube_Y_Pos_in = 10'd26;
            end

        endcase
    end
    
endmodule
