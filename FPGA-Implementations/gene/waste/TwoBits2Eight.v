`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:43 02/16/2017 
// Design Name: 
// Module Name:    TwoBits2Eight 
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
module TwoBits2Eight(
    input [1:0] In,
    output [7:0] Out
    );

	Out[0] = ~((In[1])&(~In[0])), Out[1] = In[0], Out[2] = In[1], Out[3] = 0,
		Out[4] = ((In[1])&(~In[0])), Out[5] = 0, Out[6] = 1, Out[5] = 7; 

endmodule
