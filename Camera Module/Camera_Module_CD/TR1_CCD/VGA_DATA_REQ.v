module VGA_DATA_REQ(	oREQ,
						iADDR,
						iCLK,
						iRST	);
input	[9:0]	iADDR;
input			iCLK;
input			iRST;
output			oREQ;
reg		[9:0]	Pre_ADDR;
reg				REQ;

assign	oREQ	=	REQ;

always@(posedge iCLK or negedge iRST)
begin
	if(!iRST)
	begin
		Pre_ADDR	<=	0;
		REQ		<=	0;
	end
	else
	begin
		Pre_ADDR	<=	iADDR;
		if(Pre_ADDR!=iADDR)
		REQ	<=	1;
		else
		REQ	<=	0;
	end
end

endmodule