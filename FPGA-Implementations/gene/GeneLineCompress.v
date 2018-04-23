`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:49 02/12/2017 
// Design Name: 
// Module Name:    GeneLineCompress 
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
module GeneLineCompress(
    input [799:0] inBuffer,
    output [199:0] OutBuffer
    );


	FourByte2One g0 ( inBuffer[7:0], inBuffer[15:8], inBuffer[23:16], inBuffer[31:24], OutBuffer[7:0] );
	FourByte2One g1 ( inBuffer[39:32], inBuffer[47:40], inBuffer[55:48], inBuffer[63:56], OutBuffer[15:8] );
	FourByte2One g2 ( inBuffer[71:64], inBuffer[79:72], inBuffer[87:80], inBuffer[95:88], OutBuffer[23:16] );
	FourByte2One g3 ( inBuffer[103:96], inBuffer[111:104], inBuffer[119:112], inBuffer[127:120], OutBuffer[31:24] );
	FourByte2One g4 ( inBuffer[135:128], inBuffer[143:136], inBuffer[151:144], inBuffer[159:152], OutBuffer[39:32] );
	FourByte2One g5 ( inBuffer[167:160], inBuffer[175:168], inBuffer[183:176], inBuffer[191:184], OutBuffer[47:40] );
	FourByte2One g6 ( inBuffer[199:192], inBuffer[207:200], inBuffer[215:208], inBuffer[223:216], OutBuffer[55:48] );
	FourByte2One g7 ( inBuffer[231:224], inBuffer[239:232], inBuffer[247:240], inBuffer[255:248], OutBuffer[63:56] );
	FourByte2One g8 ( inBuffer[263:256], inBuffer[271:264], inBuffer[279:272], inBuffer[287:280], OutBuffer[71:64] );
	FourByte2One g9 ( inBuffer[295:288], inBuffer[303:296], inBuffer[311:304], inBuffer[319:312], OutBuffer[79:72] );
	FourByte2One g10 ( inBuffer[327:320], inBuffer[335:328], inBuffer[343:336], inBuffer[351:344], OutBuffer[87:80] );
	FourByte2One g11 ( inBuffer[359:352], inBuffer[367:360], inBuffer[375:368], inBuffer[383:376], OutBuffer[95:88] );
	FourByte2One g12 ( inBuffer[391:384], inBuffer[399:392], inBuffer[407:400], inBuffer[415:408], OutBuffer[103:96] );
	FourByte2One g13 ( inBuffer[423:416], inBuffer[431:424], inBuffer[439:432], inBuffer[447:440], OutBuffer[111:104] );
	FourByte2One g14 ( inBuffer[455:448], inBuffer[463:456], inBuffer[471:464], inBuffer[479:472], OutBuffer[119:112] );
	FourByte2One g15 ( inBuffer[487:480], inBuffer[495:488], inBuffer[503:496], inBuffer[511:504], OutBuffer[127:120] );
	FourByte2One g16 ( inBuffer[519:512], inBuffer[527:520], inBuffer[535:528], inBuffer[543:536], OutBuffer[135:128] );
	FourByte2One g17 ( inBuffer[551:544], inBuffer[559:552], inBuffer[567:560], inBuffer[575:568], OutBuffer[143:136] );
	FourByte2One g18 ( inBuffer[583:576], inBuffer[591:584], inBuffer[599:592], inBuffer[607:600], OutBuffer[151:144] );
	FourByte2One g19 ( inBuffer[615:608], inBuffer[623:616], inBuffer[631:624], inBuffer[639:632], OutBuffer[159:152] );
	FourByte2One g21 ( inBuffer[647:640], inBuffer[655:648], inBuffer[663:656], inBuffer[671:664], OutBuffer[167:160] );
	FourByte2One g22 ( inBuffer[679:672], inBuffer[687:680], inBuffer[695:688], inBuffer[703:696], OutBuffer[175:168] );
	FourByte2One g23 ( inBuffer[711:704], inBuffer[719:712], inBuffer[727:720], inBuffer[735:728], OutBuffer[183:176] );
	FourByte2One g24 ( inBuffer[743:736], inBuffer[751:744], inBuffer[759:752], inBuffer[767:760], OutBuffer[191:184] );
	FourByte2One g25 ( inBuffer[775:768], inBuffer[783:776], inBuffer[791:784], inBuffer[799:792], OutBuffer[199:192] );




endmodule
