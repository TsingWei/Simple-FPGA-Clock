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
input rst,
input clk,
output buzz_out
    );
    wire sw;
    reg en;
    reg tempcount;
    half_sec_timer ht(clk,rst,sw);
    new_buzz nb(en,rst,clk,buzz_out);
    always@(posedge sw)
    begin
        if(rst)
        begin
            tempcount<=0;
            en<=sw;
        end
        else if(sw)
        begin
            tempcount=tempcount+1;
            if(tempcount>count)
                en<=0;
        end
    end
endmodule
