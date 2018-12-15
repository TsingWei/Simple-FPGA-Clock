// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Dec 15 14:34:48 2018
// Host        : Dell-tsing running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/46162/Desktop/Simple-FPGA-Clock/Simple-FPGA-Clock/Simple-FPGA-Clock.sim/sim_1/impl/func/xsim/seg_assembly_tb_func_impl.v
// Design      : seg_assembly
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "93ca2781" *) 
(* NotValidForBitStream *)
module seg_assembly
   (a,
    b,
    c,
    d,
    e,
    f,
    g,
    h,
    rst,
    clk,
    seg_out,
    seg_an);
  input [3:0]a;
  input [3:0]b;
  input [3:0]c;
  input [3:0]d;
  input [3:0]e;
  input [3:0]f;
  input [3:0]g;
  input [3:0]h;
  input rst;
  input clk;
  output [7:0]seg_out;
  output [7:0]seg_an;

  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire [3:0]c;
  wire [3:0]c_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]d;
  wire [3:0]d_IBUF;
  wire [3:0]e;
  wire [3:0]e_IBUF;
  wire [3:0]f;
  wire [3:0]f_IBUF;
  wire [3:0]g;
  wire [3:0]g_IBUF;
  wire [3:0]h;
  wire [3:0]h_IBUF;
  wire rst;
  wire rst_IBUF;
  wire [7:0]seg_an;
  wire [7:0]seg_an_OBUF;
  wire [7:0]seg_out;
  wire [7:0]seg_out_OBUF;

  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \c_IBUF[0]_inst 
       (.I(c[0]),
        .O(c_IBUF[0]));
  IBUF \c_IBUF[1]_inst 
       (.I(c[1]),
        .O(c_IBUF[1]));
  IBUF \c_IBUF[2]_inst 
       (.I(c[2]),
        .O(c_IBUF[2]));
  IBUF \c_IBUF[3]_inst 
       (.I(c[3]),
        .O(c_IBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \d_IBUF[0]_inst 
       (.I(d[0]),
        .O(d_IBUF[0]));
  IBUF \d_IBUF[1]_inst 
       (.I(d[1]),
        .O(d_IBUF[1]));
  IBUF \d_IBUF[2]_inst 
       (.I(d[2]),
        .O(d_IBUF[2]));
  IBUF \d_IBUF[3]_inst 
       (.I(d[3]),
        .O(d_IBUF[3]));
  IBUF \e_IBUF[0]_inst 
       (.I(e[0]),
        .O(e_IBUF[0]));
  IBUF \e_IBUF[1]_inst 
       (.I(e[1]),
        .O(e_IBUF[1]));
  IBUF \e_IBUF[2]_inst 
       (.I(e[2]),
        .O(e_IBUF[2]));
  IBUF \e_IBUF[3]_inst 
       (.I(e[3]),
        .O(e_IBUF[3]));
  IBUF \f_IBUF[0]_inst 
       (.I(f[0]),
        .O(f_IBUF[0]));
  IBUF \f_IBUF[1]_inst 
       (.I(f[1]),
        .O(f_IBUF[1]));
  IBUF \f_IBUF[2]_inst 
       (.I(f[2]),
        .O(f_IBUF[2]));
  IBUF \f_IBUF[3]_inst 
       (.I(f[3]),
        .O(f_IBUF[3]));
  IBUF \g_IBUF[0]_inst 
       (.I(g[0]),
        .O(g_IBUF[0]));
  IBUF \g_IBUF[1]_inst 
       (.I(g[1]),
        .O(g_IBUF[1]));
  IBUF \g_IBUF[2]_inst 
       (.I(g[2]),
        .O(g_IBUF[2]));
  IBUF \g_IBUF[3]_inst 
       (.I(g[3]),
        .O(g_IBUF[3]));
  IBUF \h_IBUF[0]_inst 
       (.I(h[0]),
        .O(h_IBUF[0]));
  IBUF \h_IBUF[1]_inst 
       (.I(h[1]),
        .O(h_IBUF[1]));
  IBUF \h_IBUF[2]_inst 
       (.I(h[2]),
        .O(h_IBUF[2]));
  IBUF \h_IBUF[3]_inst 
       (.I(h[3]),
        .O(h_IBUF[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  seg_scanner sc
       (.CLK(clk_IBUF_BUFG),
        .Q(seg_out_OBUF),
        .a_IBUF(a_IBUF),
        .b_IBUF(b_IBUF),
        .c_IBUF(c_IBUF),
        .d_IBUF(d_IBUF),
        .e_IBUF(e_IBUF),
        .f_IBUF(f_IBUF),
        .g_IBUF(g_IBUF),
        .h_IBUF(h_IBUF),
        .rst_IBUF(rst_IBUF),
        .\seg_an[7] (seg_an_OBUF));
  OBUF \seg_an_OBUF[0]_inst 
       (.I(seg_an_OBUF[0]),
        .O(seg_an[0]));
  OBUF \seg_an_OBUF[1]_inst 
       (.I(seg_an_OBUF[1]),
        .O(seg_an[1]));
  OBUF \seg_an_OBUF[2]_inst 
       (.I(seg_an_OBUF[2]),
        .O(seg_an[2]));
  OBUF \seg_an_OBUF[3]_inst 
       (.I(seg_an_OBUF[3]),
        .O(seg_an[3]));
  OBUF \seg_an_OBUF[4]_inst 
       (.I(seg_an_OBUF[4]),
        .O(seg_an[4]));
  OBUF \seg_an_OBUF[5]_inst 
       (.I(seg_an_OBUF[5]),
        .O(seg_an[5]));
  OBUF \seg_an_OBUF[6]_inst 
       (.I(seg_an_OBUF[6]),
        .O(seg_an[6]));
  OBUF \seg_an_OBUF[7]_inst 
       (.I(seg_an_OBUF[7]),
        .O(seg_an[7]));
  OBUF \seg_out_OBUF[0]_inst 
       (.I(seg_out_OBUF[0]),
        .O(seg_out[0]));
  OBUF \seg_out_OBUF[1]_inst 
       (.I(seg_out_OBUF[1]),
        .O(seg_out[1]));
  OBUF \seg_out_OBUF[2]_inst 
       (.I(seg_out_OBUF[2]),
        .O(seg_out[2]));
  OBUF \seg_out_OBUF[3]_inst 
       (.I(seg_out_OBUF[3]),
        .O(seg_out[3]));
  OBUF \seg_out_OBUF[4]_inst 
       (.I(seg_out_OBUF[4]),
        .O(seg_out[4]));
  OBUF \seg_out_OBUF[5]_inst 
       (.I(seg_out_OBUF[5]),
        .O(seg_out[5]));
  OBUF \seg_out_OBUF[6]_inst 
       (.I(seg_out_OBUF[6]),
        .O(seg_out[6]));
  OBUF \seg_out_OBUF[7]_inst 
       (.I(seg_out_OBUF[7]),
        .O(seg_out[7]));
endmodule

module seg_scanner
   (Q,
    \seg_an[7] ,
    rst_IBUF,
    CLK,
    a_IBUF,
    b_IBUF,
    c_IBUF,
    d_IBUF,
    e_IBUF,
    f_IBUF,
    g_IBUF,
    h_IBUF);
  output [7:0]Q;
  output [7:0]\seg_an[7] ;
  input rst_IBUF;
  input CLK;
  input [3:0]a_IBUF;
  input [3:0]b_IBUF;
  input [3:0]c_IBUF;
  input [3:0]d_IBUF;
  input [3:0]e_IBUF;
  input [3:0]f_IBUF;
  input [3:0]g_IBUF;
  input [3:0]h_IBUF;

  wire CLK;
  wire [7:0]Q;
  wire [3:0]a_IBUF;
  wire [3:0]b_IBUF;
  wire [3:0]c_IBUF;
  wire [3:0]d_IBUF;
  wire [3:0]e_IBUF;
  wire \en[0]_i_1_n_0 ;
  wire \en[1]_i_1_n_0 ;
  wire \en[2]_i_1_n_0 ;
  wire \en[3]_i_1_n_0 ;
  wire \en[4]_i_1_n_0 ;
  wire \en[5]_i_1_n_0 ;
  wire \en[6]_i_1_n_0 ;
  wire \en[7]_i_1_n_0 ;
  wire [3:0]f_IBUF;
  wire [3:0]g_IBUF;
  wire [3:0]h_IBUF;
  wire [6:0]\l1/seg_out__32 ;
  wire [6:0]\l2/seg_out__32 ;
  wire [6:0]\l3/seg_out__32 ;
  wire [6:0]\l4/seg_out__32 ;
  wire [6:0]\l5/seg_out__32 ;
  wire [6:0]\l6/seg_out__32 ;
  wire [6:0]\l7/seg_out__32 ;
  wire [6:0]\l8/seg_out__32 ;
  wire \out[0]_i_1_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire \out_reg[0]_i_2_n_0 ;
  wire \out_reg[0]_i_3_n_0 ;
  wire \out_reg[0]_i_4_n_0 ;
  wire \out_reg[0]_i_5_n_0 ;
  wire \out_reg[1]_i_2_n_0 ;
  wire \out_reg[1]_i_3_n_0 ;
  wire \out_reg[1]_i_4_n_0 ;
  wire \out_reg[1]_i_5_n_0 ;
  wire \out_reg[2]_i_2_n_0 ;
  wire \out_reg[2]_i_3_n_0 ;
  wire \out_reg[2]_i_4_n_0 ;
  wire \out_reg[2]_i_5_n_0 ;
  wire \out_reg[3]_i_2_n_0 ;
  wire \out_reg[3]_i_3_n_0 ;
  wire \out_reg[3]_i_4_n_0 ;
  wire \out_reg[3]_i_5_n_0 ;
  wire \out_reg[4]_i_2_n_0 ;
  wire \out_reg[4]_i_3_n_0 ;
  wire \out_reg[4]_i_4_n_0 ;
  wire \out_reg[4]_i_5_n_0 ;
  wire \out_reg[5]_i_2_n_0 ;
  wire \out_reg[5]_i_3_n_0 ;
  wire \out_reg[5]_i_4_n_0 ;
  wire \out_reg[5]_i_5_n_0 ;
  wire \out_reg[6]_i_2_n_0 ;
  wire \out_reg[6]_i_3_n_0 ;
  wire \out_reg[6]_i_4_n_0 ;
  wire \out_reg[6]_i_5_n_0 ;
  wire rst_IBUF;
  wire [3:0]scan_cnt;
  wire \scan_cnt[0]_i_1_n_0 ;
  wire \scan_cnt[1]_i_1_n_0 ;
  wire \scan_cnt[2]_i_1_n_0 ;
  wire \scan_cnt[3]_i_1_n_0 ;
  wire \scan_cnt[3]_i_2_n_0 ;
  wire [7:0]\seg_an[7] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \en[0]_i_1 
       (.I0(scan_cnt[2]),
        .I1(scan_cnt[0]),
        .I2(scan_cnt[1]),
        .O(\en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \en[1]_i_1 
       (.I0(scan_cnt[0]),
        .I1(scan_cnt[2]),
        .I2(scan_cnt[1]),
        .O(\en[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \en[2]_i_1 
       (.I0(scan_cnt[1]),
        .I1(scan_cnt[2]),
        .I2(scan_cnt[0]),
        .O(\en[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \en[3]_i_1 
       (.I0(scan_cnt[2]),
        .I1(scan_cnt[0]),
        .I2(scan_cnt[1]),
        .O(\en[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \en[4]_i_1 
       (.I0(scan_cnt[2]),
        .I1(scan_cnt[0]),
        .I2(scan_cnt[1]),
        .O(\en[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \en[5]_i_1 
       (.I0(scan_cnt[0]),
        .I1(scan_cnt[2]),
        .I2(scan_cnt[1]),
        .O(\en[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \en[6]_i_1 
       (.I0(scan_cnt[0]),
        .I1(scan_cnt[2]),
        .I2(scan_cnt[1]),
        .O(\en[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \en[7]_i_1 
       (.I0(scan_cnt[1]),
        .I1(scan_cnt[0]),
        .I2(scan_cnt[2]),
        .O(\en[7]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[0] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[0]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [0]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[1] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[1]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [1]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[2] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[2]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [2]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[3] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[3]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [3]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[4] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[4]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[5] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[5]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [5]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[6] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[6]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [6]));
  FDPE #(
    .INIT(1'b1)) 
    \en_reg[7] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\en[7]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(\seg_an[7] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[0]_i_1 
       (.I0(\out_reg[0]_i_2_n_0 ),
        .I1(\out_reg[0]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[0]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[0]_i_5_n_0 ),
        .O(\out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[2]),
        .I2(c_IBUF[0]),
        .I3(c_IBUF[1]),
        .O(\l3/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[2]),
        .I2(d_IBUF[0]),
        .I3(d_IBUF[1]),
        .O(\l4/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[0]),
        .I3(a_IBUF[1]),
        .O(\l1/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(\l2/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[2]),
        .I2(g_IBUF[0]),
        .I3(g_IBUF[1]),
        .O(\l7/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[2]),
        .I2(h_IBUF[0]),
        .I3(h_IBUF[1]),
        .O(\l8/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[2]),
        .I2(e_IBUF[0]),
        .I3(e_IBUF[1]),
        .O(\l5/seg_out__32 [0]));
  LUT4 #(
    .INIT(16'h2094)) 
    \out[0]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[1]),
        .O(\l6/seg_out__32 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[1]_i_1 
       (.I0(\out_reg[1]_i_2_n_0 ),
        .I1(\out_reg[1]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[1]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[1]_i_5_n_0 ),
        .O(\out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[2]),
        .I2(c_IBUF[1]),
        .I3(c_IBUF[0]),
        .O(\l3/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[2]),
        .I2(d_IBUF[1]),
        .I3(d_IBUF[0]),
        .O(\l4/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[1]),
        .I3(a_IBUF[0]),
        .O(\l1/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[0]),
        .O(\l2/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[2]),
        .I2(g_IBUF[1]),
        .I3(g_IBUF[0]),
        .O(\l7/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[2]),
        .I2(h_IBUF[1]),
        .I3(h_IBUF[0]),
        .O(\l8/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[2]),
        .I2(e_IBUF[1]),
        .I3(e_IBUF[0]),
        .O(\l5/seg_out__32 [1]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \out[1]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[0]),
        .O(\l6/seg_out__32 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[2]_i_1 
       (.I0(\out_reg[2]_i_2_n_0 ),
        .I1(\out_reg[2]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[2]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[2]_i_5_n_0 ),
        .O(\out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[0]),
        .I2(c_IBUF[1]),
        .I3(c_IBUF[2]),
        .O(\l3/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[0]),
        .I2(d_IBUF[1]),
        .I3(d_IBUF[2]),
        .O(\l4/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[0]),
        .I2(a_IBUF[1]),
        .I3(a_IBUF[2]),
        .O(\l1/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(\l2/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[0]),
        .I2(g_IBUF[1]),
        .I3(g_IBUF[2]),
        .O(\l7/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[0]),
        .I2(h_IBUF[1]),
        .I3(h_IBUF[2]),
        .O(\l8/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[0]),
        .I2(e_IBUF[1]),
        .I3(e_IBUF[2]),
        .O(\l5/seg_out__32 [2]));
  LUT4 #(
    .INIT(16'hA210)) 
    \out[2]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[0]),
        .I2(f_IBUF[1]),
        .I3(f_IBUF[2]),
        .O(\l6/seg_out__32 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[3]_i_1 
       (.I0(\out_reg[3]_i_2_n_0 ),
        .I1(\out_reg[3]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[3]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[3]_i_5_n_0 ),
        .O(\out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[2]),
        .I2(c_IBUF[0]),
        .I3(c_IBUF[1]),
        .O(\l3/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[2]),
        .I2(d_IBUF[0]),
        .I3(d_IBUF[1]),
        .O(\l4/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[0]),
        .I3(a_IBUF[1]),
        .O(\l1/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(\l2/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[2]),
        .I2(g_IBUF[0]),
        .I3(g_IBUF[1]),
        .O(\l7/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[2]),
        .I2(h_IBUF[0]),
        .I3(h_IBUF[1]),
        .O(\l8/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[2]),
        .I2(e_IBUF[0]),
        .I3(e_IBUF[1]),
        .O(\l5/seg_out__32 [3]));
  LUT4 #(
    .INIT(16'hC214)) 
    \out[3]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[1]),
        .O(\l6/seg_out__32 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[4]_i_1 
       (.I0(\out_reg[4]_i_2_n_0 ),
        .I1(\out_reg[4]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[4]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[4]_i_5_n_0 ),
        .O(\out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[1]),
        .I2(c_IBUF[2]),
        .I3(c_IBUF[0]),
        .O(\l3/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[1]),
        .I2(d_IBUF[2]),
        .I3(d_IBUF[0]),
        .O(\l4/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[2]),
        .I3(a_IBUF[0]),
        .O(\l1/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[0]),
        .O(\l2/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[1]),
        .I2(g_IBUF[2]),
        .I3(g_IBUF[0]),
        .O(\l7/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[1]),
        .I2(h_IBUF[2]),
        .I3(h_IBUF[0]),
        .O(\l8/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[1]),
        .I2(e_IBUF[2]),
        .I3(e_IBUF[0]),
        .O(\l5/seg_out__32 [4]));
  LUT4 #(
    .INIT(16'h5710)) 
    \out[4]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[1]),
        .I2(f_IBUF[2]),
        .I3(f_IBUF[0]),
        .O(\l6/seg_out__32 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[5]_i_1 
       (.I0(\out_reg[5]_i_2_n_0 ),
        .I1(\out_reg[5]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[5]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[5]_i_5_n_0 ),
        .O(\out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[2]),
        .I2(c_IBUF[0]),
        .I3(c_IBUF[1]),
        .O(\l3/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[2]),
        .I2(d_IBUF[0]),
        .I3(d_IBUF[1]),
        .O(\l4/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[0]),
        .I3(a_IBUF[1]),
        .O(\l1/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(\l2/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[2]),
        .I2(g_IBUF[0]),
        .I3(g_IBUF[1]),
        .O(\l7/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[2]),
        .I2(h_IBUF[0]),
        .I3(h_IBUF[1]),
        .O(\l8/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[2]),
        .I2(e_IBUF[0]),
        .I3(e_IBUF[1]),
        .O(\l5/seg_out__32 [5]));
  LUT4 #(
    .INIT(16'h5190)) 
    \out[5]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[2]),
        .I2(f_IBUF[0]),
        .I3(f_IBUF[1]),
        .O(\l6/seg_out__32 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[6]_i_1 
       (.I0(\out_reg[6]_i_2_n_0 ),
        .I1(\out_reg[6]_i_3_n_0 ),
        .I2(scan_cnt[2]),
        .I3(\out_reg[6]_i_4_n_0 ),
        .I4(scan_cnt[1]),
        .I5(\out_reg[6]_i_5_n_0 ),
        .O(\out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_10 
       (.I0(c_IBUF[3]),
        .I1(c_IBUF[0]),
        .I2(c_IBUF[2]),
        .I3(c_IBUF[1]),
        .O(\l3/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_11 
       (.I0(d_IBUF[3]),
        .I1(d_IBUF[0]),
        .I2(d_IBUF[2]),
        .I3(d_IBUF[1]),
        .O(\l4/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_12 
       (.I0(a_IBUF[3]),
        .I1(a_IBUF[0]),
        .I2(a_IBUF[2]),
        .I3(a_IBUF[1]),
        .O(\l1/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_13 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[1]),
        .O(\l2/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_6 
       (.I0(g_IBUF[3]),
        .I1(g_IBUF[0]),
        .I2(g_IBUF[2]),
        .I3(g_IBUF[1]),
        .O(\l7/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_7 
       (.I0(h_IBUF[3]),
        .I1(h_IBUF[0]),
        .I2(h_IBUF[2]),
        .I3(h_IBUF[1]),
        .O(\l8/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_8 
       (.I0(e_IBUF[3]),
        .I1(e_IBUF[0]),
        .I2(e_IBUF[2]),
        .I3(e_IBUF[1]),
        .O(\l5/seg_out__32 [6]));
  LUT4 #(
    .INIT(16'h4025)) 
    \out[6]_i_9 
       (.I0(f_IBUF[3]),
        .I1(f_IBUF[0]),
        .I2(f_IBUF[2]),
        .I3(f_IBUF[1]),
        .O(\l6/seg_out__32 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_i_1 
       (.I0(scan_cnt[3]),
        .O(\out[7]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[0]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[0]));
  MUXF7 \out_reg[0]_i_2 
       (.I0(\l7/seg_out__32 [0]),
        .I1(\l8/seg_out__32 [0]),
        .O(\out_reg[0]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[0]_i_3 
       (.I0(\l5/seg_out__32 [0]),
        .I1(\l6/seg_out__32 [0]),
        .O(\out_reg[0]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[0]_i_4 
       (.I0(\l3/seg_out__32 [0]),
        .I1(\l4/seg_out__32 [0]),
        .O(\out_reg[0]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[0]_i_5 
       (.I0(\l1/seg_out__32 [0]),
        .I1(\l2/seg_out__32 [0]),
        .O(\out_reg[0]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[1]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[1]));
  MUXF7 \out_reg[1]_i_2 
       (.I0(\l7/seg_out__32 [1]),
        .I1(\l8/seg_out__32 [1]),
        .O(\out_reg[1]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[1]_i_3 
       (.I0(\l5/seg_out__32 [1]),
        .I1(\l6/seg_out__32 [1]),
        .O(\out_reg[1]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[1]_i_4 
       (.I0(\l3/seg_out__32 [1]),
        .I1(\l4/seg_out__32 [1]),
        .O(\out_reg[1]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[1]_i_5 
       (.I0(\l1/seg_out__32 [1]),
        .I1(\l2/seg_out__32 [1]),
        .O(\out_reg[1]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[2]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[2]));
  MUXF7 \out_reg[2]_i_2 
       (.I0(\l7/seg_out__32 [2]),
        .I1(\l8/seg_out__32 [2]),
        .O(\out_reg[2]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[2]_i_3 
       (.I0(\l5/seg_out__32 [2]),
        .I1(\l6/seg_out__32 [2]),
        .O(\out_reg[2]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[2]_i_4 
       (.I0(\l3/seg_out__32 [2]),
        .I1(\l4/seg_out__32 [2]),
        .O(\out_reg[2]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[2]_i_5 
       (.I0(\l1/seg_out__32 [2]),
        .I1(\l2/seg_out__32 [2]),
        .O(\out_reg[2]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[3]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[3]));
  MUXF7 \out_reg[3]_i_2 
       (.I0(\l7/seg_out__32 [3]),
        .I1(\l8/seg_out__32 [3]),
        .O(\out_reg[3]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[3]_i_3 
       (.I0(\l5/seg_out__32 [3]),
        .I1(\l6/seg_out__32 [3]),
        .O(\out_reg[3]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[3]_i_4 
       (.I0(\l3/seg_out__32 [3]),
        .I1(\l4/seg_out__32 [3]),
        .O(\out_reg[3]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[3]_i_5 
       (.I0(\l1/seg_out__32 [3]),
        .I1(\l2/seg_out__32 [3]),
        .O(\out_reg[3]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[4]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[4]));
  MUXF7 \out_reg[4]_i_2 
       (.I0(\l7/seg_out__32 [4]),
        .I1(\l8/seg_out__32 [4]),
        .O(\out_reg[4]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[4]_i_3 
       (.I0(\l5/seg_out__32 [4]),
        .I1(\l6/seg_out__32 [4]),
        .O(\out_reg[4]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[4]_i_4 
       (.I0(\l3/seg_out__32 [4]),
        .I1(\l4/seg_out__32 [4]),
        .O(\out_reg[4]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[4]_i_5 
       (.I0(\l1/seg_out__32 [4]),
        .I1(\l2/seg_out__32 [4]),
        .O(\out_reg[4]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[5]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[5]));
  MUXF7 \out_reg[5]_i_2 
       (.I0(\l7/seg_out__32 [5]),
        .I1(\l8/seg_out__32 [5]),
        .O(\out_reg[5]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[5]_i_3 
       (.I0(\l5/seg_out__32 [5]),
        .I1(\l6/seg_out__32 [5]),
        .O(\out_reg[5]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[5]_i_4 
       (.I0(\l3/seg_out__32 [5]),
        .I1(\l4/seg_out__32 [5]),
        .O(\out_reg[5]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[5]_i_5 
       (.I0(\l1/seg_out__32 [5]),
        .I1(\l2/seg_out__32 [5]),
        .O(\out_reg[5]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[6] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(\out[6]_i_1_n_0 ),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[6]));
  MUXF7 \out_reg[6]_i_2 
       (.I0(\l7/seg_out__32 [6]),
        .I1(\l8/seg_out__32 [6]),
        .O(\out_reg[6]_i_2_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[6]_i_3 
       (.I0(\l5/seg_out__32 [6]),
        .I1(\l6/seg_out__32 [6]),
        .O(\out_reg[6]_i_3_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[6]_i_4 
       (.I0(\l3/seg_out__32 [6]),
        .I1(\l4/seg_out__32 [6]),
        .O(\out_reg[6]_i_4_n_0 ),
        .S(scan_cnt[0]));
  MUXF7 \out_reg[6]_i_5 
       (.I0(\l1/seg_out__32 [6]),
        .I1(\l2/seg_out__32 [6]),
        .O(\out_reg[6]_i_5_n_0 ),
        .S(scan_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \out_reg[7] 
       (.C(CLK),
        .CE(\out[7]_i_1_n_0 ),
        .D(1'b0),
        .PRE(\scan_cnt[3]_i_2_n_0 ),
        .Q(Q[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \scan_cnt[0]_i_1 
       (.I0(scan_cnt[0]),
        .O(\scan_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scan_cnt[1]_i_1 
       (.I0(scan_cnt[0]),
        .I1(scan_cnt[1]),
        .O(\scan_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \scan_cnt[2]_i_1 
       (.I0(scan_cnt[2]),
        .I1(scan_cnt[0]),
        .I2(scan_cnt[1]),
        .O(\scan_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h70F0)) 
    \scan_cnt[3]_i_1 
       (.I0(scan_cnt[2]),
        .I1(scan_cnt[0]),
        .I2(scan_cnt[3]),
        .I3(scan_cnt[1]),
        .O(\scan_cnt[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \scan_cnt[3]_i_2 
       (.I0(rst_IBUF),
        .O(\scan_cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\scan_cnt[3]_i_2_n_0 ),
        .D(\scan_cnt[0]_i_1_n_0 ),
        .Q(scan_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\scan_cnt[3]_i_2_n_0 ),
        .D(\scan_cnt[1]_i_1_n_0 ),
        .Q(scan_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\scan_cnt[3]_i_2_n_0 ),
        .D(\scan_cnt[2]_i_1_n_0 ),
        .Q(scan_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \scan_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\scan_cnt[3]_i_2_n_0 ),
        .D(\scan_cnt[3]_i_1_n_0 ),
        .Q(scan_cnt[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
