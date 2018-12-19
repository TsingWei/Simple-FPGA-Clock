`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SUSTech_CSE
// Engineer: Moe
// 
// Create Date: 2018/12/12 09:52:13
// Design Name: 
// Module Name: light_7seg
// Project Name: Clock
// Target Devices: 
// Tool Versions: 
// Description: 
//      7段数码管译码器，输入4位，输出7�?
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module light_7seg(input [3:0] num, output reg [7:0] seg_out);
    
    always @ *
    begin
        case(num)
            4'h0: seg_out = 8'b11000000; // 0  
            4'h1: seg_out = 8'b11111001; // 1
            4'h2: seg_out = 8'b10100100; // 2
            4'h3: seg_out = 8'b10110000; // 3
            4'h4: seg_out = 8'b10011001; // 4
            4'h5: seg_out = 8'b10010010; // 5
            4'h6: seg_out = 8'b10000010; // 6
            4'h7: seg_out = 8'b11111000; // 7
            4'h8: seg_out = 8'b10000000; // 8
            4'h9: seg_out = 8'b10010000; // 9
            4'ha: seg_out = 8'b10001000; // A
            4'hb: seg_out = 8'b10000011; // b
            4'hc: seg_out = 8'b11000110; // c
            4'hd: seg_out = 8'b10100001; // d
            4'he: seg_out = 8'b10000110; // E
            4'hf: seg_out = 8'b10001110; // F
            default: seg_out = 8'b10000000;  
        endcase
    end   
endmodule
