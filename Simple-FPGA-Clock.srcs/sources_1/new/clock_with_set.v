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
  input      [3:0] row,                 // ������� ��
  input     [5:0] set_en,
  output [3:0] col,
  output wire [7:0] seg_out,//段信号，包括小数�?
  output wire [7:0] seg_an//管�?�择使能信号
    );
    wire [3:0] keyboard_val;
    key_top(clk,rst,row,col,keyboard_val);
    clock_assembly(clk,rst,set_en,keyboard_val,seg_out,seg_an);
endmodule
