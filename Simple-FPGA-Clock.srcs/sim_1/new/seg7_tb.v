`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/14 21:14:47
// Design Name: 
// Module Name: seg7_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 7段数码管整体驱动测试文件
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seg7_tb(
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

    reg [3:0] a1;
    reg [3:0] b1;
    reg [3:0] c1;
    reg [3:0] d1;
    reg [3:0] e1;
    reg [3:0] f1;
    reg [3:0] g1;
    reg [3:0] h1;
    light_7seg l1(a,a1);
    light_7seg l2(b,b1);
    light_7seg l3(c,c1);
    light_7seg l4(d,d1);
    light_7seg l5(e,e1);
    light_7seg l6(f,f1);
    light_7seg l7(g,g1);
    light_7seg l8(h,h1);
    seg_scanner sc(a1,b1,c1,d1,e1,f1,g1,h1,rst,clk,out,en);
    
    always 
        #5 clk = ~clk;
    initial begin
        clk <= 1'b0;
        rst <= 1'b0;
        #10 rst <= 1'b1; 
    end
    
endmodule
