// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Dec 15 13:56:12 2018
// Host        : Dell-tsing running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/46162/Desktop/Simple-FPGA-Clock/Simple-FPGA-Clock/Simple-FPGA-Clock.sim/sim_1/synth/timing/xsim/seg_assembly_tb_time_synth.v
// Design      : seg_assembly
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

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

  wire [7:0]seg_an;
  wire [7:0]seg_out;

initial begin
 $sdf_annotate("seg_assembly_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \seg_an_OBUF[0]_inst 
       (.I(1'b1),
        .O(seg_an[0]));
  OBUF \seg_an_OBUF[1]_inst 
       (.I(1'b1),
        .O(seg_an[1]));
  OBUF \seg_an_OBUF[2]_inst 
       (.I(1'b1),
        .O(seg_an[2]));
  OBUF \seg_an_OBUF[3]_inst 
       (.I(1'b1),
        .O(seg_an[3]));
  OBUF \seg_an_OBUF[4]_inst 
       (.I(1'b1),
        .O(seg_an[4]));
  OBUF \seg_an_OBUF[5]_inst 
       (.I(1'b1),
        .O(seg_an[5]));
  OBUF \seg_an_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg_an[6]));
  OBUF \seg_an_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg_an[7]));
  OBUF \seg_out_OBUF[0]_inst 
       (.I(1'b1),
        .O(seg_out[0]));
  OBUF \seg_out_OBUF[1]_inst 
       (.I(1'b1),
        .O(seg_out[1]));
  OBUF \seg_out_OBUF[2]_inst 
       (.I(1'b1),
        .O(seg_out[2]));
  OBUF \seg_out_OBUF[3]_inst 
       (.I(1'b1),
        .O(seg_out[3]));
  OBUF \seg_out_OBUF[4]_inst 
       (.I(1'b1),
        .O(seg_out[4]));
  OBUF \seg_out_OBUF[5]_inst 
       (.I(1'b1),
        .O(seg_out[5]));
  OBUF \seg_out_OBUF[6]_inst 
       (.I(1'b1),
        .O(seg_out[6]));
  OBUF \seg_out_OBUF[7]_inst 
       (.I(1'b1),
        .O(seg_out[7]));
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
