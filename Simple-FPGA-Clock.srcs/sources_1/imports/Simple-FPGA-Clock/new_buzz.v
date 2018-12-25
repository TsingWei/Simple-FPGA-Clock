`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 11:48:39
// Design Name: 
// Module Name: new_buzz
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

//�����������������ź�
module new_buzz(
input enable,//��������ʹ���ź�
input rst,
input clk,
output reg buzzout,//�ź����
output cycle //��������ʱ�����ź�
    );
    wire buzz;
    wire sw;
   assign cycle=sw; 
   clock_500Hz c500(clk,rst,buzz);//500Hzʱ���ź�
   half_sec_timer ht(clk,rst,sw);
   always@(*) 
   begin
       if(enable)
           buzzout = sw & buzz;
       else 
           buzzout = 0;
   end
endmodule
