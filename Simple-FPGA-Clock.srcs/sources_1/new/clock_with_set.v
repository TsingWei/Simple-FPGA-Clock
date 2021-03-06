`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/18 21:49:34
// Design Name: 
// Module Name: clock_with_set
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

//带置位的时钟总成
module clock_with_set(
    input en,           //使能定时响铃功能
    input           clk,
    input           rst,
    input      [3:0] row,
    input     [5:0] set_en,//置位的位选择
    output [3:0] col,
    output wire [7:0] seg_out,
    output wire [7:0] seg_an,
    output [3:0]led, // 调试用
    output buzz_out
    );

    wire [4:0]round;
    
    wire [7:0] in_sec;
    wire [7:0] in_min;
    wire [7:0] in_hour;
    wire [3:0] keyboard_val;
    
    key_top kt(clk,rst,row,col,keyboard_val);           //
    new_clock_assembly ca(clk,rst,set_en,keyboard_val,in_sec,in_min,in_hour,seg_out,seg_an);
    ring_module rm(en,clk,rst,in_sec,in_min,in_hour,round,buzz_out);
     
    // 板上debug
    assign led[0] = buzz_out;
    assign led[3:1] = round[2:0];

endmodule
