`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:13 07/07/2024 
// Design Name: 
// Module Name:    project_1 
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
module sillyfuncation(input a,b,c, output y
    );
	 assign y = ~a & ~b & ~c |
					 a & ~b & ~c |
					 a & ~b &  c ;


endmodule
