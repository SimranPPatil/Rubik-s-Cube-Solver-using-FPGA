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

        else if( (DrawX - CubeX[309:300]) * (DrawY - CubeY[309:300]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[247:240];
            Green = Color_G[247:240];
            Blue = Color_B[247:240];
        end

        else if( (DrawX - CubeX[299:290]) * (DrawY - CubeY[299:290]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[239:232];
            Green = Color_G[239:232];
            Blue = Color_B[239:232];
        end

        else if( (DrawX - CubeX[289:280]) * (DrawY - CubeY[289:280]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[231:224];
            Green = Color_G[231:224];
            Blue = Color_B[231:224];
        end

        else if( (DrawX - CubeX[279:270]) * (DrawY - CubeY[279:270]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[223:216];
            Green = Color_G[223:216];
            Blue = Color_B[223:216];
        end

        else if( (DrawX - CubeX[269:260]) * (DrawY - CubeY[269:260]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[215:208];
            Green = Color_G[215:208];
            Blue = Color_B[215:208];
        end

        else if( (DrawX - CubeX[259:250]) * (DrawY - CubeY[259:250]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[207:200];
            Green = Color_G[207:200];
            Blue = Color_B[207:200];
        end

        else if( (DrawX - CubeX[249:240]) * (DrawY - CubeY[249:240]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[199:192];
            Green = Color_G[199:192];
            Blue = Color_B[199:192];
        end

        else if( (DrawX - CubeX[239:230]) * (DrawY - CubeY[239:230]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[191:184];
            Green = Color_G[191:184];
            Blue = Color_B[191:184];
        end

        else if( (DrawX - CubeX[229:220]) * (DrawY - CubeY[229:220]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[183:176];
            Green = Color_G[183:176];
            Blue = Color_B[183:176];
        end

        else if( (DrawX - CubeX[219:210]) * (DrawY - CubeY[219:210]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[175:168];
            Green = Color_G[175:168];
            Blue = Color_B[175:168];
        end

        else if( (DrawX - CubeX[209:200]) * (DrawY - CubeY[209:200]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[167:160];
            Green = Color_G[167:160];
            Blue = Color_B[167:160];
        end

        else if( (DrawX - CubeX[199:190]) * (DrawY - CubeY[199:190]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[159:152];
            Green = Color_G[159:152];
            Blue = Color_B[159:152];
        end

        else if( (DrawX - CubeX[189:180]) * (DrawY - CubeY[189:180]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[151:144];
            Green = Color_G[151:144];
            Blue = Color_B[151:144];
        end

        else if( (DrawX - CubeX[179:170]) * (DrawY - CubeY[179:170]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[143:136];
            Green = Color_G[143:136];
            Blue = Color_B[143:136];
        end

        else if( (DrawX - CubeX[169:160]) * (DrawY - CubeY[169:160]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[135:128];
            Green = Color_G[135:128];
            Blue = Color_B[135:128];
        end

        else if( (DrawX - CubeX[159:150]) * (DrawY - CubeY[159:150]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[127:120];
            Green = Color_G[127:120];
            Blue = Color_B[127:120];
        end

        else if( (DrawX - CubeX[149:140]) * (DrawY - CubeY[149:140]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[119:112];
            Green = Color_G[119:112];
            Blue = Color_B[119:112];
        end

        else if( (DrawX - CubeX[139:130]) * (DrawY - CubeY[139:130]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[111:104];
            Green = Color_G[111:104];
            Blue = Color_B[111:104];
        end

        else if( (DrawX - CubeX[129:120]) * (DrawY - CubeY[129:120]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[103:96];
            Green = Color_G[103:96];
            Blue = Color_B[103:96];
        end

        else if( (DrawX - CubeX[119:110]) * (DrawY - CubeY[119:110]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[95:88];
            Green = Color_G[95:88];
            Blue = Color_B[95:88];
        end

        else if( (DrawX - CubeX[109:100]) * (DrawY - CubeY[109:100]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[87:80];
            Green = Color_G[87:80];
            Blue = Color_B[87:80];
        end

        else if( (DrawX - CubeX[99:90]) * (DrawY - CubeY[99:90]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[79:72];
            Green = Color_G[79:72];
            Blue = Color_B[79:72];
        end

        else if( (DrawX - CubeX[89:80]) * (DrawY - CubeY[89:80]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[71:64];
            Green = Color_G[71:64];
            Blue = Color_B[71:64];
        end

        else if( (DrawX - CubeX[79:70]) * (DrawY - CubeY[79:70]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[63:56];
            Green = Color_G[63:56];
            Blue = Color_B[63:56];
        end

        else if( (DrawX - CubeX[69:60]) * (DrawY - CubeY[69:60]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[55:48];
            Green = Color_G[55:48];
            Blue = Color_B[55:48];
        end

        else if( (DrawX - CubeX[59:50]) * (DrawY - CubeY[59:50]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[47:40];
            Green = Color_G[47:40];
            Blue = Color_B[47:40];
        end

        else if( (DrawX - CubeX[49:40]) * (DrawY - CubeY[49:40]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[39:32];
            Green = Color_G[39:32];
            Blue = Color_B[39:32];
        end

        else if( (DrawX - CubeX[39:30]) * (DrawY - CubeY[39:30]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[31:24];
            Green = Color_G[31:24];
            Blue = Color_B[31:24];
        end

        else if( (DrawX - CubeX[29:20]) * (DrawY - CubeY[29:20]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[23:16];
            Green = Color_G[23:16];
            Blue = Color_B[23:16];
        end

        else if( (DrawX - CubeX[19:10]) * (DrawY - CubeY[19:10]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[15:8];
            Green = Color_G[15:8];
            Blue = Color_B[15:8];
        end

        else if( (DrawX - CubeX[9:0]) * (DrawY - CubeY[9:0]) <= (Size * Size) )
        begin
            // Color Cube
            Red = Color_R[7:0];
            Green = Color_G[7:0];
            Blue = Color_B[7:0];
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
