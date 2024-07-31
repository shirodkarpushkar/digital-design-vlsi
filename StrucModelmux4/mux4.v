`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:07 07/09/2024 
// Design Name: 
// Module Name:    mux4 
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
module mux4( input [3:0] a0, a1, a2, a3 , input [1:0] s , output [3:0] y
    );
	 wire [3:0] m1_out, m2_out;
	 mux2 m0(a3 , a2 , s[0] , m1_out);
	 mux2 m1(a1 , a0 , s[0] , m2_out);
	 mux2 m2(m1_out , m2_out , s[1] , y);
	 


endmodule
