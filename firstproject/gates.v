`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:46 07/08/2024 
// Design Name: 
// Module Name:    gates 
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
module gates(input [3:0] a, b, output [3:0] y1, y2, y3, y4, y5
    );
	 
	 /* five diffirent 2 input logic gates using 4bit buses */
	 assign y1 = a & b ;
	 assign y2 = a | b ; // or
	 assign y2 = a ^ b ; // xor
	 assign y1 = ~(a & b); // nand
	 assign y1 = ~(a | b) ; // nor



endmodule
