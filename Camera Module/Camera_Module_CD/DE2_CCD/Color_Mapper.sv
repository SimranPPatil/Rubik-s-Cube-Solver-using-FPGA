module  color_mapper (  input        [9:0] CubeX, CubeY,       // Cube coordinates
                                           CubeS,              // Cube size 
                        input logic [7:0] Color_R, Color_G, Color_B,
                                           DrawX, DrawY,       // Coordinates of current drawing pixel
                        output logic [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output
                     );
    
    
    logic Cube_on;
    logic [7:0] Red, Green, Blue;
     
 /* The Cube's (pixelated) circle is generated using the standard circle formula.  Note that while 
    the single line is quite powerful descriptively, it causes the synthesis tool to use up three
    of the 12 available multipliers on the chip! Since the multiplicants are required to be signed,
    we have to first cast them from logic to int (signed by default) before they are multiplied. */
      
    int DistX, DistY, Size;
    assign DistX = 2*(DrawX - CubeX);
    assign DistY = 2*(DrawY - CubeY);
    assign Size = CubeS;
    
    assign VGA_R = Red;
    assign VGA_G = Green;
    assign VGA_B = Blue;
    
    // Compute whether the pixel corresponds to Cube or background
    always_comb
    begin : Cube_on_proc
        if ( ( DistX*DistY) <= (Size * Size) ) 
            Cube_on = 1'b1;
        else 
            Cube_on = 1'b0;
    end
    
    // Assign color based on Cube_on signal
    always_comb
    begin : RGB_Display
        if ((Cube_on == 1'b1)) 
        begin
            // White Cube
            Red = Color_R;
            Green = Color_G;
            Blue = Color_B;
        end
        else 
        begin
            // White Background
            Red = 8'hff;
            Green = 8'hff;
            Blue = 8'hff;
        end
    end 
    
endmodule
