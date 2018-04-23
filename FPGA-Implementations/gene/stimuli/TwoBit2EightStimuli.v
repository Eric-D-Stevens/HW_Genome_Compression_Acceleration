`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:25:18 02/17/2017
// Design Name:   TwoBit2Eight
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/TwoBit2EightStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwoBit2Eight
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TwoBit2EightStimuli;

	// Inputs
	reg [1:0] In;

	// Outputs
	wire [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	TwoBit2Eight uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		In = 1; // C: 01000011
		#50;
		In = 3; // G: 01000111
		#50;
		In = 2; // T: 01010100
		#50;
		In = 0; // A: 01000001
		
		
	end
      
endmodule

