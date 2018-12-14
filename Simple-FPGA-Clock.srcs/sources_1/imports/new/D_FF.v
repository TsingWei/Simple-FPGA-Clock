`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/29 18:23:06
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input Clk,
    input rst,
    input D,
    output reg Q,
    output Qn
      );
    assign Qn = ~Q;
    always@(posedge Clk, negedge rst)
    if(!rst) Q<=1'b0;
    else Q<=D;
endmodule
