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


module clock_with_set(
    input           clk,
    input           rst,
    input      [3:0] row,                 // �������?? ��
    input     [5:0] set_en,
    output [3:0] col,
    output wire [7:0] seg_out,//段信号，包括小数�???
    output wire [7:0] seg_an,//管�?�择使能信号
    output [3:0]led,
    output buzz_out
    );

    wire round;

    wire [7:0] in_sec;
    wire [7:0] in_min;
    wire [7:0] in_hour;

    wire [5:0] sec;
    wire [5:0] min;
    wire [5:0] hour;

    wire [3:0] keyboard_val;
    //assign led = keyboard_val;
    key_top kt(clk,rst,row,col,keyboard_val);
    new_clock_assembly can(clk,rst,set_en,keyboard_val,in_sec,in_min,in_hour,seg_out,seg_an);
    ring_module rm(sec,min,hour,round,buzz_en);
    count_buzz cb(round,buzz_en,rst,clk,buzz_out);
    assign sec = in_sec[7:4]*10 +in_sec[3:0];
    assign min = in_min[7:4]*10 +in_min[3:0];
    assign hour = in_hour[7:4]*10 +in_hour[3:0];
    assign led[0] = buzz_en;


endmodule
