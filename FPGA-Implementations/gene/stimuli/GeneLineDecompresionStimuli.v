`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:21:21 02/17/2017
// Design Name:   GeneLineDecompression
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/GeneLineDecompresionStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GeneLineDecompression
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GeneLineDecompresionStimuli;

	// Inputs
	reg [199:0] In;

	// Outputs
	wire [799:0] Out;

	// Instantiate the Unit Under Test (UUT)
	GeneLineDecompression uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
	
		$monitor("Input:\t%h\nOutput:\t%h\n", In, Out);
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
		In = 200'h0000000000000000000000000000000000000000000000000;
		#10;
		
		In = 200'h55555555555555555555555555555555555555555555555555;
		#10;
		
		In = 200'hffffffffffffffffffffffffffffffffffffffffffffffffff;
		#10;
		
		In = 200'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa;
		#10;
	
		In = 200'h0000000000000000000000000000000000000000000000000;
		#10;
		
		In = 200'h55555555555555555555555555555555555555555555555555;
		#10;
		
		In = 200'hffffffffffffffffffffffffffffffffffffffffffffffffff;
		#10;
		
		In = 200'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa;
		#10;
	
		In = 200'h0000000000000000000000000000000000000000000000000;
		#10;
		
		In = 200'h55555555555555555555555555555555555555555555555555;
		#10;
		
		In = 200'hffffffffffffffffffffffffffffffffffffffffffffffffff;
		#10;

	
        
		// Add stimulus here

	end
      
endmodule


