`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:51 07/27/2024
// Design Name:   flopenr
// Module Name:   /home/ise/EnabledRegisters/dfloptestbench.v
// Project Name:  EnabledRegisters
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: flopenr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dfloptestbench();

	// Inputs
	reg clk;
	reg en;
	reg rst;
	reg [3:0] d;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	flopenr uut (
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.d(d), 
		.q(q)
	);
	// generate clk signal, outside intial begin statement
	always
	 begin
		clk = 0; #5;
		clk = 1; #5;
	 end

	initial begin
		// Initialize Inputs
	
			
		
		en = 1;
		rst = 0;
		
		
		d = 4'b0000; #12;
		d = 4'b0001; #10;
		d = 4'b0010; #10;
		d = 4'b0011; #10;
		d = 4'b1001; #10;
		d = 4'b1101; #10;
		d = 4'b1111; #10;				
		d = 4'b0000; #10;

			

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

