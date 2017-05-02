module lc3top (
	input logic [15:0] S,
	input logic	Clk, Reset, Run, Continue,
	inout wire [15:0] Data);
	
	logic CE, UB, LB, OE, WE;
	logic [11:0] LED;
	logic [15:0] IR;
	logic [19:0] ADDR;
	logic [6:0] HEX0, HEX1, HEX2, HEX3;
	
	slc3 slc3_simul (.*);


test_memory test_memory0(
	.Clk(Clk), .Reset(~Reset),
	.I_O(Data), .A(ADDR),
	.*
);


endmodule