`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/13 15:36:20
// Design Name: 
// Module Name: counter60
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


module counter60(
    input clk,
    input rst,
    input [1:0]set_en,
    input [7:0]set_val,
    output cout,
    output [7:0] dout
    );
    reg[7:0]dout;
    reg cout;
    always@(posedge clk or posedge rst or posedge set_en)
    begin
        if(rst)
            dout<=0;
        else if(set_en)
            if(set_en[0]) 
                dout[3:0] <= set_val[3:0];
            else if(set_en[1])
                dout[7:4] <= set_val[7:4];
        else if(dout[3:0]>=9)
        begin
            dout[3:0]=0;
            if(dout[7:4]>=5)
            begin
                dout[7:4]=0;
                cout<=1'b1;
            end
            else
                dout[7:4]=dout[7:4]+1;
        end
        else
        begin
            dout[3:0]=dout[3:0]+1;
            cout<=0;
        end
    end
endmodule
