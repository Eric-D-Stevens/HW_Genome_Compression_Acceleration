`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:14:18 02/17/2017 
// Design Name: 
// Module Name:    GeneLineDecompression 
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
module GeneLineDecompression(
    input [199:0] In,
    output [799:0] Out
    );



	OneByte2Four gd0 (In[7:0],Out[31:0]);
	OneByte2Four gd1 (In[15:8],Out[63:32]);
	OneByte2Four gd2 (In[23:16],Out[95:64]);
	OneByte2Four gd3 (In[31:24],Out[127:96]);
	OneByte2Four gd4 (In[39:32],Out[159:128]);
	OneByte2Four gd5 (In[47:40],Out[191:160]);
	OneByte2Four gd6 (In[55:48],Out[223:192]);
	OneByte2Four gd7 (In[63:56],Out[255:224]);
	OneByte2Four gd8 (In[71:64],Out[287:256]);
	OneByte2Four gd9 (In[79:72],Out[319:288]);
	OneByte2Four gd10 (In[87:80],Out[351:320]);
	OneByte2Four gd11 (In[95:88],Out[383:352]);
	OneByte2Four gd12 (In[103:96],Out[415:384]);
	OneByte2Four gd13 (In[111:104],Out[447:416]);
	OneByte2Four gd14 (In[119:112],Out[479:448]);
	OneByte2Four gd15 (In[127:120],Out[511:480]);
	OneByte2Four gd16 (In[135:128],Out[543:512]);
	OneByte2Four gd17 (In[143:136],Out[575:544]);
	OneByte2Four gd18 (In[151:144],Out[607:576]);
	OneByte2Four gd19 (In[159:152],Out[639:608]);
	OneByte2Four gd20 (In[167:160],Out[671:640]);
	OneByte2Four gd21 (In[175:168],Out[703:672]);
	OneByte2Four gd22 (In[183:176],Out[735:704]);
	OneByte2Four gd23 (In[191:184],Out[767:736]);
	OneByte2Four gd24 (In[199:192],Out[799:768]);









endmodule
