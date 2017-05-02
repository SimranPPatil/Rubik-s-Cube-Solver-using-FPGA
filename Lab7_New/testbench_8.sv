module testbench();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

// These signals are internal because the processor will be 
// instantiated as a submodule in testbench.
logic clk;
logic                  reset_n;  // Active-low reset
                      logic        [127:0]   msg_en;   // Encrypted message
                      logic        [127:0]   key;      // Key
                      logic [127:0]   msg_de;   // Decrypted message
                      logic                  io_ready; // Ready for decryption
							 logic           aes_ready;

// To store expected results
//logic [7:0] ans_1a, ans_2b;
				
// A counter to count the instances where simulation results
// do no match with expected results
//integer ErrorCnt = 0;
		
// Instantiating the DUT
// Make sure the module and signal names match with those in your design
aes_controller aes_controller_0(.*);	

// Toggle the clock
// #1 means wait for a delay of 1 timeunit
always begin : CLOCK_GENERATION
#1 clk = ~clk;
end

initial begin: CLOCK_INITIALIZATION
    clk = 0;
end 

// Testing begins here
// The initial block is not synthesizable
// Everything happens sequentially inside an initial block
// as in a software program
initial begin: TEST_VECTORS
reset_n = 1;

#2 reset_n = 0;

#2 reset_n = 1;

#10
msg_en = 128'hdaec3055df058e1c39e814ea76f6747e;
key = 128'h000102030405060708090a0b0c0d0e0f;

#500
io_ready = 1'b1;






end
endmodule
