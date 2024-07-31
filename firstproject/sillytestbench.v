`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:22 07/13/2024 
// Design Name: 
// Module Name:    sillytestbench 
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
module sillytestbench(
    );
	 reg clk, rst;
	 reg a, b, c, yexpected;
	 wire y;
	 
	 reg [31:0] count, error ;
	 reg [3:0] testvector [10000:0] ;
	 
	 sillyfuncation dut (a, b ,c , y);
	 // generate clock of timeperiod 10ns and 50percent dutycycle
	 always
		begin
			clk = 1 ; #5;
			clk = 0 ; #5;
		end
	
	 // at the start of the test load vector
	 initial begin 
		 $readmemb("testvect.tv", testvector);
		 count = 0;
		 error = 0;
		 rst = 1; #27;
		 rst = 0;
			 
	 end
	 
	 // test on rising edge of clk
	 always @ (posedge clk)
	 begin 
		#1; // 
		{ a , b, c , yexpected } = testvector[count];
	 end
	 
	 // check results on the falling edge of the clock
	 always @ (negedge clk)
		if (~rst) begin
				if (y !== yexpected) begin
					$display ("Error: inputs  %b", {a, b, c});
					$display (" output %b (%b expected)",y, yexpected);
					error = error + 1;
				end
				
				count = count +1 ;
				
				if (testvector[count] === 4'bx) begin 
					$display ("%d tests completed with %d errors.", count, error);
					$finish;
				
				end
		  end
		

	 
	 
	 
	 
	 
	 
	 


endmodule
