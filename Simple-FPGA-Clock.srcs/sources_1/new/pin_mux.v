`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/15 14:41:10
// Design Name: 
// Module Name: pin_mux
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


module pin_mux(
input [3:0] a,
input rst,
input clk,
output wire [7:0] seg_out,//段信号，包括小数�?
output wire [7:0] seg_an//管�?�择使能信号
//output cout,
//output cnt
    );
    reg [24:0] cnt;
    reg cout;
   // wire b;
    //assign b = a+1;
    seg_assembly seg7(a,a+1,a+2,a+3,a+4,a+5,a+6,a+7,rst,cout,seg_out,seg_an);
    
    always@(posedge clk)begin
        if(~rst)begin
            cnt <=0;
            cout <=0;
            end
        else begin
            if(cnt == 100000-1)begin
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
