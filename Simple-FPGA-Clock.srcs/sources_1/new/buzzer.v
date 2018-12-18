`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/17 23:51:21
// Design Name: 
// Module Name: buzzer
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


module buzzer(
input en,
input rst,
input clk,
output reg buzz_out,
output reg led1,
output reg led2
    );
    wire buzz;
    wire sw;
    //assign led1=clk;
    clock_500Hz c500(clk,rst,buzz);
    half_sec_timer ht(clk,rst,sw);
    always@(*) begin
        if(en) begin
            led1 = sw;
            buzz_out = sw & buzz;
            led2 = buzz;
            end
        else begin
            led1 =0;
            led2 = 0;
            buzz_out = 0;
            end
        end
endmodule
