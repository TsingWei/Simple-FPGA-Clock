`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Moe
// 
// Create Date: 2018/12/15 01:09:48
// Design Name: 
// Module Name: counter_60_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 测试通过
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_60_tb(

    );
    reg clk;
    reg rst;
    reg set_en;
    reg [7:0]set_val;
    wire cout;
    wire [7:0] dout;
//    wire [7:0] dout;
    counter60 c24(clk,rst,set_en,set_val,cout,dout);
    always 
        #5 clk = ~clk;
    initial begin
        clk <= 1'b0;
        rst <= 1'b1;
        set_en = 1'b0;
        set_val = 8'h55;
        #10 rst <= 1'b0; 
        #50 set_en = 1;
        #60 set_en = 0;
    end
    
endmodule
