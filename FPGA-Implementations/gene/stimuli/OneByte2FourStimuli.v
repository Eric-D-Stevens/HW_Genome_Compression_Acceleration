`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:41:21 02/17/2017
// Design Name:   OneByte2Four
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/OneByte2FourStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OneByte2Four
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module OneByte2FourStimuli;

	// Inputs
	reg [7:0] In;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	OneByte2Four uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
		In = 8'b00011110;
        
		// Add stimulus here

	end
      
endmodule

