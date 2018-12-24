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
input count,
input enable,
input rst,
input clk,
output reg buzz_out
    );
    wire buzzout;
    wire sw;
    wire cycle;
    reg tempcount;
    reg en;
//    half_sec_timer ht(clk,rst,sw);
    new_buzz nb(en,rst,clk,buzzout,cycle);
    always@(*)
    begin
        buzz_out=buzzout;
    end
    always@(posedge cycle or posedge rst)
    begin
        if(rst)
        begin
            tempcount<=0;
        end
        else if(enable)
        begin
            tempcount=tempcount+1;
            if(tempcount>count)
                en<=0;
            else
                en<=1;
        end 
    end
endmodule
