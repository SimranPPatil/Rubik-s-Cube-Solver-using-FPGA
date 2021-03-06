# Rubik-s-Cube-Solver-using-FPGA
ECE 385 Final Project - Digital Systems Laboratory and SoC implementations

Using a TRDB-DC2 camera with the FPGA to detect the cube and its colors in Hardware.
An IO module to establish hardware software communication to pass on the color detection data to software for processing this data based on Fridrich's algorithm.
The solver moves are mapped to terminal and VGA for user's information

Features:
1. Camera:​ The main input device is the camera. It is connected to the FPGA board using a
jtag uart interface and we use verilog code to establish the connection that was
provided with the TRDB-DC2 Kit. Because the provided driver had compatibility with the
old DE2 Cyclone 2 board, we had to modify the pin assignments and look for the proper
signal values in each of the boards to get the camera working with the new board. The
output interface involves 10 bits of data while the VGA requires 8 bits of data for display
and hence we had to bitshift the output data and thus the colors displayed on the VGA
while checking input are not as clear as we would have expected.

2. Color Detection: ​In order to have real-time processing capabilities of color detection, we
implemented all of these signal processing modules in system verilog. We aren’t doing
edge detection and hence we have to provide the cube length in the image to carry out
the process of color detection. We average out the colors in each of the blocks per face
and pass it on to the next module to check against the thresholds and assign the right
colors.

3. Algorithm:​ The Rubik’s Cube algorithm implemented in C.We followed the Fridrich
algorithm for the actual execution of the solver. We would like to acknowledge the ECE
5760 final project team for the code implementation of the main algorithm. We
modified the code to fit our design expectations but the code was inspired by their
implementation of Fridrich algorithm for most parts. We took the colors that were
detected in hardware and passed it on to software for the execution of the algorithm to
create the solver. We had to establish a hardware - software communication FSM in
SystemVerilog for the execution of this. The function on the software end that retrieved
this data, loaded it into a 1-d array followed by a 2-d array to fit the desired
configuration and the created input cube was passed on to the algorithm to solve it. The
moves generated are displayed on the VGA along with the initial cube configuration.

4. VGA Mapping:​ The mapping of the input configuration and the moves to VGA
display.We planned to map the variable number of moves generated by the algorithm
to the VGA along with the input cube configuration.
