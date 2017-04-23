// ************************************************************
// Copyright (c) 2005 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use this code for use
//   in synthesis for all Terasic Development Boards and Altrea Development 
//   Kits.  Other use of this code, including the selling or duplication 
//   of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// This is the top level module of TREX Control Panel
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V0.9 :| S P               :| 04/11/05  :| 
// -------------------------------------------------------------

module SEG7_Driver(oSEG,oCOM,iDIG,iCLK,iRST_n);
input [15:0] iDIG;		//  4 Digital Hex
input iCLK,iRST_n;
output reg [7:0] oSEG;	//	7-SEG LED output
output reg [3:0] oCOM;	//	7-SEG COM output
reg [31:0] Cont_DIV;	//	Scan Clock DIV Counter
reg [3:0] mDEC_in;		//	Hex To 7-SEG Dec reg
reg [1:0] mSCAN;		//	Scan Order Counter
reg mSCAN_CLK;			//	Scan Clock

parameter iCLK_Freq = 50000000;	//	50 MHz
//parameter iCLK_Freq = 27000000;	//	27 MHz

//	Scan Clock Generator
always@(posedge iCLK or negedge iRST_n)
begin
	if(!iRST_n)
	begin
		Cont_DIV<=0;
		mSCAN_CLK<=0;
	end
	else
	begin
		if(Cont_DIV < (iCLK_Freq>>10) )
		Cont_DIV<=Cont_DIV+1;
		else
		begin
			Cont_DIV<=0;
			mSCAN_CLK<=~mSCAN_CLK;
		end
	end
end

//	Scan Order Generator
always@(posedge mSCAN_CLK)	mSCAN	<=	mSCAN + 1'b1;

//	Hex To 7-SEG Decoder
always@(mSCAN)
begin
		case(mSCAN)
		0:	mDEC_in	<=	iDIG[3:0];
		1:	mDEC_in	<=	iDIG[7:4];
		2:	mDEC_in	<=	iDIG[11:8];
		3:	mDEC_in	<=	iDIG[15:12];
		endcase
		
		case(mSCAN)
		0:	oCOM	<=	4'b1110;
		1:	oCOM	<=	4'b1101;
		2:	oCOM	<=	4'b1011;
		3:	oCOM	<=	4'b0111;
		endcase	
		
end

always@(mDEC_in or oCOM)
begin
	case(mDEC_in)
			4'h0: oSEG = 8'h90;
			4'h1: oSEG = 8'h9f;
			4'h2: oSEG = 8'h58;
			4'h3: oSEG = 8'h19;
			4'h4: oSEG = 8'h17;
			4'h5: oSEG = 8'h31;
			4'h6: oSEG = 8'h30;
			4'h7: oSEG = 8'h9d;
			4'h8: oSEG = 8'h10;
			4'h9: oSEG = 8'h15;
			4'ha: oSEG = 8'h14;
			4'hb: oSEG = 8'h32;
			4'hc: oSEG = 8'hf0;
			4'hd: oSEG = 8'h1a;
			4'he: oSEG = 8'h70;
			4'hf: oSEG = 8'h74;
	endcase
end

endmodule