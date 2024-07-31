`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:53 07/18/2024 
// Design Name: 
// Module Name:    sopexample 
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
module sopexample( input a,b,c , output y
    );
	 assign y = ~a & ~b & ~c | ~a & ~b & c | a & b & c ; 
	 


endmodule
