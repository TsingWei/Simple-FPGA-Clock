`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/19 11:58:57
// Design Name: 
// Module Name: new_counter_setter
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



//����λѡ�����λ��,��λ���뵥4λBCD,���˫4λBCD
//clkΪԭʼʱ��(���Ƶʱ��5Khz)
// set_bit == 1 --> ���õ�λ
// set_bit == 0 --> ���ø�λ
module new_counter_setter(
input clk_high,
input set_en_in,
input set_bit,
input [5:0] cur_val,
input [3:0]set_val_in,
output set_en_out,
output reg [5:0]set_val_out
);
    assign set_en_out = set_en_in;
    parameter cout = 24;
    wire[3:0] m_bin;
    //wire[7:0] m_cur;
    wire[3:0] m_l;
    wire[3:0] m_r;
    //reg [5:0] m_set_val;
    decimal_decoder filter(set_val_in,m_bin);//���˵�����9��(��ʵûɶ��)
    decimal_encoder encoder(cur_val,{m_l,m_r});
    //new_counter #(cout) u_m(clk_in, rst, set_en, set_val, clk_out, cnt);
    always@(posedge clk_high)begin
        //{m_l,m_r} = m_cur;
        if(set_en_in )begin
            //set_en_out <= 1;
            if(set_bit) 
                if(m_l *10 + m_bin < cout)set_val_out <= m_l *10 + m_bin;
                else set_val_out = cur_val;
            else  
                if( m_bin *10 + m_r<cout)set_val_out <= m_bin *10 + m_r;
                else set_val_out <= cur_val;
            
        end
        else set_val_out <= cur_val;
        end
        
//    always@(posedge set_en_in)begin
//        if(m_l*10+m_r<cout)begin//�жϼ��������ֵ�Ƿ�С�ڽ�λ��
//            set_val_out <= m_set_val;
//        end
//        else set_val_out <= cur_val;    
//    end

endmodule