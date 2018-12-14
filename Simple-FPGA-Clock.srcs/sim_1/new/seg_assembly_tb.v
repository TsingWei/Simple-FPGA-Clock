`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/14 22:55:23
// Design Name: 
// Module Name: seg_assembly_tb
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


module seg_assembly_tb(

    );
    reg [3:0] a = 0;
    reg [3:0] b = 1;
    reg [3:0] c = 2;
    reg [3:0] d = 3;
    reg [3:0] e = 4;
    reg [3:0] f = 5;
    reg [3:0] g = 6;
    reg [3:0] h = 7;
    reg rst;
    reg clk;
    wire [7:0] out;//段信号，包括小数点
    wire [7:0] en;//管选择使能信号
    seg_assembly seg7(a,b,c,d,e,f,g,h,rst,clk,out,en);
    always 
        #5 clk = ~clk;
    initial begin
        clk <= 1'b0;
        rst <= 1'b0;
        #10 rst <= 1'b1; 
    end
endmodule
