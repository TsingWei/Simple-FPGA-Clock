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
input sec_clk,
input rst,
input set_en,
input [7:0] set_sec,
input [7:0] set_min,
input [7:0] set_hour,
output [7:0] out_sec,
output [7:0] out_min,
output [7:0] out_hour
    );
    wire cout_1;
    wire cout_2;
    wire day_out;
    counter60 sec(sec_clk,rst,set_en,set_sec,cout_1,out_sec);
    counter60 min(cout_1,rst,set_en,set_min,cout_2,out_min);
    counter24 hour(cout_2,rst,set_en,set_hour,day_out,out_hour);
    
endmodule
