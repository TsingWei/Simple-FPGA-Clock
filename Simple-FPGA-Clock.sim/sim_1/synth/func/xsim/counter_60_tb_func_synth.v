// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Dec 18 00:09:31 2018
// Host        : Dell-tsing running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/46162/Desktop/Simple-FPGA-Clock/Simple-FPGA-Clock/Simple-FPGA-Clock.sim/sim_1/synth/func/xsim/counter_60_tb_func_synth.v
// Design      : buzzer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module buzzer
   (en,
    rst,
    clk,
    buzz_out);
  input en;
  input rst;
  input clk;
  output buzz_out;

  wire buzz;
  wire buzz_out;
  wire buzz_out_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire en;
  wire en_IBUF;
  wire p_0_in;
  wire rst;
  wire rst_IBUF;

  OBUF buzz_out_OBUF_inst
       (.I(buzz_out_OBUF),
        .O(buzz_out));
  clock_500Hz c500
       (.CLK(clk_IBUF_BUFG),
        .SR(p_0_in),
        .cout(buzz));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF en_IBUF_inst
       (.I(en),
        .O(en_IBUF));
  half_sec_timer ht
       (.CLK(clk_IBUF_BUFG),
        .SR(p_0_in),
        .buzz_out_OBUF(buzz_out_OBUF),
        .cout(buzz),
        .en_IBUF(en_IBUF),
        .rst_IBUF(rst_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module clock_500Hz
   (cout,
    SR,
    CLK);
  output cout;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire [26:0]cnt;
  wire \cnt[26]_i_10_n_0 ;
  wire \cnt[26]_i_3_n_0 ;
  wire \cnt[26]_i_4_n_0 ;
  wire \cnt[26]_i_5_n_0 ;
  wire \cnt[26]_i_7_n_0 ;
  wire \cnt[26]_i_8_n_0 ;
  wire \cnt[26]_i_9_n_0 ;
  wire [26:0]cnt_1;
  wire \cnt_reg[12]_i_2_n_0 ;
  wire \cnt_reg[12]_i_2_n_1 ;
  wire \cnt_reg[12]_i_2_n_2 ;
  wire \cnt_reg[12]_i_2_n_3 ;
  wire \cnt_reg[16]_i_2_n_0 ;
  wire \cnt_reg[16]_i_2_n_1 ;
  wire \cnt_reg[16]_i_2_n_2 ;
  wire \cnt_reg[16]_i_2_n_3 ;
  wire \cnt_reg[20]_i_2_n_0 ;
  wire \cnt_reg[20]_i_2_n_1 ;
  wire \cnt_reg[20]_i_2_n_2 ;
  wire \cnt_reg[20]_i_2_n_3 ;
  wire \cnt_reg[24]_i_2_n_0 ;
  wire \cnt_reg[24]_i_2_n_1 ;
  wire \cnt_reg[24]_i_2_n_2 ;
  wire \cnt_reg[24]_i_2_n_3 ;
  wire \cnt_reg[26]_i_6_n_3 ;
  wire \cnt_reg[4]_i_2_n_0 ;
  wire \cnt_reg[4]_i_2_n_1 ;
  wire \cnt_reg[4]_i_2_n_2 ;
  wire \cnt_reg[4]_i_2_n_3 ;
  wire \cnt_reg[8]_i_2_n_0 ;
  wire \cnt_reg[8]_i_2_n_1 ;
  wire \cnt_reg[8]_i_2_n_2 ;
  wire \cnt_reg[8]_i_2_n_3 ;
  wire cout;
  wire cout_0;
  wire [26:1]data0;
  wire [3:1]\NLW_cnt_reg[26]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[26]_i_6_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[10]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[10]),
        .O(cnt_1[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[11]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[11]),
        .O(cnt_1[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[12]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[12]),
        .O(cnt_1[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[13]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[13]),
        .O(cnt_1[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[14]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[14]),
        .O(cnt_1[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[15]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[15]),
        .O(cnt_1[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[16]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[16]),
        .O(cnt_1[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[17]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[17]),
        .O(cnt_1[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[18]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[18]),
        .O(cnt_1[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[19]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[19]),
        .O(cnt_1[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[1]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[1]),
        .O(cnt_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[20]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[20]),
        .O(cnt_1[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[21]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[21]),
        .O(cnt_1[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[22]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[22]),
        .O(cnt_1[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[23]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[23]),
        .O(cnt_1[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[24]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[24]),
        .O(cnt_1[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[25]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[25]),
        .O(cnt_1[25]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[26]_i_10 
       (.I0(cnt[18]),
        .I1(cnt[17]),
        .I2(cnt[19]),
        .I3(cnt[20]),
        .O(\cnt[26]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[26]_i_2 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[26]),
        .O(cnt_1[26]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \cnt[26]_i_3 
       (.I0(cnt[26]),
        .I1(cnt[25]),
        .I2(cnt[0]),
        .I3(\cnt[26]_i_7_n_0 ),
        .I4(\cnt[26]_i_8_n_0 ),
        .O(\cnt[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \cnt[26]_i_4 
       (.I0(cnt[7]),
        .I1(cnt[8]),
        .I2(cnt[6]),
        .I3(cnt[5]),
        .I4(\cnt[26]_i_9_n_0 ),
        .O(\cnt[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \cnt[26]_i_5 
       (.I0(cnt[15]),
        .I1(cnt[16]),
        .I2(cnt[13]),
        .I3(cnt[14]),
        .I4(\cnt[26]_i_10_n_0 ),
        .O(\cnt[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[26]_i_7 
       (.I0(cnt[22]),
        .I1(cnt[21]),
        .I2(cnt[24]),
        .I3(cnt[23]),
        .O(\cnt[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[26]_i_8 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[4]),
        .I3(cnt[3]),
        .O(\cnt[26]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt[26]_i_9 
       (.I0(cnt[9]),
        .I1(cnt[10]),
        .I2(cnt[12]),
        .I3(cnt[11]),
        .O(\cnt[26]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[2]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[2]),
        .O(cnt_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[3]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[3]),
        .O(cnt_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[4]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[4]),
        .O(cnt_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[5]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[5]),
        .O(cnt_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[6]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[6]),
        .O(cnt_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[7]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[7]),
        .O(cnt_1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[8]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[8]),
        .O(cnt_1[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[9]_i_1 
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .I3(data0[9]),
        .O(cnt_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[0]),
        .Q(cnt[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[10]),
        .Q(cnt[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[11]),
        .Q(cnt[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[12]),
        .Q(cnt[12]),
        .R(SR));
  CARRY4 \cnt_reg[12]_i_2 
       (.CI(\cnt_reg[8]_i_2_n_0 ),
        .CO({\cnt_reg[12]_i_2_n_0 ,\cnt_reg[12]_i_2_n_1 ,\cnt_reg[12]_i_2_n_2 ,\cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[13]),
        .Q(cnt[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[14]),
        .Q(cnt[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[15]),
        .Q(cnt[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[16]),
        .Q(cnt[16]),
        .R(SR));
  CARRY4 \cnt_reg[16]_i_2 
       (.CI(\cnt_reg[12]_i_2_n_0 ),
        .CO({\cnt_reg[16]_i_2_n_0 ,\cnt_reg[16]_i_2_n_1 ,\cnt_reg[16]_i_2_n_2 ,\cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[17]),
        .Q(cnt[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[18]),
        .Q(cnt[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[19]),
        .Q(cnt[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[1]),
        .Q(cnt[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[20]),
        .Q(cnt[20]),
        .R(SR));
  CARRY4 \cnt_reg[20]_i_2 
       (.CI(\cnt_reg[16]_i_2_n_0 ),
        .CO({\cnt_reg[20]_i_2_n_0 ,\cnt_reg[20]_i_2_n_1 ,\cnt_reg[20]_i_2_n_2 ,\cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[21]),
        .Q(cnt[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[22]),
        .Q(cnt[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[23]),
        .Q(cnt[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[24]),
        .Q(cnt[24]),
        .R(SR));
  CARRY4 \cnt_reg[24]_i_2 
       (.CI(\cnt_reg[20]_i_2_n_0 ),
        .CO({\cnt_reg[24]_i_2_n_0 ,\cnt_reg[24]_i_2_n_1 ,\cnt_reg[24]_i_2_n_2 ,\cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[25]),
        .Q(cnt[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[26]),
        .Q(cnt[26]),
        .R(SR));
  CARRY4 \cnt_reg[26]_i_6 
       (.CI(\cnt_reg[24]_i_2_n_0 ),
        .CO({\NLW_cnt_reg[26]_i_6_CO_UNCONNECTED [3:1],\cnt_reg[26]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[26]_i_6_O_UNCONNECTED [3:2],data0[26:25]}),
        .S({1'b0,1'b0,cnt[26:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[2]),
        .Q(cnt[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[3]),
        .Q(cnt[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[4]),
        .Q(cnt[4]),
        .R(SR));
  CARRY4 \cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_2_n_0 ,\cnt_reg[4]_i_2_n_1 ,\cnt_reg[4]_i_2_n_2 ,\cnt_reg[4]_i_2_n_3 }),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[5]),
        .Q(cnt[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[6]),
        .Q(cnt[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[7]),
        .Q(cnt[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[8]),
        .Q(cnt[8]),
        .R(SR));
  CARRY4 \cnt_reg[8]_i_2 
       (.CI(\cnt_reg[4]_i_2_n_0 ),
        .CO({\cnt_reg[8]_i_2_n_0 ,\cnt_reg[8]_i_2_n_1 ,\cnt_reg[8]_i_2_n_2 ,\cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt_1[9]),
        .Q(cnt[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    cout_i_1
       (.I0(\cnt[26]_i_3_n_0 ),
        .I1(\cnt[26]_i_4_n_0 ),
        .I2(\cnt[26]_i_5_n_0 ),
        .O(cout_0));
  FDRE #(
    .INIT(1'b0)) 
    cout_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cout_0),
        .Q(cout),
        .R(SR));
endmodule

module half_sec_timer
   (SR,
    buzz_out_OBUF,
    CLK,
    cout,
    en_IBUF,
    rst_IBUF);
  output [0:0]SR;
  output buzz_out_OBUF;
  input CLK;
  input cout;
  input en_IBUF;
  input rst_IBUF;

  wire CLK;
  wire [0:0]SR;
  wire buzz_out_OBUF;
  wire [26:0]cnt;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__0_n_4;
  wire cnt0_carry__0_n_5;
  wire cnt0_carry__0_n_6;
  wire cnt0_carry__0_n_7;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__1_n_4;
  wire cnt0_carry__1_n_5;
  wire cnt0_carry__1_n_6;
  wire cnt0_carry__1_n_7;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__2_n_4;
  wire cnt0_carry__2_n_5;
  wire cnt0_carry__2_n_6;
  wire cnt0_carry__2_n_7;
  wire cnt0_carry__3_n_0;
  wire cnt0_carry__3_n_1;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry__3_n_4;
  wire cnt0_carry__3_n_5;
  wire cnt0_carry__3_n_6;
  wire cnt0_carry__3_n_7;
  wire cnt0_carry__4_n_0;
  wire cnt0_carry__4_n_1;
  wire cnt0_carry__4_n_2;
  wire cnt0_carry__4_n_3;
  wire cnt0_carry__4_n_4;
  wire cnt0_carry__4_n_5;
  wire cnt0_carry__4_n_6;
  wire cnt0_carry__4_n_7;
  wire cnt0_carry__5_n_3;
  wire cnt0_carry__5_n_6;
  wire cnt0_carry__5_n_7;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt0_carry_n_4;
  wire cnt0_carry_n_5;
  wire cnt0_carry_n_6;
  wire cnt0_carry_n_7;
  wire \cnt[26]_i_2__0_n_0 ;
  wire \cnt[26]_i_3__0_n_0 ;
  wire \cnt[26]_i_4__0_n_0 ;
  wire \cnt[26]_i_5__0_n_0 ;
  wire \cnt[26]_i_6_n_0 ;
  wire \cnt[26]_i_7__0_n_0 ;
  wire \cnt[26]_i_8__0_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[26] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire cout;
  wire cout_0;
  wire en_IBUF;
  wire rst_IBUF;
  wire sw;
  wire [3:1]NLW_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_cnt0_carry__5_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h80)) 
    buzz_out_OBUF_inst_i_1
       (.I0(sw),
        .I1(cout),
        .I2(en_IBUF),
        .O(buzz_out_OBUF));
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry_n_4,cnt0_carry_n_5,cnt0_carry_n_6,cnt0_carry_n_7}),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__0_n_4,cnt0_carry__0_n_5,cnt0_carry__0_n_6,cnt0_carry__0_n_7}),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__1_n_4,cnt0_carry__1_n_5,cnt0_carry__1_n_6,cnt0_carry__1_n_7}),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__2_n_4,cnt0_carry__2_n_5,cnt0_carry__2_n_6,cnt0_carry__2_n_7}),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({cnt0_carry__3_n_0,cnt0_carry__3_n_1,cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__3_n_4,cnt0_carry__3_n_5,cnt0_carry__3_n_6,cnt0_carry__3_n_7}),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  CARRY4 cnt0_carry__4
       (.CI(cnt0_carry__3_n_0),
        .CO({cnt0_carry__4_n_0,cnt0_carry__4_n_1,cnt0_carry__4_n_2,cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cnt0_carry__4_n_4,cnt0_carry__4_n_5,cnt0_carry__4_n_6,cnt0_carry__4_n_7}),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  CARRY4 cnt0_carry__5
       (.CI(cnt0_carry__4_n_0),
        .CO({NLW_cnt0_carry__5_CO_UNCONNECTED[3:1],cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt0_carry__5_O_UNCONNECTED[3:2],cnt0_carry__5_n_6,cnt0_carry__5_n_7}),
        .S({1'b0,1'b0,\cnt_reg_n_0_[26] ,\cnt_reg_n_0_[25] }));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[10]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__1_n_6),
        .O(cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[11]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__1_n_5),
        .O(cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[12]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__1_n_4),
        .O(cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[13]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__2_n_7),
        .O(cnt[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[14]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__2_n_6),
        .O(cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[15]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__2_n_5),
        .O(cnt[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[16]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__2_n_4),
        .O(cnt[16]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[17]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__3_n_7),
        .O(cnt[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[18]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__3_n_6),
        .O(cnt[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[19]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__3_n_5),
        .O(cnt[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry_n_7),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[20]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__3_n_4),
        .O(cnt[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[21]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__4_n_7),
        .O(cnt[21]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[22]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__4_n_6),
        .O(cnt[22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[23]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__4_n_5),
        .O(cnt[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[24]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__4_n_4),
        .O(cnt[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[25]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__5_n_7),
        .O(cnt[25]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[26]_i_1 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__5_n_6),
        .O(cnt[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[26]_i_1__0 
       (.I0(rst_IBUF),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \cnt[26]_i_2__0 
       (.I0(\cnt_reg_n_0_[25] ),
        .I1(\cnt_reg_n_0_[26] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt[26]_i_5__0_n_0 ),
        .I4(\cnt[26]_i_6_n_0 ),
        .O(\cnt[26]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \cnt[26]_i_3__0 
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(\cnt[26]_i_7__0_n_0 ),
        .O(\cnt[26]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \cnt[26]_i_4__0 
       (.I0(\cnt_reg_n_0_[16] ),
        .I1(\cnt_reg_n_0_[15] ),
        .I2(\cnt_reg_n_0_[13] ),
        .I3(\cnt_reg_n_0_[14] ),
        .I4(\cnt[26]_i_8__0_n_0 ),
        .O(\cnt[26]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt[26]_i_5__0 
       (.I0(\cnt_reg_n_0_[22] ),
        .I1(\cnt_reg_n_0_[21] ),
        .I2(\cnt_reg_n_0_[23] ),
        .I3(\cnt_reg_n_0_[24] ),
        .O(\cnt[26]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[26]_i_6 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[4] ),
        .I3(\cnt_reg_n_0_[3] ),
        .O(\cnt[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[26]_i_7__0 
       (.I0(\cnt_reg_n_0_[10] ),
        .I1(\cnt_reg_n_0_[9] ),
        .I2(\cnt_reg_n_0_[12] ),
        .I3(\cnt_reg_n_0_[11] ),
        .O(\cnt[26]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[26]_i_8__0 
       (.I0(\cnt_reg_n_0_[17] ),
        .I1(\cnt_reg_n_0_[18] ),
        .I2(\cnt_reg_n_0_[20] ),
        .I3(\cnt_reg_n_0_[19] ),
        .O(\cnt[26]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry_n_6),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry_n_5),
        .O(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry_n_4),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[5]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__0_n_7),
        .O(cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[6]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__0_n_6),
        .O(cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[7]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__0_n_5),
        .O(cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[8]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__0_n_4),
        .O(cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \cnt[9]_i_1__0 
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .I3(cnt0_carry__1_n_7),
        .O(cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[11]),
        .Q(\cnt_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[12]),
        .Q(\cnt_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[13]),
        .Q(\cnt_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[14]),
        .Q(\cnt_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[15]),
        .Q(\cnt_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[16]),
        .Q(\cnt_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[17]),
        .Q(\cnt_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[18]),
        .Q(\cnt_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[19]),
        .Q(\cnt_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[20]),
        .Q(\cnt_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[21]),
        .Q(\cnt_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[22]),
        .Q(\cnt_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[23]),
        .Q(\cnt_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[24]),
        .Q(\cnt_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[25]),
        .Q(\cnt_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[26]),
        .Q(\cnt_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    cout_i_1__0
       (.I0(\cnt[26]_i_2__0_n_0 ),
        .I1(\cnt[26]_i_3__0_n_0 ),
        .I2(\cnt[26]_i_4__0_n_0 ),
        .O(cout_0));
  FDRE #(
    .INIT(1'b0)) 
    cout_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cout_0),
        .Q(sw),
        .R(SR));
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
