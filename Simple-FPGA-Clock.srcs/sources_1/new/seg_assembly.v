`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/14 22:51:08
// Design Name: Moe
// Module Name: seg_assembly
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//         杈撳叆8涓?4bit瀛?(8 * 0~F)
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Finished without dot and "锛?" control.
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//七位数码管的驱动文件
//需要2000Hz的时钟才能正常显示
module seg_assembly(
    input [7:0] en_in,
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [3:0] e,
    input [3:0] f,
    input [3:0] g,
    input [3:0] h,
    input rst,
    input clk,
    output wire [7:0] seg_out,//娈典俊鍙凤紝鍖呮嫭灏忔暟鐐?
    output wire [7:0] seg_an//绠￠?夋嫨浣胯兘淇″彿
    );
    wire m_clk;
    wire [7:0] en;
    assign seg_an = ~en;
    wire [7:0] a1;
    wire [7:0] b1;
    wire [7:0] c1;
    wire [7:0] d1;
    wire [7:0] e1;
    wire [7:0] f1;
    wire [7:0] g1;
    wire [7:0] h1;
    clock_2000Hz c2000(clk,rst,m_clk);
    light_7seg l1(a,a1);
    light_7seg l2(b,b1);
    light_7seg l3(c,c1);//--
    light_7seg l4(d,d1);
    light_7seg l5(e,e1);
    light_7seg l6(f,f1);//--
    light_7seg l7(g,g1);
    light_7seg l8(h,h1);
    seg_scanner sc(en_in,a1,b1,c1,d1,e1,f1,g1,h1,rst,m_clk,seg_out,en);
endmodule
