`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:18 02/22/2017 
// Design Name: 
// Module Name:    NXXXX 
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
module NXXXX(
    input [159:0] In,
    input clk,
    output reg [127:0] Out,
    output reg R,
    output reg W
    );
	 
	reg [31:0] counter;
	
	initial begin
		counter <= In[31:0];
		Out <= In[159:32];
		#101
		R = 1;
	end 

	always @ (posedge clk)
	begin : STRCNTDWN
	$monitor ("%g\t%h\t%h\t%h", $time, clk, Out, counter);
	
		if(counter < 2) begin
			R <= 1; W <= 0;
			#10
			counter <= In[31:0];
			Out <= In[159:32];
		end
		
		else begin
			counter <= counter -1;
			R <= 0; W <= 1;
		end
	
	end

endmodule
