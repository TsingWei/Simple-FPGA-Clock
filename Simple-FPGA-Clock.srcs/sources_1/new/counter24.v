`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/15 01:20:46
// Design Name: 
// Module Name: counter24
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


module counter24(
    input clk,
    input rst,
    output cout,
    output [7:0] dout
    );
    reg[7:0]dout;
    reg cout;
    always@(posedge clk or negedge rst)
    begin
        if(~rst) begin
            dout<=0;
            cout<=0;
            end
        else if(dout==23)begin
            cout <=1'b1;
            dout <=0;
            end
        else begin
           dout <= dout+1;
           cout <= 0;
        end
    end
endmodule
