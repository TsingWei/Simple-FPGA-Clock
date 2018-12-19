`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 12:00:11
// Design Name: 
// Module Name: new_setter_sim
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


module new_setter_sim();

reg clk_raw,rst,set_en_in,set_bit;
reg [5:0] cur_val;
reg [3:0]set_val_in;
wire set_en_out; 
wire [5:0]set_val_out;
new_counter_setter u(clk_raw,rst,set_en_in,set_bit,cur_val,set_val_in,set_en_out,set_val_out);
    always #5 clk_raw = ~clk_raw;
initial begin
        clk_raw = 0;
        set_en_in = 0;
        rst = 0;
        set_bit =0;
        cur_val = 6'd13;
        set_val_in = 3'd2;
        #2;
        #5 rst = 1;
        #5 set_en_in = 1;
        #5 set_en_in = 0;
        #20;
        #5 set_bit = 1;
        #5 set_en_in = 1;
        #10 set_en_in = 0;
        #20;
end
endmodule

