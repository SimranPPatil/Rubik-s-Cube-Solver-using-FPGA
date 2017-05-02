module testbench();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

// These signals are internal because the processor will be 
// instantiated as a submodule in testbench.
logic [15:0] S;
logic	Clk, Reset, Run, Continue;

wire [15:0] Data;
 
// Instantiating the DUT
// Make sure the module and signal names match with those in your design
lc3top slc3_sim(.*);	

// Toggle the clock
// #1 means wait for a delay of 1 timeunit
always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION
    Clk = 0;
end 

// Testing begins here
// The initial block is not synthesizable
// Everything happens sequentially inside an initial block
// as in a software program
initial begin: TEST_VECTORS
Reset = 0;		// Toggle Rest
Run = 1;
Continue = 1;
S = 16'h005A;
 
#2 Reset = 1;
#2 Run = 0;
#2 Run = 1;
#30 S = 16'h0003;
#2 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#10 Continue = 0;
#2 Continue = 1;
#500 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
#70 Continue = 0;
#2 Continue = 1;
 
end
endmodule