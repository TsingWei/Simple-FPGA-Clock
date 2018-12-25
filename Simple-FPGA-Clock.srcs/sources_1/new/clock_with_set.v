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

    wire [4:0]round;

    wire [7:0] in_sec;
    wire [7:0] in_min;
    wire [7:0] in_hour;


    wire [3:0] keyboard_val;
    //assign led = keyboard_val;
    key_top kt(clk,rst,row,col,keyboard_val);
    new_clock_assembly can(clk,rst,set_en,keyboard_val,in_sec,in_min,in_hour,seg_out,seg_an);
    ring_module rm(clk,rst,in_sec,in_min,in_hour,round,buzz_out);
    

    assign led[0] = buzz_out;
    assign led[3:1] = round[2:0];


endmodule
