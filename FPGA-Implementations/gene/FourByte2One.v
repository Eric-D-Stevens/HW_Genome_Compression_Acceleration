`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:34 02/12/2017 
// Design Name: 
// Module Name:    FourByte2One 
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
module FourByte2One(
    input [7:0] In0,
    input [7:0] In1,
    input [7:0] In2,
    input [7:0] In3,
    output [7:0] Out
    );
	 

	
	assign Out[1:0] = In0[2:1], Out[3:2] = In1[2:1], Out[5:4] = In2[2:1], Out[7:6] = In3[2:1];
	

endmodule
