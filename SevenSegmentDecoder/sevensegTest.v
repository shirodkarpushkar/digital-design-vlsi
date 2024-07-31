`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:42:25 07/11/2024
// Design Name:   sevenseg
// Module Name:   /home/ise/SevenSegmentDecoder/sevensegTest.v
// Project Name:  SevenSegmentDecoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sevenseg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sevensegTest;

	// Inputs
	reg [3:0] data;

	// Outputs
	wire [6:0] y;

	// Instantiate the Unit Under Test (UUT)
	sevenseg uut (
		.data(data), 
		.y(y)
	);

	initial begin
		// loop through all possible values of data
		 for (data = 0; data < 10; data = data+1) begin
			  #10;
		 end
        
		// Add stimulus here

	end
      
endmodule

