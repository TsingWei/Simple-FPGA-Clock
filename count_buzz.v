`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/24 00:09:14
// Design Name: 
// Module Name: count_buzz
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


module count_buzz(
input [4:0]count,
input enable,
input rst,
input clk,
output  buzz_out,
output en,
output [4:0]count_out,
output [4:0]tempcount
    );
    wire buzzout;
    wire sw;
    wire cycle;
    reg [4:0]tempcount;
    reg en;
//    half_sec_timer ht(clk,rst,sw);
    new_buzz u(en,rst,clk,buzzout,cycle);
   
    assign  buzz_out=buzzout;
    assign count_out=count;
    always@(posedge cycle)
    begin
        if(!enable)
        begin
            tempcount<=1;
            en<=0;
        end
        else if(enable)
        begin
        if(tempcount<=count)
        begin
            tempcount<=tempcount+1;
            
            if(tempcount>count)
                en<=0;
            else
                en<=1;
        end
        else
            en<=0;
        end 
    end
endmodule
