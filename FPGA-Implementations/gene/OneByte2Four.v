`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:34:23 02/17/2017 
// Design Name: 
// Module Name:    OneByte2Four 
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
module OneByte2Four(
    input [7:0] In,
    output [31:0] Out
    );

	TwoBit2Eight gb0(In[1:0],Out[7:0]);
	TwoBit2Eight gb1(In[3:2],Out[15:8]);
	TwoBit2Eight gb2(In[5:4],Out[23:16]);
	TwoBit2Eight gb3(In[7:6],Out[31:24]);

endmodule
