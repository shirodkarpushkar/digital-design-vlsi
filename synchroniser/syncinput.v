`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:24 07/10/2024 
// Design Name: 
// Module Name:    syncinput 
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
module syncinput( input en , input rst , input clk , input [3:0] d , output reg [3:0] q
    );
	 reg [3:0] q0 ;
	 always @ ( posedge clk, posedge rst)
		begin
			if (rst) q <= 4'b0;
			else if (en) 
				begin
					q0 <= d;
					q <= q0;
				end
		end
	 


endmodule
