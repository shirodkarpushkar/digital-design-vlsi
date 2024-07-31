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
//
//////////////////////////////////////////////////////////////////////////////////
module testbench();
reg [3:0] data;
wire [6:0] y;

sevenseg dut(data,y);

initial begin
    // loop through all possible values of data while
    data = 4'b0000;  #1;
    data = 4'b0001;  #1;
    data = 4'b0010;  #1;
    data = 4'b0011;  #1;
    data = 4'b0100;  #1;
    data = 4'b0101;  #1;
    data = 4'b0110;  #1;
    data = 4'b0111;  #1;
    data = 4'b1000;  #1;
    data = 4'b1001;  #1;
    data = 4'b1010;  #1;
    data = 4'b1011;  #1;
    data = 4'b1100;  #1;
    data = 4'b1101;  #1;
    data = 4'b1110;  #1;
    data = 4'b1111;  #1;




   

    



    
    
    
end

endmodule
