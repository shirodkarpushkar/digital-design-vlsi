`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:10 07/11/2024 
// Design Name: 
// Module Name:    tstsevenseg 
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
module tstsevenseg(
    );
reg [3:0] data;
wire [6:0] y;

sevenseg dut(data,y);

initial begin
    // loop through all possible values of data
    for (data = 0; data < 10; data = data+1) begin
        #10;
    end
    
    
end

endmodule
