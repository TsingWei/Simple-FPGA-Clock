`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/16 15:38:40
// Design Name: 
// Module Name: clock_assembly
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


module clock_assembly(
input clk,
input rst,
input [5:0]set_en,
input [3:0]set_val,
//input [7:0] set_sec,
//input [7:0] set_min,
//input [7:0] set_hour
//output [7:0] out_sec,
//output [7:0] out_min,
//output [7:0] out_hour
//input sw_en,
output wire [7:0] seg_out,//段信号，包括小数�?
output wire [7:0] seg_an//管�?�择使能信号
// output led1,
// output led2
    );
    // wire [7:0] set_sec;
    // wire [7:0] set_min;
    // wire [7:0] set_hour;
    wire [7:0] out_sec;
    wire [7:0] out_min;
    wire [7:0] out_hour;
    ///////////////////////////////
    wire sec_clk;
    wire cout_1;
    wire cout_2;
    wire day_out;
    //assign led1 = sec_clk;
    //assign led2 = out_sec[0];
    half_sec_timer sec_clock(clk,rst,sec_clk);
    counter60 sec(sec_clk,rst,set_en[1:0],set_sec,cout_1,out_sec);
    counter60 min(cout_1,rst,set_en[3:2],set_min,cout_2,out_min);
    counter24 hour(cout_2,rst,set_en[5:4],set_hour,day_out,out_hour);
    seg_assembly seg7(out_sec[3:0],out_sec[7:4],out_min[3:0],out_min[7:4],out_hour[3:0],out_hour[7:4],0,0,rst,clk,seg_out,seg_an);
endmodule
