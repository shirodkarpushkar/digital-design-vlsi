`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:56 07/25/2024 
// Design Name: 
// Module Name:    soptestbench 
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
module soptestbench(
    );
	 reg a, b, c ;
	 wire y;
	 sopexample dut(a,b,c,y);
	 
	 initial begin
	 
		 a = 0 ;  b = 0 ; c = 0 ; #10; // 000
		 c = 1 ; #10;// 001
		 b = 1 ; c = 0 ; #10;// 010
		 c = 1 ; #10;
		 
		 a = 1 ; b = 0; c = 0 ; #10;
		 c = 1 ; #10;
		 b = 1 ; c = 0 ; #10;
		 c = 1 ; #10; // 111
	 
	 end
	 
	 


endmodule
