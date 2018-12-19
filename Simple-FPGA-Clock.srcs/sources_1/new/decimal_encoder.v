`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 08:29:39
// Design Name: 
// Module Name: decimal_encoder
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

//输入0-63二进制,输出双四位BCD数字
module decimal_encoder(
input [5:0]bin_in,
output [7:0]dec_out
    );
    assign dec_out[3:0] = bin_in % 10;
    assign dec_out[7:4] = bin_in / 10;
endmodule
