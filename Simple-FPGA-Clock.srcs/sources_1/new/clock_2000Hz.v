`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/18 23:25:25
// Design Name: 
// Module Name: clock_2000Hz
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


module clock_2000Hz(
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
                if(cnt == 50000>>1-1)begin
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
