module  color_mapper (  input   [539:0] CubeX, CubeY,       // Cube coordinates
                        input   [9:0]  CubeS,  DrawX, DrawY,            // Cube size 
                        input logic [431:0] Color_R, Color_G, Color_B,
                        output logic [7:0] VGA_R, VGA_G, VGA_B // VGA RGB output
                     );

    logic [7:0] Red, Green, Blue;
     
 /* The Cube's (pixelated) circle is generated using the standard circle formula.  Note that while 
    the single line is quite powerful descriptively, it causes the synthesis tool to use up three
    of the 12 available multipliers on the chip! Since the multiplicants are required to be signed,
    we have to first cast them from logic to int (signed by default) before they are multiplied. */
      
    int Size;
    assign Size = CubeS;
    
    assign VGA_R = Red;
    assign VGA_G = Green;
    assign VGA_B = Blue;

    always_comb
    begin
        
        if( (DrawX - CubeX[539:530]) * (DrawY - CubeY[539:530]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[431:424];
            Green = Color_G[431:424];
            Blue = Color_B[431:424];
        end
        
        else if( (DrawX - CubeX[529:520]) * (DrawY - CubeY[529:520]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[423:416];
            Green = Color_G[423:416];
            Blue = Color_B[423:416];
        end

        else if( (DrawX - CubeX[519:510]) * (DrawY - CubeY[519:510]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[415:408];
            Green = Color_G[415:408];
            Blue = Color_B[415:408];
        end

        else if( (DrawX - CubeX[509:500]) * (DrawY - CubeY[509:500]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[407:400];
            Green = Color_G[407:400];
            Blue = Color_B[407:400];
        end

        else if( (DrawX - CubeX[499:490]) * (DrawY - CubeY[499:490]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[399:392];
            Green = Color_G[399:392];
            Blue = Color_B[399:392];
        end

        else if( (DrawX - CubeX[489:480]) * (DrawY - CubeY[489:480]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[391:384];
            Green = Color_G[391:384];
            Blue = Color_B[391:384];
        end

        else if( (DrawX - CubeX[479:470]) * (DrawY - CubeY[479:470]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[383:376];
            Green = Color_G[383:376];
            Blue = Color_B[383:376];
        end

        else if( (DrawX - CubeX[469:460]) * (DrawY - CubeY[469:460]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[375:368];
            Green = Color_G[375:368];
            Blue = Color_B[375:368];
        end

        else if( (DrawX - CubeX[459:450]) * (DrawY - CubeY[459:450]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[367:360];
            Green = Color_G[367:360];
            Blue = Color_B[367:360];
        end

        else if( (DrawX - CubeX[449:440]) * (DrawY - CubeY[449:440]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[359:352];
            Green = Color_G[359:352];
            Blue = Color_B[359:352];
        end

        else if( (DrawX - CubeX[439:430]) * (DrawY - CubeY[439:430]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[351:344];
            Green = Color_G[351:344];
            Blue = Color_B[351:344];
        end

        else if( (DrawX - CubeX[429:420]) * (DrawY - CubeY[429:420]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[343:336];
            Green = Color_G[343:336];
            Blue = Color_B[343:336];
        end

        else if( (DrawX - CubeX[419:410]) * (DrawY - CubeY[419:410]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[335:328];
            Green = Color_G[335:328];
            Blue = Color_B[335:328];
        end

        else if( (DrawX - CubeX[409:400]) * (DrawY - CubeY[409:400]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[327:320];
            Green = Color_G[327:320];
            Blue = Color_B[327:320];
        end

        else if( (DrawX - CubeX[399:390]) * (DrawY - CubeY[399:390]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[319:312];
            Green = Color_G[319:312];
            Blue = Color_B[319:312];
        end

        else if( (DrawX - CubeX[389:380]) * (DrawY - CubeY[389:380]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[311:304];
            Green = Color_G[311:304];
            Blue = Color_B[311:304];
        end

        else if( (DrawX - CubeX[379:370]) * (DrawY - CubeY[379:370]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[303:296];
            Green = Color_G[303:296];
            Blue = Color_B[303:296];
        end

        else if( (DrawX - CubeX[369:360]) * (DrawY - CubeY[369:360]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[295:288];
            Green = Color_G[295:288];
            Blue = Color_B[295:288];
        end

        else if( (DrawX - CubeX[359:350]) * (DrawY - CubeY[359:350]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[287:280];
            Green = Color_G[287:280];
            Blue = Color_B[287:280];
        end

        else if( (DrawX - CubeX[349:340]) * (DrawY - CubeY[349:340]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[279:272];
            Green = Color_G[279:272];
            Blue = Color_B[279:272];
        end

        else if( (DrawX - CubeX[339:330]) * (DrawY - CubeY[339:330]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[271:264];
            Green = Color_G[271:264];
            Blue = Color_B[271:264];
        end

        else if( (DrawX - CubeX[329:320]) * (DrawY - CubeY[329:320]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[263:256];
            Green = Color_G[263:256];
            Blue = Color_B[263:256];
        end

        else if( (DrawX - CubeX[319:310]) * (DrawY - CubeY[319:310]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[255:248];
            Green = Color_G[255:248];
            Blue = Color_B[255:248];
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
