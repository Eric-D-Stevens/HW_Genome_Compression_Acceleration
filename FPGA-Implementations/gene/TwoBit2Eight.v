`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:23:11 02/17/2017 
// Design Name: 
// Module Name:    TwoBit2Eight 
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
module TwoBit2Eight(
    input [1:0] In,
    output [7:0] Out
    );

	 assign Out[7] = 0,  Out[6] = 1,  Out[5] = 0,  Out[4] = ((In[1])&(~In[0])), Out[3] = 0,  Out[2] = In[1],  Out[1] = In[0],  Out[0] = ~((In[1])&(~In[0]));

endmodule
