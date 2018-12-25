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

//产生驱动蜂鸣器的信号
module new_buzz(
input enable,//蜂鸣器的使能信号
input rst,
input clk,
output reg buzzout,//信号输出
output cycle //输出半秒计时器的信号
    );
    wire buzz;
    wire sw;
   assign cycle=sw; 
   clock_500Hz c500(clk,rst,buzz);//500Hz时钟信号
   half_sec_timer ht(clk,rst,sw);
   always@(*) 
   begin
       if(enable)
           buzzout = sw & buzz;
       else 
           buzzout = 0;
   end
endmodule
