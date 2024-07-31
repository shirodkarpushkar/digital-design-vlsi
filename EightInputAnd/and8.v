`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:22 07/08/2024 
// Design Name: 
// Module Name:    and8 
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
module and8(input [7:0] a , output y
    );
	 assign y = &a; // and a , simple and operation of 8 inputs


endmodule
