`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/16 16:08:38
// Design Name: 
// Module Name: counter10
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


module counter10_async(
    input clk,
    input rst,
    input set_en,
    input [3:0]set_val,
    output reg cout,
    output reg [3:0] dout
    );

    always@(posedge clk or posedge rst or posedge set_en)
    begin
        if(rst) begin
            dout<=0;
            cout<=0;
            end
        else if(set_en) begin
            dout <= set_val;
        end
        else if(dout==9)begin
            cout <=1'b1;
            dout <=0;
            end
        else begin
           dout <= dout+1;
           cout <= 0;
        end
    end
endmodule

module counter10_sync(
    input clk,
    input rst,
    input set_en,
    input [3:0]set_val,
    output reg cout,
    output reg [3:0] dout
    );

    always@(posedge clk or posedge set_en)
    begin
        if(rst) begin
            dout<=0;
            cout<=0;
            end
        else if(set_en) begin
            dout <= set_val;
        end
        else if(dout==9)begin
            cout <=1'b1;
            dout <=0;
            end
        else begin
           dout <= dout+1;
           cout <= 0;
        end
    end
endmodule
