`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:24:25 02/27/2017 
// Design Name: 
// Module Name:    NameLineCompress 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module NameLineCompress(
    input [127:0] Inst_in,
    input [127:0] Run_in,
    input [127:0] Flow_in,
    input [127:0] Lane_in,
    input [127:0] Tile_in,
    input [127:0] Xpos_in,
    input [127:0] Ypos_r_in,
    input [127:0] Filtered_in,
    input [127:0] Cntl_num_in,
    input [127:0] Index_in,
    output [159:0] Run_out,
    output [159:0] Flow_out,
    output [159:0] Lane_out,
    output [159:0] Tile_out,
    output [159:0] Xpos_out,
    output [159:0] Ypos_r_out,
    output [159:0] Filtered_out,
    inout [159:0] Cntl_num_out,
    output [159:0] Index_out,
    output Run_w,
    output Flow_w,
    output Lane_w,
    output Tile_w,
    output Xpos_w,
    output Ypos_r_w,
    output Filtered_w,
    output Cntl_num_w,
    input Index_w,
    input clk
    );


	NameCompress InstComp(
		.InString(Inst_in),
		.clk(clk),
		.Out(Inst_out),
		.write(Inst_w)
	
	);
	
	
	NameCompress RunComp(
		.InString(Run_in),
		.clk(clk),
		.Out(Run_out),
		.write(Run_w)
	
	);
	
	
	NameCompress FlowComp(
		.InString(Flow_in),
		.clk(clk),
		.Out(Flow_out),
		.write(Flow_w)
	
	);
	
	
	NameCompress LaneComp(
		.InString(Lane_in),
		.clk(clk),
		.Out(Lane_out),
		.write(Lane_w)
	
	);


	NameCompress TileComp(
		.InString(Tile_in),
		.clk(clk),
		.Out(Tile_out),
		.write(Tile_w)
	
	);


	NameCompress XposComp(
		.InString(Xpos_in),
		.clk(clk),
		.Out(Xpos_out),
		.write(Xpos_w)
	
	);


	NameCompress Ypos_rComp(
		.InString(Ypos_r_in),
		.clk(clk),
		.Out(Ypos_r_out),
		.write(Ypos_r_w)
	
	);


	NameCompress FilteredComp(
		.InString(Filtered_in),
		.clk(clk),
		.Out(Filtered_out),
		.write(Filtered_w)
	
	);


	NameCompress Cntl_numComp(
		.InString(Cntl_num_in),
		.clk(clk),
		.Out(Cntl_num_out),
		.write(Cntl_num_w)
	
	);


	NameCompress IndexComp(
		.InString(Index_in),
		.clk(clk),
		.Out(Index_out),
		.write(Index_w)
	
	);




endmodule
