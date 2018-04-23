`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:36:47 02/18/2017
// Design Name:   NameCompress
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/NameCompressStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NameCompress
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NameCompressStimuli;


	// Inputs
	reg [127:0] InString;
	reg clk;

	// Outputs
	wire [159:0] Out;
	wire write;
	wire [127:0] strcmp0;
	wire [127:0] strcmp1;

	// Instantiate the Unit Under Test (UUT)
	NameCompress uut (
		.InString(InString), 
		.clk(clk), 
		.Out(Out), 
		.write(write), 
		.strcmp0(strcmp0), 
		.strcmp1(strcmp1)
	);

	initial begin
		$display ("time\tclk\tenable\treset\t\t\t\tcounter");
		$monitor ("%g\t%h\t%b", $time, Out, write);
		
		// Initialize Inputs
		InString = 0;
		clk = 1;


		// Wait 100 ns for global reset to finish
		#100;
		
        
		  
		// Add stimulus here
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		// 10 As
		
		#10		
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;	
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;	
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;	
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;	
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;
		#10
		InString = 40'hBBBBBBBBBB;	
		#10
		InString = 40'hBBBBBBBBBB;
		//15 Bs
		#10
		InString = 40'hCCCCCCCCCC;
		// 1 C
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		InString = 40'hAAAAAAAAAA;
		#10
		//5 As
		InString = "llllllllll";		

	end
	
	always begin
		#5 clk = ~clk;
	end 
endmodule

