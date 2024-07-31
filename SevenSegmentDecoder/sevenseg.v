`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:22 07/10/2024 
// Design Name: 
// Module Name:    sevenseg 
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
//l
//////////////////////////////////////////////////////////////////////////////////
module sevenseg(input [3:0] data, output reg [6:0] y
    );
	 always @ (*)
		case (data)
        0 : y = 7'b111_1110;
        1 : y = 7'b011_0000;
        2 : y = 7'b110_1101;
        3 : y = 7'b111_1001;
        4 : y = 7'b011_0011;
        5 : y = 7'b101_1011;
        6 : y = 7'b101_1111;
        7 : y = 7'b111_0000;
        8 : y = 7'b111_1111;
        9 : y = 7'b111_1011;
        default : y = 7'b111_1111;
        endcase


endmodule