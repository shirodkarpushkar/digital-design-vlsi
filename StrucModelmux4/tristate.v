`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:38 07/09/2024 
// Design Name: 
// Module Name:    tristate 
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
module tristate(input [3:0] a , input en , output [3:0] y
    );
	 assign y = en ? a : 4'bz;
	 


endmodule
