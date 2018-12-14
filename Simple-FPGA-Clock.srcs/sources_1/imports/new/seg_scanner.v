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
    reg [3:0] scan_cnt;
    always@(posedge clk, negedge rst) begin
        if(!rst) begin
            scan_cnt <=3'b001;
            en <= 8'hFF;
            out <= 8'hFF;
            end
        case (scan_cnt)
            3'd1: begin
                out<=a;
                en<=8'd1;
                end
            3'd2: begin 
                out<=b;
                en<=8'd2;
                end
            3'd3: begin
                out<=c;
                en<=8'd4;
                end
            3'd4: begin
                out<=d;
                en<=8'd8;
                end
            3'd5: begin 
                out<=e;
                en<=8'd16;
                end
            3'd6: begin
                out<=f;
                en<=8'd32;
                end
            3'd7: begin
                out<=g;
                en<=8'd64;
                end
            3'd8: begin
                out<=h;
                en<=8'd128;
                end
        endcase
        scan_cnt <= scan_cnt << 1;
        if(scan_cnt==8'b1000_0000)
            scan_cnt<=8'd1;
    end
endmodule
