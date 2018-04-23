`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:52 02/12/2017
// Design Name:   FourByte2One
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/FourByte2OneStimulus.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FourByte2One
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FourByte2OneStimulus;

	// Inputs
	reg [7:0] In0;
	reg [7:0] In1;
	reg [7:0] In2;
	reg [7:0] In3;

	// Outputs
	wire [7:0] Out;

		
	FourByte2One uut (
		.In0(In0), 
		.In1(In1), 
		.In2(In2), 
		.In3(In3), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 0;
		In1 = 0;
		In2 = 0;
		In3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		#50 
		In0 = 255;
		In1 = 0;
		In2 = 255;
		In3 = 0;
      
		#50
		In0 = 0;
		In1 = 255;
		In2 = 0;
		In3 = 255;
		

	end
      
	initial begin
		$monitor("O=%d,I0=%d,I=%d1,I2=%d,I3=%d",Out, In0, In1, In2, In3);
	end 
		
		
endmodule

