`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 11:48:39
// Design Name: 
// Module Name: new_buzz
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module new_buzz(
input enable,
input rst,
input clk,
output buzzout
    );
    //reg buzzout;
    wire buzz;
    clock_500Hz u1(clk,rst,buzz);
    assign buzzout = enable&buzz;
endmodule
