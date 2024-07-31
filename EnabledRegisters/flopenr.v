`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:15 07/10/2024 
// Design Name: 
// Module Name:    flopenr 
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
module flopenr(input clk, input en ,input rst ,  input [3:0] d , output reg [3:0] q
    );
	 always @ (posedge clk , posedge rst)
		if (rst) q <= 4'b0;
		else if (en) q<= d; 
	 
	



endmodule
