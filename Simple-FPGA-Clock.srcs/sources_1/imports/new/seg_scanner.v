`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/14 10:51:19
// Design Name: 
// Module Name: seg_scanner
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 200hz stable
// 50hz twinkle
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Not Finished 
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seg_scanner(
    input [7:0] a,
    input [7:0] b,
    input [7:0] c,
    input [7:0] d,
    input [7:0] e,
    input [7:0] f,
    input [7:0] g,
    input [7:0] h,
    input rst,
    input clk,
    output reg [7:0] out,//段信号，包括小数点
    output reg [7:0] en//管选择使能信号
    );
    parameter seg_num = 8;
    reg [7:0] scan_cnt;
    always en = ~scan_cnt;
    always@(posedge clk, negedge rst) begin
        if(!rst) begin
            scan_cnt <=8'b0000_0001;
            en <= 8'hFF;
            out <= 8'hFF;
            end
        case (scan_cnt)
            8'd1: out<=a;
            8'd2: out<=b;
            8'd4: out<=c;
            8'd8: out<=d;
            8'd16: out<=e;
            8'd32: out<=f;
            8'd64: out<=g;
            8'd128: out<=h;
        endcase
        scan_cnt <= scan_cnt << 1;
        if(scan_cnt==8'b1000_0000)
            scan_cnt<=8'd1;
    end
endmodule
