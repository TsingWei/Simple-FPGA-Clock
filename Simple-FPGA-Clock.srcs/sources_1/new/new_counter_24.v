`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 08:47:40
// Design Name: 
// Module Name: new_counter_24
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

//异步复位,异步置位的6位(0~63)计数器,参数指定进位数(默认为24)
module new_counter(
input clk_in,
input rst,
input set_en,
input [5:0]set_val,
output reg clk_out,
output reg [5:0] cnt
    );
    parameter cout = 24;
   
    always@(posedge clk_in or posedge rst or posedge set_en) begin
        if(rst) begin
            cnt <= 5'd0;
            clk_out <= 0;
        end
        else if(set_en) begin
            cnt <= set_val;
        end
        else if(cnt >= cout-1) begin
            cnt<= 5'd0;
            clk_out <= 1;
        end
        else begin
            cnt <= cnt+1;
            clk_out <= 0;
            end
    end
endmodule









module decoder_sim();
reg [3:0]bin_in;
wire [3:0]dec_out;
decimal_decoder filter(bin_in,dec_out);
initial begin
    bin_in = 0;
    repeat(50) #5 bin_in = bin_in+1;
end
endmodule

module new_counter_sim(
    );
    reg clk_in;
    reg rst;
    reg set_en;
    reg [5:0]set_val;
    wire clk_out;
    wire [5:0]cnt;
    wire [7:0]dec_out;
    new_counter #(60) u(clk_in,rst,set_en,set_val,clk_out,cnt);
    decimal_encoder u2(cnt,dec_out);
    always #5 clk_in = ~clk_in;
    initial begin
        clk_in = 0;
        set_en = 0;
        rst = 0;
        set_val = 6'd37;
        #7 rst = 1;
        #5 rst = 0;
        #23 set_en = 1;
        #5 set_en = 0;  
    end
endmodule