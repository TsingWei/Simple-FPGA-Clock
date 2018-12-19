`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 11:54:45
// Design Name: 
// Module Name: decimal_decoder
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


//BCD-二进制译码器
//,输入双四位BCD数字,输出0-9二进制
module decimal_decoder(
input [3:0]dec_in,
output reg [3:0]bin_out
    );
    always@(*) begin
        if(dec_in>=4'd10)
            bin_out = 4'd9;
        else 
            bin_out = dec_in;
    end
endmodule

