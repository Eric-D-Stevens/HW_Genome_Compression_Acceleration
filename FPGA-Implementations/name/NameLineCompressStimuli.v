`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:40:10 02/27/2017
// Design Name:   NameLineCompress
// Module Name:   C:/Users/steve/Desktop/SrDx Verilog Blocks/Gene Compression/GeneCompressor/NameLineCompressStimuli.v
// Project Name:  GeneCompressor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NameLineCompress
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NameLineCompressStimuli;

	// Inputs
	reg [127:0] Inst_in;
	reg [127:0] Run_in;
	reg [127:0] Flow_in;
	reg [127:0] Lane_in;
	reg [127:0] Tile_in;
	reg [127:0] Xpos_in;
	reg [127:0] Ypos_r_in;
	reg [127:0] Filtered_in;
	reg [127:0] Cntl_num_in;
	reg [127:0] Index_in;
	reg Index_w;
	reg clk;

	// Outputs
	wire [159:0] Inst_out;
	wire [159:0] Run_out;
	wire [159:0] Flow_out;
	wire [159:0] Lane_out;
	wire [159:0] Tile_out;
	wire [159:0] Xpos_out;
	wire [159:0] Ypos_r_out;
	wire [159:0] Filtered_out;
	wire [159:0] Index_out;
	wire Inst_w;
	wire Run_w;
	wire Flow_w;
	wire Lane_w;
	wire Tile_w;
	wire Xpos_w;
	wire Ypos_r_w;
	wire Filtered_w;
	wire Cntl_num_w;

	// Bidirs
	wire [159:0] Cntl_num_out;

	// Instantiate the Unit Under Test (UUT)
	NameLineCompress uut (
		.Inst_in(Inst_in), 
		.Run_in(Run_in), 
		.Flow_in(Flow_in), 
		.Lane_in(Lane_in), 
		.Tile_in(Tile_in), 
		.Xpos_in(Xpos_in), 
		.Ypos_r_in(Ypos_r_in), 
		.Filtered_in(Filtered_in), 
		.Cntl_num_in(Cntl_num_in), 
		.Index_in(Index_in), 
		.Run_out(Run_out), 
		.Flow_out(Flow_out), 
		.Lane_out(Lane_out), 
		.Tile_out(Tile_out), 
		.Xpos_out(Xpos_out), 
		.Ypos_r_out(Ypos_r_out), 
		.Filtered_out(Filtered_out), 
		.Cntl_num_out(Cntl_num_out), 
		.Index_out(Index_out), 
		.Run_w(Run_w), 
		.Flow_w(Flow_w), 
		.Lane_w(Lane_w), 
		.Tile_w(Tile_w), 
		.Xpos_w(Xpos_w), 
		.Ypos_r_w(Ypos_r_w), 
		.Filtered_w(Filtered_w), 
		.Cntl_num_w(Cntl_num_w), 
		.Index_w(Index_w), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		Inst_in = 0;
		Run_in = 0;
		Flow_in = 0;
		Lane_in = 0;
		Tile_in = 0;
		Xpos_in = 0;
		Ypos_r_in = 0;
		Filtered_in = 0;
		Cntl_num_in = 0;
		Index_in = 0;
		Index_w = 0;
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//$monitor ("clk\t%b\n", clk);
		$monitor("Time:\t%g\nInst:\t%h\t%b\nRun:\t%h\t%b\nFlow:\t%h\t%b\nLane:\t%h\t%b\nTile:\t%h\t%b\nXpos:\t%h\t%b\nYpos_r:\t%h\t%b\nFiltered:\t%h\t%b\nCntl_num:\t%h\t%b\nIndex:\t%h\t%b\n\n\n",
			$time,Inst_out,Inst_w,Run_out,Run_w,Flow_out,Flow_w,Lane_out,Lane_w,Tile_out,Tile_w,Xpos_out,Xpos_w,Ypos_r_out,Ypos_r_w,Filtered_out,Filtered_w,Cntl_num_out,Cntl_num_w,Index_out,Index_w);

		

		// ROUND 1
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 2
		Inst_in <= "xxx";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 3
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "xxx";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 4
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="xxx";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 5
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="xxx";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 6
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "xxx";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 7
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "xxx";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 8
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "xxx";
		Filtered_in <= "N";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 9
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "xxx";
		Cntl_num_in <= "0";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 10
		Inst_in <= "@HISEQ-MFG";
		Run_in <= "461";
		Flow_in <="C70PYACXX";
		Lane_in <="8";
		Tile_in <= "1101";
		Xpos_in <= "18260";
		Ypos_r_in <= "2391 1";
		Filtered_in <= "N";
		Cntl_num_in <= "xxx";
		Index_in <= "GCCAAT";
		#10;
		
		// ROUND 11
		Inst_in <= "0";
		Run_in <= "0";
		Flow_in <="0";
		Lane_in <="0";
		Tile_in <= "0";
		Xpos_in <= "0";
		Ypos_r_in <= "0";
		Filtered_in <= "0";
		Cntl_num_in <= "9";
		Index_in <= "0";
		#10;
		
		
		
	
	end
      
	always begin

		#5 clk = ~clk;
	end 

endmodule

