`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/15 15:05:59
// Design Name: 
// Module Name: mux_sim
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


module mux_sim(

    );
        reg [3:0] a = 0;
        reg rst;
        reg clk;
        wire [7:0] out;//段信号，包括小数�?
        wire [7:0] en;//管�?�择使能信号
        wire cout;
        wire [24:0]cnt;
        pin_mux seg7(a,rst,clk,out,en,cout,cnt);
        always 
            #1 clk = ~clk;
        initial begin
            clk <= 1'b0;
            rst <= 1'b0;
            #2 rst <= 1'b1; 
        end
endmodule
