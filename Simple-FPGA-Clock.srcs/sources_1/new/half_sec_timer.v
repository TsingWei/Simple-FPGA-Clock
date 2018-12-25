`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/16 15:08:21
// Design Name: 
// Module Name: half_sec_timer
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

//半秒计时器，每半秒钟更新一次
module half_sec_timer(
input clk,
input rst,
output reg cout
    );
    reg [26:0]cnt;
    always@(posedge clk)begin
            if(rst)begin
                cnt <=0;
                cout <=0;
                end
            else begin
                if(cnt == 50000000>>1-1)begin
                    cout <=~cout;
                    cnt <=0;
                    end
                else begin
                    cnt <= cnt +1; 
                    //cout <= 0;
                    end
            end 
          end  
endmodule
