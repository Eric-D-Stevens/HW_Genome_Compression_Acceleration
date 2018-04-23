`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:37:11 02/18/2017
// Design Name:   StringCounter
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/StringCounterStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: StringCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module StringCounterStimuli;

	// Inputs
	reg [127:0] InString;
	reg clk;
	reg enable;
	reg reset;

	// Outputs
	wire [159:0] Out;
	wire write;

	// Instantiate the Unit Under Test (UUT)
	StringCounter uut (
		.InString(InString), 
		.clk(clk), 
		.enable(enable), 
		.reset(reset), 
		.Out(Out), 
		.write(write)
	);

	initial begin
		//$display ("time\tclk\tenable\treset\t\t\t\tcounter");
		//$monitor ("%g\t%b\t%b\t%b\t%b", $time,  clk, enable, reset, Out);
		
		// Initialize Inputs
		InString = 0;
		clk = 1;
		enable = 1;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		// Add stimulus here
		InString = "AAABBBCCC";
		#10
		InString = "AAABBBCCC";
		#10
		InString = "xxxxxxxxx";
		#10
		InString = "xxxxxxxxx";		
		#10
		InString = "xxxxxxxxx";
		#10
		InString = "llllllllll";		

	end
	
	always begin
		#5 clk = ~clk;
	end 
      
endmodule

