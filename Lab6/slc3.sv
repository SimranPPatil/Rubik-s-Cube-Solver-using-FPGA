//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Lab 6 Given Code - SLC-3 top-level (External SRAM)
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 02-20-2017 
//    Spring 2017 Distribution
//
//------------------------------------------------------------------------------


module slc3(
	input logic [15:0] S,
	input logic	Clk, Reset, Run, Continue,
	output logic [11:0] LED,
	output logic [6:0] HEX0, HEX1, HEX2, HEX3,
	output logic CE, UB, LB, OE, WE,
	output logic [19:0] ADDR,
	inout wire [15:0] Data //tristate buffers need to be of type wire
);

// Declaration of push button active high signals	
logic Reset_ah, Continue_ah, Run_ah;

assign Reset_ah = ~Reset;
assign Continue_ah = ~Continue;
assign Run_ah = ~Run;

// Internal connections
logic BEN, N, Z, P;
logic LD_MAR, LD_MDR, LD_IR, LD_BEN, LD_CC, LD_REG, LD_PC, LD_LED;
logic GatePC, GateMDR, GateALU, GateMARMUX;
logic [1:0] PCMUX, ADDR2MUX, ALUK;
logic DRMUX, SR1MUX, SR2MUX, ADDR1MUX;
logic MIO_EN;

logic [15:0] MDR_In, PC, Datapath, Adder_out, Alu_out;
logic [15:0] MAR, MDR, IR, SR1_out, SR2_out;
logic [15:0] Data_from_SRAM, Data_to_SRAM, R0, R1, R2, R3, R4, R5, R6, R7;

// Signals being displayed on hex display
logic [3:0][3:0] hex_4;

// For week 1, hexdrivers will display IR
//HexDriver hex_driver3 (IR[15:12], HEX3);
//HexDriver hex_driver2 (IR[11:8], HEX2);
//HexDriver hex_driver1 (IR[7:4], HEX1);
//HexDriver hex_driver0 (IR[3:0], HEX0);

// For week 2, hexdrivers will be mounted to Mem2IO
 HexDriver hex_driver3 (hex_4[3][3:0], HEX3);
 HexDriver hex_driver2 (hex_4[2][3:0], HEX2);
 HexDriver hex_driver1 (hex_4[1][3:0], HEX1);
 HexDriver hex_driver0 (hex_4[0][3:0], HEX0);


MAR Memory_Addr_Reg (.Clk(Clk), .LD_MAR(LD_MAR), .Reset(Reset_ah), .MAR_in(Datapath), .MAR_old(MAR), .MAR_out(MAR));
MDR Memory_Data_Reg (.Clk(Clk), .LD_MDR(LD_MDR), .Reset(Reset_ah), .MIO_EN(MIO_EN), .Data_to_CPU(MDR_In), .MDR_Datapath(Datapath), .MDR_old(MDR), .MDR_out(MDR));
IR Instruction_Reg (.Clk(Clk), .LD_IR(LD_IR), .Reset(Reset_ah), .IR_datapath(Datapath), .IR_old(IR), .IR(IR));
PC Program_Counter (.Clk(Clk), .LD_PC(LD_PC), .Reset(Reset_ah), .PCMUX(PCMUX), .PC_old(PC), .PC_Adder(Adder_out) , .PC_datapath(Datapath) , .PC_new(PC));
GateMUX Connectors (.PC_in(PC), .MARMUX_in(Adder_out), .ALU_in(Alu_out), .MDR_in(MDR), .Clk(Clk), .GatePC(GatePC), .GateMARMUX(GateMARMUX), .GateALU(GateALU), .GateMDR(GateMDR),.Datapath(Datapath));
//Datapath Bus (.Clk(Clk),.Data_in(Datapath_in),.Data_out(Datapath_out),.Data(Data) );

MainAdder AddrUnit (.ADDR1MUX(ADDR1MUX), .Clk(Clk), .IR(IR), .SR1_in(SR1_out), .PC_in(PC), .ADDR2MUX(ADDR2MUX), .Adder_out(Adder_out) );
ALU ALU_Unit ( .Clk(Clk) , .Reset(Reset_ah) , .SR2MUX_Ctrl(SR2MUX) , .LD_CC(LD_CC) , .N_old(N), .Z_old(Z), .P_old(P), .SR1_in(SR1_out) , .SR2_in(SR2_out) , .IR(IR) , .ALUK(ALUK) , .Data_out(Alu_out) , .N(N) , .Z(Z) , .P(P) );
LED12Vec LEDs ( .LD_LED(LD_LED) , .IR(IR) , .LED(LED) );
nzp Codes ( .Clk(Clk) , .Reset(Reset_ah) , .N(N) ,.Z(Z) ,.P(P) , .LD_BEN(LD_BEN) , .IR(IR) , .BEN(BEN), .BEN_old(BEN) );
RegFile RegUnits ( .Clk(Clk) , .Reset(Reset_ah) , .Load(LD_REG) , .SR1(SR1MUX) , .DR(DRMUX) , .SR2(IR[2:0]) , .IR(IR) , .Data(Datapath) , .SR2_out(SR2_out) , .SR1_out(SR1_out), .R0_old(R0), .R1_old(R1), .R2_old(R2), .R3_old(R3), .R4_old(R4), .R5_old(R5), .R6_old(R6), .R7_old(R7),.R0(R0), .R1(R1), .R2(R2), .R3(R3), .R4(R4), .R5(R5), .R6(R6), .R7(R7) );



// Connect MAR to ADDR, which is also connected as an input into MEM2IO
//	MEM2IO will determine what gets put onto Data_CPU (which serves as a potential
//	input into MDR)
assign ADDR = { 4'b00, MAR }; //Note, our external SRAM chip is 1Mx16, but address space is only 64Kx16
assign MIO_EN = ~OE;

// You need to make your own datapath module and connect everything to the datapath
// Be careful about whether Reset is active high or low
//datapath d0 (.*);

// Our SRAM and I/O controller
Mem2IO memory_subsystem(
	.*, .Reset(Reset_ah), .ADDR(ADDR), .Switches(S),
	.HEX0(hex_4[0][3:0]), .HEX1(hex_4[1][3:0]), .HEX2(hex_4[2][3:0]), .HEX3(hex_4[3][3:0]),
	.Data_from_CPU(MDR), .Data_to_CPU(MDR_In),
	.Data_from_SRAM(Data_from_SRAM), .Data_to_SRAM(Data_to_SRAM)
);

// The tri-state buffer serves as the interface between Mem2IO and SRAM
tristate #(.N(16)) tr0(
	.Clk(Clk), .tristate_output_enable(~WE), .Data_write(Data_to_SRAM), .Data_read(Data_from_SRAM), .Data(Data)
);

// State machine and control signals
ISDU state_controller(
	.*, .Reset(Reset_ah), .Run(Run_ah), .Continue(Continue_ah),
	.Opcode(IR[15:12]), .IR_5(IR[5]), .IR_11(IR[11]),
	.Mem_CE(CE), .Mem_UB(UB), .Mem_LB(LB), .Mem_OE(OE), .Mem_WE(WE)
);

// An example of instantiating the test_memory. Do not instantiate it here.
// Read the instructions in the header of test_memory.sv about how to use it.
// Test memory is only for simulation, and should NOT be included when circuit is tested on FPGA board.
// Otherwise, the circuit will not function correctly.

/*test_memory test_memory0(
	.Clk(Clk), .Reset(~Reset),
	.I_O(Data), .A(ADDR),
	.*
);
*/
endmodule
