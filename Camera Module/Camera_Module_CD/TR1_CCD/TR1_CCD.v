// --------------------------------------------------------------------
// Copyright (c) 2005 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
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
// Major Functions:	TR1 CMOS Camera Demo
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny Chen       :| 05/01/09  :| Initial Revision
//   V1.1 :| Johnny Chen       :| 06/02/06  :| Modify Image Quality
//   V1.2 :| Johnny Chen       :| 06/03/22  :| Change Pin Assignment For New Sensor
// --------------------------------------------------------------------

module TR1_CCD           
(
	//	Onboard Oscilator	 
	OSC_27,
	OSC_50,
	//	Pushbotton Switch
	KEY,
	//	8 * LED
	oLED,
	//	SEG7 COM
	oCOM,
	//	RS232
	TR_TXD,
	TR_RXD,
	//	TV VGA part
	VSYNC_N,
   	HSYNC_N,
	//	PN, -- R2
	TVRES,
   	RED,
   	GREEN,
   	BLUE,
	//	SDRAM Interface
	SD_DATA, // 16 bits
	SD_LDQM,
	SD_UDQM,
	SD_WE_N,
	SD_CAS_N,
	SD_RAS_N,
	SD_CS_N,
	SD_BA_0,
	SD_BA_1,
	SD_ADDR, // 12 bits
	SD_CLK,
	SD_CKE,	
	// CF Card -- Must Disable CE
	CF_CS0_N,
	CF_CS1_N,
	//	Flash -- Must Disable CE
	FL_CE_N,
	// USB JTAG link
	TDI,  // 3064 -> FPGA (data in)
	TCK,  // 3064 -> FPGA (clk)
	TCS,  // 3064 -> FPGA (CS)
    TDO,  // FPGA -> 3064 (data out)
	// GPIO
	JP1,	//	GPIO Connection 1	
	JP2,	//	GPIO Connection 2
	// Audio
	AUD_BCK,
	AUD_DATA,
	AUD_LRCK
);

// Audio
output 			AUD_BCK;
output          AUD_DATA;
output			AUD_LRCK;
//	CF Card		
output	      CF_CS0_N;
output        CF_CS1_N;
//	Flash
output		  FL_CE_N;
//	Onboard Oscilator 
input			OSC_27;
input			OSC_50;
//	Pushbotton Switch
input	[7:0]	KEY;
//	8 * LED
output 	[7:0]	oLED;
//	SEG7 COM
output	[3:0]	oCOM;
//	UART
output 			TR_TXD;
input			TR_RXD;
//	TV part
output VSYNC_N; //input VSYNC_N; // VGA: output VSYNC_N;
output HSYNC_N; //input HSYNC_N; // VGA: output HSYNC_N;
output [3:0] RED;
output [3:0] GREEN;
output [3:0] BLUE;
output TVRES;
//	SDRAM Interface
inout [15:0] SD_DATA; // 16 bits
output SD_LDQM;
output SD_UDQM;
output SD_WE_N;
output SD_CAS_N;
output SD_RAS_N;
output SD_CS_N;
output SD_BA_0;
output SD_BA_1;
output [11:0] SD_ADDR; // 12 bits
output SD_CLK;
output SD_CKE;
//	USB JTAG link
input  TDI;
input  TCK;
input  TCS;
output TDO;
//	GPIO Connection
inout [35:0] JP1;
inout [35:0] JP2;

//  Disable TV part -- shared with VGA	
assign TVRES = 1'b1; // let TV reset	
//	Disable CF Card
assign CF_CS0_N = 1'b1;
assign CF_CS1_N = 1'b1;
//	Disable Flash Chip
assign FL_CE_N	= 1'b1;

//	CCD
wire	[9:0]	CCD_DATA;
wire			CCD_SDAT;
wire			CCD_SCLK;
wire			CCD_FLASH;
wire			CCD_FVAL;
wire			CCD_LVAL;
wire			CCD_PIXCLK;
reg				CCD_MCLK;	//	CCD Master Clock

wire	[15:0]	Read_DATA1;
wire	[15:0]	Read_DATA2;
wire			VGA_CTRL_CLK;
wire	[9:0]	mCCD_DATA;
wire			mCCD_DVAL;
wire			mCCD_DVAL_d;
wire	[9:0]	X_Cont;
wire	[9:0]	Y_Cont;
wire	[9:0]	X_ADDR;
wire	[31:0]	Frame_Cont;
wire	[9:0]	mCCD_R;
wire	[9:0]	mCCD_G;
wire	[9:0]	mCCD_B;
wire	[9:0]	mVGA_R;
wire	[9:0]	mVGA_G;
wire	[9:0]	mVGA_B;
wire			DLY_RST_0;
wire			DLY_RST_1;
wire			DLY_RST_2;
wire			Read;
wire	[3:0]	SW;
reg		[9:0]	rCCD_DATA;
reg				rCCD_LVAL;
reg				rCCD_FVAL;

assign	CCD_DATA[0]	=	JP2[0+20];
assign	CCD_DATA[1]	=	JP2[1+20];
assign	CCD_DATA[2]	=	JP2[5+20];
assign	CCD_DATA[3]	=	JP2[3+20];
assign	CCD_DATA[4]	=	JP2[2+20];
assign	CCD_DATA[5]	=	JP2[4+20];
assign	CCD_DATA[6]	=	JP2[6+20];
assign	CCD_DATA[7]	=	JP2[7+20];
assign	CCD_DATA[8]	=	JP2[8+20];
assign	CCD_DATA[9]	=	JP2[9+20];
assign	JP2[11+20]	=	CCD_MCLK;
assign	JP2[15+20]	=	CCD_SDAT;
assign	JP2[14+20]	=	CCD_SCLK;
assign	CCD_FVAL	=	JP2[13+20];
assign	CCD_LVAL	=	JP2[12+20];
assign	CCD_PIXCLK	=	JP2[10+20];

assign	SW			=	JP2[12:9];
assign	VGA_CTRL_CLK=	CCD_MCLK;
assign	RED		=	mVGA_R[9:6];
assign	GREEN	=	mVGA_G[9:6];
assign	BLUE	=	mVGA_B[9:6];
assign	oLED	=	Y_Cont;

always@(posedge OSC_50)	CCD_MCLK	<=	~CCD_MCLK;

always@(posedge CCD_PIXCLK)
begin
	rCCD_DATA	<=	CCD_DATA;
	rCCD_LVAL	<=	CCD_LVAL;
	rCCD_FVAL	<=	CCD_FVAL;
end

VGA_DATA_REQ		u0	(	.oREQ(Read),
							.iADDR(X_ADDR),
							.iCLK(VGA_CTRL_CLK),
							.iRST(DLY_RST_1)	);

VGA_Controller		u1	(	//	Host Side
							.iCursor_RGB_EN(4'h7),
							.oCoord_X(X_ADDR),
							.iRed(Read_DATA2[9:0]),
							.iGreen({Read_DATA1[14:10],Read_DATA2[14:10]}),
							.iBlue(Read_DATA1[9:0]),
							//	VGA Side
							.oVGA_R(mVGA_R),
							.oVGA_G(mVGA_G),
							.oVGA_B(mVGA_B),
							.oVGA_H_SYNC(HSYNC_N),
							.oVGA_V_SYNC(VSYNC_N),
							//	Control Signal
							.iCLK(VGA_CTRL_CLK),
							.iRST_N(DLY_RST_2)	);

Reset_Delay			u2	(	.iCLK(OSC_50),
							.iRST(KEY[0]),
							.oRST_0(DLY_RST_0),
							.oRST_1(DLY_RST_1),
							.oRST_2(DLY_RST_2)	);

CCD_Capture			u3	(	.oDATA(mCCD_DATA),
							.oDVAL(mCCD_DVAL),
							.oX_Cont(X_Cont),
							.oY_Cont(Y_Cont),
							.oFrame_Cont(Frame_Cont),
							.iDATA(rCCD_DATA),
							.iFVAL(rCCD_FVAL),
							.iLVAL(rCCD_LVAL),
							.iSTART(!KEY[3]),
							.iEND(!KEY[2]),
							.iCLK(CCD_PIXCLK),
							.iRST(DLY_RST_1)	);

RAW2RGB				u4	(	.oRed(mCCD_R),
							.oGreen(mCCD_G),
							.oBlue(mCCD_B),
							.oDVAL(mCCD_DVAL_d),
							.iX_Cont(X_Cont),
							.iY_Cont(Y_Cont),
							.iDATA(mCCD_DATA),
							.iDVAL(mCCD_DVAL),
							.iCLK(CCD_PIXCLK),
							.iRST(DLY_RST_1)	);

Sdram_Control_4Port	u6	(	//	HOST Side
						    .REF_CLK(OSC_50),
						    .RESET_N(1'b1),
							//	FIFO Write Side 1
						    .WR1_DATA(	{mCCD_G[9:5],
										 mCCD_B[9:0]}),
							.WR1(mCCD_DVAL_d),
							.WR1_ADDR(0),
							.WR1_MAX_ADDR(640*512),
							.WR1_LENGTH(9'h100),
							.WR1_LOAD(!DLY_RST_0),
							.WR1_CLK(CCD_PIXCLK),
							//	FIFO Write Side 2
						    .WR2_DATA(	{mCCD_G[4:0],
										 mCCD_R[9:0]}),
							.WR2(mCCD_DVAL_d),
							.WR2_ADDR(22'h100000),
							.WR2_MAX_ADDR(22'h100000+640*512),
							.WR2_LENGTH(9'h100),
							.WR2_LOAD(!DLY_RST_0),
							.WR2_CLK(CCD_PIXCLK),
							//	FIFO Read Side 1
						    .RD1_DATA(Read_DATA1),
				        	.RD1(Read),
				        	.RD1_ADDR(640*16),
							.RD1_MAX_ADDR(640*496),
							.RD1_LENGTH(9'h100),
				        	.RD1_LOAD(!DLY_RST_0),
							.RD1_CLK(VGA_CTRL_CLK),
							//	FIFO Read Side 2
						    .RD2_DATA(Read_DATA2),
				        	.RD2(Read),
				        	.RD2_ADDR(22'h100000+640*16),
							.RD2_MAX_ADDR(22'h100000+640*496),
							.RD2_LENGTH(9'h100),
				        	.RD2_LOAD(!DLY_RST_0),
							.RD2_CLK(VGA_CTRL_CLK),
							//	SDRAM Side
						    .SA(SD_ADDR),
						    .BA({SD_BA_1,SD_BA_0}),
						    .CS_N(SD_CS_N),
						    .CKE(SD_CKE),
						    .RAS_N(SD_RAS_N),
				            .CAS_N(SD_CAS_N),
				            .WE_N(SD_WE_N),
						    .DQ(SD_DATA),
				            .DQM({SD_UDQM,SD_LDQM}),
							.SDR_CLK(SD_CLK)	);

I2C_CCD_Config 		u7	(	//	Host Side
							.iCLK(OSC_50),
							.iRST_N(KEY[1]),
							.iExposure({3'b000,~SW,9'b000000000}),
							//	I2C Side
							.I2C_SCLK(CCD_SCLK),
							.I2C_SDAT(CCD_SDAT)	);

SEG7_Driver			u8	(	.oSEG({JP2[8:1]}),
							.oCOM(oCOM),
							.iDIG(Frame_Cont),
							.iCLK(OSC_50),
							.iRST_n(KEY[0])	);

endmodule