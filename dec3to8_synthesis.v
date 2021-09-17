////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: dec3to8_synthesis.v
// /___/   /\     Timestamp: Sun Apr 26 13:41:08 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim dec3to8.ngc dec3to8_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: dec3to8.ngc
// Output file	: G:\my codes\decoder_3to8\netgen\synthesis\dec3to8_synthesis.v
// # of Modules	: 1
// Design Name	: dec3to8
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module dec3to8 (
  en, q, i
);
  input en;
  output [7 : 0] q;
  input [0 : 2] i;
  wire i_0_IBUF_3;
  wire i_1_IBUF_4;
  wire i_2_IBUF_5;
  wire q_0_OBUF_14;
  wire q_1_OBUF_15;
  wire q_2_OBUF_16;
  wire q_3_OBUF_17;
  wire q_4_OBUF_18;
  wire q_5_OBUF_19;
  wire q_6_OBUF_20;
  wire q_7_OBUF_21;
  LUT3 #(
    .INIT ( 8'h80 ))
  q_7_and00001 (
    .I0(i_2_IBUF_5),
    .I1(i_1_IBUF_4),
    .I2(i_0_IBUF_3),
    .O(q_7_OBUF_21)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  q_6_and00001 (
    .I0(i_2_IBUF_5),
    .I1(i_1_IBUF_4),
    .I2(i_0_IBUF_3),
    .O(q_6_OBUF_20)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  q_5_and00001 (
    .I0(i_1_IBUF_4),
    .I1(i_2_IBUF_5),
    .I2(i_0_IBUF_3),
    .O(q_5_OBUF_19)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  q_4_and00001 (
    .I0(i_2_IBUF_5),
    .I1(i_1_IBUF_4),
    .I2(i_0_IBUF_3),
    .O(q_4_OBUF_18)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  q_3_and00001 (
    .I0(i_0_IBUF_3),
    .I1(i_1_IBUF_4),
    .I2(i_2_IBUF_5),
    .O(q_3_OBUF_17)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  q_2_and00001 (
    .I0(i_0_IBUF_3),
    .I1(i_2_IBUF_5),
    .I2(i_1_IBUF_4),
    .O(q_2_OBUF_16)
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  q_1_and00001 (
    .I0(i_0_IBUF_3),
    .I1(i_1_IBUF_4),
    .I2(i_2_IBUF_5),
    .O(q_1_OBUF_15)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  q_0_and00001 (
    .I0(i_0_IBUF_3),
    .I1(i_1_IBUF_4),
    .I2(i_2_IBUF_5),
    .O(q_0_OBUF_14)
  );
  IBUF   i_0_IBUF (
    .I(i[0]),
    .O(i_0_IBUF_3)
  );
  IBUF   i_1_IBUF (
    .I(i[1]),
    .O(i_1_IBUF_4)
  );
  IBUF   i_2_IBUF (
    .I(i[2]),
    .O(i_2_IBUF_5)
  );
  OBUF   q_7_OBUF (
    .I(q_7_OBUF_21),
    .O(q[7])
  );
  OBUF   q_6_OBUF (
    .I(q_6_OBUF_20),
    .O(q[6])
  );
  OBUF   q_5_OBUF (
    .I(q_5_OBUF_19),
    .O(q[5])
  );
  OBUF   q_4_OBUF (
    .I(q_4_OBUF_18),
    .O(q[4])
  );
  OBUF   q_3_OBUF (
    .I(q_3_OBUF_17),
    .O(q[3])
  );
  OBUF   q_2_OBUF (
    .I(q_2_OBUF_16),
    .O(q[2])
  );
  OBUF   q_1_OBUF (
    .I(q_1_OBUF_15),
    .O(q[1])
  );
  OBUF   q_0_OBUF (
    .I(q_0_OBUF_14),
    .O(q[0])
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

