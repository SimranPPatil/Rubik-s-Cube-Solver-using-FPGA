module  font_mapper (   input        [9:0] FontX, FontY,       // Font coordinates
                                           DrawX, DrawY,
                        input        [9:0] N,
                        input logic [7:0] R, G, B,
                        output logic [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output
                     );
    
    
    logic Font_on;
    logic [7:0] Red, Green, Blue;
    logic [10:0] shape_x = FontX;
    logic [10:0] shape_y = FontY;
    logic [10:0] shape_size_x = 8;
    logic [10:0] shape_size_y = 16;

    logic [10:0] sprite_addr;
    logic [7:0] sprite_data;
    font_rom(.addr(sprite_addr), .data(sprite_data));

     
 /* The Font's (pixelated) circle is generated using the standard circle formula.  Note that while 
    the single line is quite powerful descriptively, it causes the synthesis tool to use up three
    of the 12 available multipliers on the chip! Since the multiplicants are required to be signed,
    we have to first cast them from logic to int (signed by default) before they are multiplied. */
    
    assign VGA_R = Red;
    assign VGA_G = Green;
    assign VGA_B = Blue;
    
    always_comb
    begin : Font_on_proc
        if ( DrawX >= shape_x && DrawX <= shape_x + shape_size_x && DrawY >= shape_y && DrawY < shape_y + shape_size_y  ) 
        begin
             Font_on = 1'b1;
             sprite_addr = (DrawY - shape_y + 16*N)
        end
        else 
        begin
             Font_on = 1'b0;
             sprite_addr = 10'b0;
        end
    end
    
    always_comb
    begin : RGB_Display
        if ((Font_on == 1'b1) && sprite_data[ DrawX - shape_x ] == 1'b1) 
        begin
            Red = R;
            Green = G;
            Blue = B;
        end
        else 
        begin
            Red = 8'hff;
            Green = 8'hff;
            Blue = 8'hff;
        end
    end 
    
endmodule
