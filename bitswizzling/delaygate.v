`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:59:40 07/09/2024 
// Design Name: 
// Module Name:    delaygate 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File CreatedL
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module delaygate(input a, b, c, output y
    );
	 /*delay example with #{delay}*/
	 wire ab, bb, cb, n1, n2, n3;
	 assign #1 {ab, bb, cb} = ~{a, b, c}; // 1ns delay not gate
	 assign #2 n1 = ab & bb & cb; // 3 input and 2ns delay
	 assign #2 n2 = a & bb & cb; // 3 input and 2ns delay
	 assign #2 n3 = a & bb & c; // 3 input and 2ns delay
	 assign #4 y  = n1|n2|n3; // or gate with 4ns delay


endmodule
