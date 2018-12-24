`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 08:37:18
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb(

    );
    reg [5:0]bin_in;
    wire [7:0]dec_out;
    decimal_encoder u(bin_in,dec_out);
    initial begin
        bin_in=0;
        repeat(100)
           #5 bin_in = bin_in +1;
    end
endmodule
