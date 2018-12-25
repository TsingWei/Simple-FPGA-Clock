`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/24 20:37:12
// Design Name: 
// Module Name: ring_module
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

//�������������ļ�
module ring_module(
    input en, //ʹ�ܷ����ź�
    input clk,
    input rst,
    input [7:0] in_sec,//����ʱ����Ϣ����
    input [7:0] in_min,//����ʱ����Ϣ�ķ�
    input [7:0] in_hour,//����ʱ����Ϣ��ʱ
    output [4:0] round,//ring round
    output  buzz_out
    );
    reg buzz_en;
    wire [5:0] sec;
    wire [5:0] min;
    wire [5:0] hour;
    assign sec = in_sec[7:4]*10 +in_sec[3:0];
    assign min = in_min[7:4]*10 +in_min[3:0];
    assign hour = in_hour[7:4]*10 +in_hour[3:0]; 
    
    assign round = hour[4:0];
    count_buzz cb(round,buzz_en,rst,clk,buzz_out);

    always@* begin
        if(en)
        begin
        if(in_min == 59)
            if(in_sec >= 58)
                buzz_en = 1;
            else
                buzz_en = 0;
        else if(in_min == 0)
            if(in_sec <= 30)
                buzz_en = 1;
            else
                buzz_en = 0;
        else
            buzz_en = 0;
        end
        else
            buzz_en=0;
    end
endmodule
