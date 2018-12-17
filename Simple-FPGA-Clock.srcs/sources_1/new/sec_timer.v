`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/16 15:22:44
// Design Name: 
// Module Name: sec_timer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 输出1sec
// Dependencies: 
// 时钟信号需要介入半秒计时器
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sec_timer(
input clk,
input rst,
output reg cout
    );
    reg cnt;
    wire clk1;
    half_sec_timer hsc(clk,rst,clk1);
    always@(posedge clk1)begin
            if(~rst)begin
                cnt <=0;
                cout <=0;
                end
            else begin
                if(cnt == 1)begin
                    cout <=1;
                    cnt <=0;
                    end
                else begin
                    cnt <= cnt +1; 
                    cout <= 0;
                    end
            end 
          end  
endmodule