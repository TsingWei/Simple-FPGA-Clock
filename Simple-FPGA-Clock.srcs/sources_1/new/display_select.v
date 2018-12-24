`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/24 19:55:22
// Design Name: 
// Module Name: display_select
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

// select==1: ouput = <1>
// select==2: ouput = <2>
module display_select(
input select,
input [5:0]en1,
input [3:0]val1,
input [5:0]en2,
input [3:0]val2,
output [5:0]en,
output [3:0]val
    );
assign en = (select)? en1 : en2;
assign val = (select)? val1 :val2;
endmodule
