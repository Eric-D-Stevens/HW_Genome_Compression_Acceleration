`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:29 02/22/2017 
// Design Name: 
// Module Name:    NDDDDDDD 
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
module NDDDDDDD(
    input [159:0] In,
    input clk,
    output [127:0] Out,
    output RW
    );


	reg [31:0] counter;

	always @ (posedge clk)
	begin : STRCNTDWN
	
		if(counter == 1) begin
			RW <= 1;
			#10
			counter <= In[31:0];
		end
		
		else begin
			counter <= counter -1;
		end
	
	end

endmodule
