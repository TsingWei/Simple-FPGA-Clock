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

 input clk,
 input rst,
input [7:0] in_sec,
input [7:0] in_min,
input [7:0] in_hour,//ring round
output [4:0] round,
output  buzz_out
    );
    reg buzz_en;
    wire [5:0] sec;
    wire [5:0] min;
    wire [5:0] hour;
    assign sec = in_sec[7:4]*10 +in_sec[3:0];
    assign min = in_min[7:4]*10 +in_min[3:0];
    assign hour = in_hour[7:4]*10 +in_hour[3:0]; 
    
    assign round = hour[4:0];
    count_buzz cb(round,buzz_en,rst,clk,buzz_out);

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
