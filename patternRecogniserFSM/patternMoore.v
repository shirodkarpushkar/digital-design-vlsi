`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:56 07/11/2024 
// Design Name: 
// Module Name:    patternMoore 
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
module patternMoore(input clk, rst, a , output y
    );
	 reg [2:0] state, nextstate;
	 parameter S0 = 3'b000;
	 parameter S1 = 3'b001;
	 parameter S2 = 3'b010;
	 parameter S3 = 3'b011;
	 parameter S4 = 3'b100;
	 
	 // next state logic
	 always @(posedge clk ,posedge rst)
		if(rst) state <= S0;
		else state <= nextstate;
		
	 always @ (*)
		case (state)
			S0: if (a)  nextstate <= S1;
				 else    nextstate <= S0;
			S1: if (a)  nextstate <= S2;
				 else    nextstate <= S0;
			S2: if (~a) nextstate <= S3;
				 else    nextstate <= S2;
			S3: if (a)  nextstate <= S4;
				 else    nextstate <= S0;
			S4: if (a)  nextstate <= S2;
				 else    nextstate <= S0;
			default:    nextstate <= S0;
		endcase

	assign y = (state == S4); 
		
	 
	 
	 


endmodule
