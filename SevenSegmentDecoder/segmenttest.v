`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:28 07/11/2024 
// Design Name: 
// Module Name:    segmenttest 
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
module segmenttest(
    );
	 reg [3:0] data;
	 wire [6:0] y;
	 ssegment dut( data, y);
	 
	 initial begin
		// loop through all possible values of data
		    data = 4'b0000;  #10;
			 data = 4'b0001;  #10;
			 data = 4'b0010;  #10;
			 data = 4'b0011;  #10;
			 data = 4'b0100;  #10;
			 data = 4'b0101;  #10;
			 data = 4'b0110;  #10;
			 data = 4'b0111;  #10;
			 data = 4'b1000;  #10;
			 data = 4'b1001;  #10;
			 
end


endmodule
