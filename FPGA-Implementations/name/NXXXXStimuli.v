`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:49:55 02/22/2017
// Design Name:   NXXXX
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/NXXXXStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NXXXX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NXXXXStimuli;

	// Inputs
	reg [159:0] In;
	reg clk;

	// Outputs
	wire [127:0] Out;
	wire R;
	wire W;

	// Instantiate the Unit Under Test (UUT)
	NXXXX uut (
		.In(In), 
		.clk(clk), 
		.Out(Out), 
		.R(R), 
		.W(W)
	);
	
	
	reg [1599:0] inbuffer;


	initial begin
		// Initialize Inputs
		In = 160'hc00000007 ;;
		clk = 0;
		inbuffer[159:0] = 160'ha00000000 ;
		inbuffer[319:160] = 160'ha00000005 ;
		inbuffer[479:320] = 160'hb00000004 ;
		inbuffer[639:480] = 160'hc00000003 ;
		inbuffer[799:640] = 160'hd00000002 ;
		inbuffer[959:800] = 160'he00000003 ;
		inbuffer[1119:960] = 160'hf00000004 ;
		inbuffer[1279:1120] = 160'he00000005 ;
		inbuffer[1439:1280] = 160'hd00000006 ;
		inbuffer[1599:1440] = 160'hc00000007 ;
		
		// Wait 100 ns for global reset to finish

		
		
		
        
	end		  
		// Add stimulus here
		
		always @ (posedge R)
		begin : STRCNT
					In <= inbuffer[159:0];
					#3;
		end


	always begin
		#5 clk = ~clk;
	end 

      
endmodule


