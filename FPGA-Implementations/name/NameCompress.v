`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:39 02/18/2017 
// Design Name: 
// Module Name:    NameCompress 
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
module NameCompress(
    input [127:0] InString,
    input clk,
    output reg [159:0] Out,
    output reg write,
    output reg [127:0] strcmp0,
    output reg [127:0] strcmp1
    );
	 
	 
	reg enable;
	reg wrx;
	reg reset;
	reg [127:0] strcmp2;
	wire [31:0] counter;
		 
	 
	CounterModule cntr (
		.clk(clk),
		.enable(enable),
		.reset(reset),
		.counter(counter)
	);
	 
	initial begin
	enable = 1;
	wrx = 0;
	end

	always @ (posedge clk)
	begin : STRCOUNTER
		//$display ("time\tclk\tenable\treset\t\t\t\tcounter");
		//$monitor ("%g\t%b\t%b\t%b\t%b\t%b", $time,  clk, xenable, xreset, strcmp0, strcmp1);
		//$monitor ("%g\t%h\t%h\t%h\t%b", $time,strcmp0, strcmp1, counter, write);
		

		write <= ~(strcmp2 == strcmp1); 
		reset <= ~(strcmp0 == strcmp1); 
		strcmp2 <= strcmp1; 
		strcmp1 <= strcmp0; 
		strcmp0 <= InString; 
		Out[31:0] <= counter; 
		Out[159:32] <= strcmp2;

	end

	always @ (negedge clk)	
	begin: WRDWN
		write <=0;
	end
	


endmodule

