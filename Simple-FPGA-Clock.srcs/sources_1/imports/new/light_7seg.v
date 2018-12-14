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
//      7段数码管译码器，输入4位，输出7位
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
            4'h0: seg_out = 8'b01000000; // 0  
            4'h1: seg_out = 8'b01111001; // 1
            4'h2: seg_out = 8'b00100100; // 2
            4'h3: seg_out = 8'b00110000; // 3
            4'h4: seg_out = 8'b00011001; // 4
            4'h5: seg_out = 8'b00010010; // 5
            4'h6: seg_out = 8'b00000010; // 6
            4'h7: seg_out = 8'b01111000; // 7
            4'h8: seg_out = 8'b00000000; // 8
            4'h9: seg_out = 8'b00010000; // 9
            4'ha: seg_out = 8'b00001000; // A
            4'hb: seg_out = 8'b00000011; // b
            4'hc: seg_out = 8'b01000110; // c
            4'hd: seg_out = 8'b00100001; // d
            4'he: seg_out = 8'b00000110; // E
            4'hf: seg_out = 8'b00001110; // F
            default: seg_out = 8'b00000000;  
        endcase
    end   
endmodule
