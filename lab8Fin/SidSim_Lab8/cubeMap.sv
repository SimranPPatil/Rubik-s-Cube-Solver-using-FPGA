module  Cube ( input         Reset, 
                             frame_clk,          // The clock indicating a new frame (~60Hz)
               input logic [6:0] indexedForLocation,
               output [9:0]  CubeX, CubeY, CubeS // Cube coordinates and size
              );
    
    logic [9:0] Cube_X_Pos,  Cube_Y_Pos;
    logic [9:0] Cube_X_Pos_in, Cube_Y_Pos_in;
     
    parameter [9:0] Cube_X_Center=320;  // Center position on the X axis
    parameter [9:0] Cube_Y_Center=240;  // Center position on the Y axis
    parameter [9:0] Cube_X_Min=0;       // Leftmost point on the X axis
    parameter [9:0] Cube_X_Max=639;     // Rightmost point on the X axis
    parameter [9:0] Cube_Y_Min=0;       // Topmost point on the Y axis
    parameter [9:0] Cube_Y_Max=479;     // Bottommost point on the Y axis
    parameter [9:0] Cube_Size = 4;        // Ball size
    
    assign CubeX = Cube_X_Pos;
    assign CubeY = Cube_Y_Pos;
    assign CubeS = Cube_Size;
    
    always_ff @ (posedge frame_clk or posedge Reset)
    begin
        if (Reset)
        begin
            Cube_X_Pos <= Cube_X_Center;
            Cube_Y_Pos <= Cube_Y_Center;
        end
        else 
        begin
            Cube_X_Pos <= Cube_X_Pos_in;
            Cube_Y_Pos <= Cube_Y_Pos_in;
        end
    end
    
    always_comb
    begin
        
         // Be careful when using comparators with "logic" datatype becuase compiler treats 
        //   both sides of the operator UNSIGNED numbers. (unless with further type casting)
        // e.g. Cube_Y_Pos - Cube_Size <= Cube_Y_Min 
        // If Cube_Y_Pos is 0, then Cube_Y_Pos - Cube_Size will not be -4, but rather a large positive number.
    

    end
    
endmodule
