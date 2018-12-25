`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/24 20:37:12
// Design Name: 
// Module Name: ring_module
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


module ring_module(

// output [4:0] round,
// output en_out,

// input clk,
// input rst,
input [7:0] in_sec,
input [7:0] in_min,
input [7:0] in_hour,//ring round
output [4:0] round,
output reg buzz_en
    );

//count_buzz cb(in_hour,en,rst,clk,buzz_out);
always@* begin
    if(in_min == 59 || in_min == 0)
        if(in_sec >= 58||in_sec <= 30)
            buzz_en = 1;
        else
            buzz_en = 0;
    else
        buzz_en = 0;
end
endmodule

module ring_module_tb();


reg [7:0] in_sec;
reg [7:0] in_min;
reg [7:0] in_hour;//ring round
wire [4:0] round;
wire buzz_en;
ring_module rm(in_sec,in_min,in_hour,round,buzz_en);
initial begin 
in_sec = 57;
in_min = 59;
in_hour = 11;
#10 in_sec = in_sec + 1; 
#10 in_sec = in_sec + 1; 
#10 in_min = 0;in_sec = 0;
repeat (100)
#10 in_sec = in_sec + 1; 

end
endmodule
