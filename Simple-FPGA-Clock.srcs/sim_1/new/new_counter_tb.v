`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 09:00:56
// Design Name: 
// Module Name: new_counter_tb
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


module new_counter_tb(

    );
    reg clk_in;
    reg rst;
    reg set_en;
    reg [5:0]set_val;
    wire clk_out;
    wire [5:0]cnt;
    wire [7:0] dec_out;
    new_counter u(clk_in,rst,set_en,set_val,clk_out,cnt);
    decimal_encoder u2(cnt,dec_out);
    always #5 clk_in = ~clk_in;
    initial begin
        clk_in = 0;
        set_en = 0;
        rst = 0;
        set_val = 5'd37;
        #7 rst = 1;
        #5 rst = 0;
        #23 set_en = 1;
        #5 set_en = 0;  
    end
endmodule
