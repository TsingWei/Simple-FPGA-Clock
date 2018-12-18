`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/17 22:56:46
// Design Name: 
// Module Name: clock_500Hz
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


module clock_500Hz(
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
                if(cnt == 200000>>1-1)begin
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
