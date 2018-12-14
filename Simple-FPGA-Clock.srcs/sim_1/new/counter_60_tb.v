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
    wire cout;
    wire [7:0] dout;
    counter60 c24(clk,rst,cout,dout);
    always 
        #5 clk = ~clk;
    initial begin
        clk <= 1'b0;
        rst <= 1'b0;
        #10 rst <= 1'b1; 
    end
endmodule
