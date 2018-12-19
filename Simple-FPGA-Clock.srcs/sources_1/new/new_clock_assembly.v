`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 13:04:51
// Design Name: 
// Module Name: new_clock_assembly
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


module new_clock_assembly(
input clk_raw,
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
output wire [7:0] seg_out,//段信号，包括小数�??
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
    wire sec_clk;
    wire cout_1;
    wire cout_2;
    wire day_out;
    //assign led1 = sec_clk;
    //assign led2 = out_sec[0];
    half_sec_timer sec_clock(clk_raw,rst,sec_clk);//��ʱ��
    new_counter_sub #(60) sec(clk_raw,sec_clk,rst,set_en[1:0],set_val,cout_1,out_sec);
    new_counter_sub #(60) min(clk_raw,cout_1,rst,set_en[3:2],set_val,cout_2,out_min);
    new_counter_sub hour(clk_raw,cout_2,rst,set_en[5:4],set_val,day_out,out_hour);
    seg_assembly seg7(8'b11011011,out_sec[3:0],out_sec[7:4],0,out_min[3:0],out_min[7:4],0,out_hour[3:0],out_hour[7:4],rst,clk_raw,seg_out,seg_an);
endmodule

module new_clock_assembly_tb();
reg clk_raw;
reg  rst;
reg  [5:0]set_en;
reg  [3:0]set_val;
 wire [7:0] seg_out;//段信号，包括小数�??
 wire [7:0] seg_an;//管�?�择使能信号
 new_clock_assembly u(clk_raw,rst,set_en,set_val,seg_out,seg_an);
always #5 clk_raw = ~clk_raw;
initial begin
clk_raw = 1;
rst=1;
set_en = 0;
set_val=0;
#5 rst = 0;
end
endmodule