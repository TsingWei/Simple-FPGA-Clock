`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 13:09:17
// Design Name: 
// Module Name: new_counter_sub
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


module new_counter_sub(
input clk_raw,
input clk_in,
input rst,
input [1:0]set_en,
input [3:0]set_val,
output clk_out,
output [7:0] dout
    );
    parameter cc = 24;//½øÖÆ
    wire m_set_en;
    //wire set_bit;
    wire[5:0] m_set_val;
    wire m_set_en_out;
    wire [5:0]cur_val;
    assign m_set_en = set_en[0] | set_en[1];
    new_counter_setter #(cc) ncs(clk_raw,m_set_en,set_en[0],cur_val,set_val,m_set_en_out,m_set_val);
    new_counter #(cc) nc(clk_in,rst,m_set_en_out,m_set_val,clk_out,cur_val);
    decimal_encoder de(cur_val,dout);
endmodule

module new_clock_sub_tb();
reg clk_raw;
reg  rst;
reg  [1:0]set_en;
reg  [3:0]set_val;
wire clk_out;
 wire [7:0] seg_out;// wire [7:0] seg_an;//
 new_counter_sub u(clk_raw,rst,set_en,set_val,clk_out,seg_out);
always #5 clk_raw = ~clk_raw;
initial begin
clk_raw = 1;
rst=1;
set_en = 0;
set_val=6;
#5 rst = 0;
#10 set_en = 2;
#6 set_en = 0;
end
endmodule