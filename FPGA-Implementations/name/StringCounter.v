`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:58 02/18/2017 
// Design Name: 
// Module Name:    StringCounter 
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
module StringCounter(
    input [127:0] InString,
    input clk,
    input enable,
    input reset,
    output reg [159:0] Out,
    output reg write//,
	 //output reg xenable
    );

	reg xenable;
	reg xreset;
	reg [127:0] strcmp0 ;
	reg [127:0] strcmp1;
	wire [31:0] counter;
		 
	 
	CounterModule cntr (
		.clk(clk),
		.enable(xenable),
		.reset(xreset),
		.counter(counter)
	);
	 
	


	always @ (posedge clk)
	begin : STRCOUNTER
		$display ("time\tclk\tenable\treset\t\t\t\tcounter");
		//$monitor ("%g\t%b\t%b\t%b\t%b\t%b", $time,  clk, xenable, xreset, strcmp0, strcmp1);
		$monitor ("%g\t%b\t%b", $time,strcmp0, strcmp1);
		//xenable <= #1 1;
		strcmp1 <= #1 strcmp0; 
		strcmp0 <= #1 InString;
		if(strcmp1 & strcmp0) begin
			xenable <= #1 1; xreset <= #1 0;
		end
		else begin
			Out[31:0] <= #1 counter; Out[159:32] <= #1 strcmp1; write <= #1 1; xreset <= #1 1; 
		end
	end
	
	
	
endmodule

