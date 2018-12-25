`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/24 20:20:53
// Design Name: 
// Module Name: clock_reg
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


module clock_reg(
input clk,
input rst,
input [5:0]set_en,
input [3:0]set_val,
//input [7:0] set_sec,
//input [7:0] set_min,
//input [7:0] set_hour
output [7:0] out_sec,
output [7:0] out_min,
output [7:0] out_hour,
//input sw_en,
output wire [7:0] seg_out,//段信号，包括小数�??
output wire [7:0] seg_an//管�?�择使能信号
// output led1,
// output led2
    );

    seg_assembly seg7(8'b11011011,out_sec[3:0],out_sec[7:4],0,out_min[3:0],out_min[7:4],0,out_hour[3:0],out_hour[7:4],rst,clk_raw,seg_out,seg_an);

endmodule
