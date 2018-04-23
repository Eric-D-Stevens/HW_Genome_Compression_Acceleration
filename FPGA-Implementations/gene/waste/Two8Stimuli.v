`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:06:35 02/17/2017
// Design Name:   Two8
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/Two8Stimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Two8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Two8Stimuli;

	// Inputs
	reg [1:0] In;
	reg [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Two8 uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		Out = 0;

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

