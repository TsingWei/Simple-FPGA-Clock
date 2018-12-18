`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/15 01:20:46
// Design Name: 
// Module Name: counter24
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


module counter24(
    input clk,
    input rst,
    input [1:0]set_en,
    input [7:0]set_val,
    output cout,
    output [7:0] dout
    );
    reg m_rst;
    wire m_clk;
    counter10_async l(m_clk,m_rst,set_en[1],set_val[7:4],cout,dout[7:4]);
    counter10_sync r(clk,m_rst,set_en[0],set_val[3:0],m_clk,dout[3:0]);
    always@(posedge clk,posedge rst) begin
        if(rst || dout >= 8'h23) begin 
            m_rst <=1;
        end
        else m_rst <= 0;
    end
endmodule
