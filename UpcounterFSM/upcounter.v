`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:06:06 07/11/2024 
// Design Name: 
// Module Name:    upcounter 
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
module divideby3( input clk, rst, output y
    );
	 reg [1:0] state, nextstate;
	 parameter S0 = 2'b00;
	 parameter S1 = 2'b01;
	 parameter S2 = 2'b10;
	 parameter S3 = 2'b11;
	 
	 // next state logic , on every pos edge clk state shall move to nextstate
	 always @ (posedge clk, posedge rst)
		if (rst) state <= S0;
		else state <=nextstate;
	
	// combinational logic
	 always @ (*)
		case(state)
			S0: nextstate <= S1;
			S1: nextstate <= S2;
			S2: nextstate <= S3;
			S3: nextstate <= S0;
			default: nextstate <= S0;
		endcase
		
	assign y = state == S3;



endmodule
