`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:56 07/08/2024 
// Design Name: 
// Module Name:    adder 
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
module fladder(input a, b, cin, output sum ,cy 
    );
	 wire p, g;
	 assign p = a^b;
	 assign g = a&b;
	 assign sum = p^cin;
	 assign cy = g |(b&cin)|(a&cin);


endmodule
