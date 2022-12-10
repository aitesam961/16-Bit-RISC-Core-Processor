////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Register_File_timesim.v
// /___/   /\     Timestamp: Sat Dec 10 15:44:50 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 5 -pcf Register_File.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Register_File.ncd Register_File_timesim.v 
// Device	: 3s100evq100-5 (PRODUCTION 1.27 2013-10-13)
// Input file	: Register_File.ncd
// Output file	: C:\Users\aites\Documents\Github\16-Bit-RISC-Core-Procesor\16b_RISC_SCP\Register_File\netgen\par\Register_File_timesim.v
// # of Modules	: 1
// Design Name	: Register_File
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
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

module Register_File (
  clk, rst, wr, Rout1, Rout2, Rd, Rs, Rt, RW
);
  input clk;
  input rst;
  input wr;
  output [15 : 0] Rout1;
  output [15 : 0] Rout2;
  input [3 : 0] Rd;
  input [3 : 0] Rs;
  input [3 : 0] Rt;
  input [15 : 0] RW;
  wire wr_IBUF_122;
  wire rst_IBUF_123;
  wire clk_BUFGP;
  wire RW_0_IBUF_125;
  wire \clk/INBUF ;
  wire \Rout1<10>/O ;
  wire \Rout1<11>/O ;
  wire \Rout1<12>/O ;
  wire \wr/INBUF ;
  wire \Rout1<13>/O ;
  wire \Rout1<14>/O ;
  wire \Rout1<15>/O ;
  wire \Rout1<0>/O ;
  wire \Rout1<1>/O ;
  wire \Rout1<2>/O ;
  wire \Rout2<10>/O ;
  wire \Rout1<3>/O ;
  wire \Rout2<11>/O ;
  wire \Rout2<0>/O ;
  wire \Rout1<4>/O ;
  wire \Rout2<1>/O ;
  wire \Rout2<12>/O ;
  wire \Rout1<5>/O ;
  wire \Rout2<2>/O ;
  wire \Rout2<13>/O ;
  wire \Rout1<6>/O ;
  wire \Rout2<3>/O ;
  wire \Rout2<14>/O ;
  wire \Rout1<7>/O ;
  wire \Rout2<4>/O ;
  wire \Rout2<15>/O ;
  wire \Rout1<8>/O ;
  wire \Rout2<5>/O ;
  wire \Rout1<9>/O ;
  wire \Rout2<6>/O ;
  wire \Rout2<7>/O ;
  wire \Rout2<8>/O ;
  wire \Rout2<9>/O ;
  wire \RW<0>/INBUF ;
  wire \rst/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \Rout1<0>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<0>/OUTPUT/OFF/PCICE_MUX_207 ;
  wire \R16b1/Register1/qq_1_212 ;
  wire \Rout1<0>/OUTPUT/OTCLK1INV_201 ;
  wire \Rout1<0>/OUTPUT/OFF/OFF1/RSTAND_214 ;
  wire \Rout2<0>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<0>/OUTPUT/OFF/PCICE_MUX_278 ;
  wire \R16b1/Register1/qq_283 ;
  wire \Rout2<0>/OUTPUT/OTCLK1INV_272 ;
  wire \Rout2<0>/OUTPUT/OFF/OFF1/RSTAND_285 ;
  wire \Rout1<10>/OUTPUT/OFF/O1INV_140 ;
  wire \Rout1<11>/OUTPUT/OFF/O1INV_148 ;
  wire \Rout1<12>/OUTPUT/OFF/O1INV_156 ;
  wire \Rout1<13>/OUTPUT/OFF/O1INV_170 ;
  wire \Rout1<14>/OUTPUT/OFF/O1INV_178 ;
  wire \Rout1<15>/OUTPUT/OFF/O1INV_186 ;
  wire \Rout1<1>/OUTPUT/OFF/O1INV_225 ;
  wire \Rout1<2>/OUTPUT/OFF/O1INV_233 ;
  wire \Rout2<10>/OUTPUT/OFF/O1INV_241 ;
  wire \Rout1<3>/OUTPUT/OFF/O1INV_249 ;
  wire \Rout2<11>/OUTPUT/OFF/O1INV_257 ;
  wire \Rout1<4>/OUTPUT/OFF/O1INV_296 ;
  wire \Rout2<1>/OUTPUT/OFF/O1INV_304 ;
  wire \Rout2<12>/OUTPUT/OFF/O1INV_312 ;
  wire \Rout1<5>/OUTPUT/OFF/O1INV_320 ;
  wire \Rout2<2>/OUTPUT/OFF/O1INV_328 ;
  wire \Rout2<13>/OUTPUT/OFF/O1INV_336 ;
  wire \Rout1<6>/OUTPUT/OFF/O1INV_344 ;
  wire \Rout2<3>/OUTPUT/OFF/O1INV_352 ;
  wire \Rout2<14>/OUTPUT/OFF/O1INV_360 ;
  wire \Rout1<7>/OUTPUT/OFF/O1INV_368 ;
  wire \Rout2<4>/OUTPUT/OFF/O1INV_376 ;
  wire \Rout2<15>/OUTPUT/OFF/O1INV_384 ;
  wire \Rout1<8>/OUTPUT/OFF/O1INV_392 ;
  wire \Rout2<5>/OUTPUT/OFF/O1INV_400 ;
  wire \Rout1<9>/OUTPUT/OFF/O1INV_408 ;
  wire \Rout2<6>/OUTPUT/OFF/O1INV_416 ;
  wire \Rout2<7>/OUTPUT/OFF/O1INV_424 ;
  wire \Rout2<8>/OUTPUT/OFF/O1INV_432 ;
  wire \Rout2<9>/OUTPUT/OFF/O1INV_440 ;
  wire GND;
  initial $sdf_annotate("netgen/par/register_file_timesim.sdf");
  X_IPAD #(
    .LOC ( "IPAD12" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD12" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD18" ))
  \Rout1<10>/PAD  (
    .PAD(Rout1[10])
  );
  X_OBUF #(
    .LOC ( "PAD18" ))
  Rout1_10_OBUF (
    .I(\Rout1<10>/O ),
    .O(Rout1[10])
  );
  X_OPAD #(
    .LOC ( "PAD25" ))
  \Rout1<11>/PAD  (
    .PAD(Rout1[11])
  );
  X_OBUF #(
    .LOC ( "PAD25" ))
  Rout1_11_OBUF (
    .I(\Rout1<11>/O ),
    .O(Rout1[11])
  );
  X_OPAD #(
    .LOC ( "PAD24" ))
  \Rout1<12>/PAD  (
    .PAD(Rout1[12])
  );
  X_OBUF #(
    .LOC ( "PAD24" ))
  Rout1_12_OBUF (
    .I(\Rout1<12>/O ),
    .O(Rout1[12])
  );
  X_IPAD #(
    .LOC ( "PAD42" ))
  \wr/PAD  (
    .PAD(wr)
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  wr_IBUF (
    .I(wr),
    .O(\wr/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \Rout1<13>/PAD  (
    .PAD(Rout1[13])
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  Rout1_13_OBUF (
    .I(\Rout1<13>/O ),
    .O(Rout1[13])
  );
  X_OPAD #(
    .LOC ( "PAD35" ))
  \Rout1<14>/PAD  (
    .PAD(Rout1[14])
  );
  X_OBUF #(
    .LOC ( "PAD35" ))
  Rout1_14_OBUF (
    .I(\Rout1<14>/O ),
    .O(Rout1[14])
  );
  X_OPAD #(
    .LOC ( "PAD34" ))
  \Rout1<15>/PAD  (
    .PAD(Rout1[15])
  );
  X_OBUF #(
    .LOC ( "PAD34" ))
  Rout1_15_OBUF (
    .I(\Rout1<15>/O ),
    .O(Rout1[15])
  );
  X_OPAD #(
    .LOC ( "PAD69" ))
  \Rout1<0>/PAD  (
    .PAD(Rout1[0])
  );
  X_OBUF #(
    .LOC ( "PAD69" ))
  Rout1_0_OBUF (
    .I(\Rout1<0>/O ),
    .O(Rout1[0])
  );
  X_OPAD #(
    .LOC ( "PAD55" ))
  \Rout1<1>/PAD  (
    .PAD(Rout1[1])
  );
  X_OBUF #(
    .LOC ( "PAD55" ))
  Rout1_1_OBUF (
    .I(\Rout1<1>/O ),
    .O(Rout1[1])
  );
  X_OPAD #(
    .LOC ( "PAD54" ))
  \Rout1<2>/PAD  (
    .PAD(Rout1[2])
  );
  X_OBUF #(
    .LOC ( "PAD54" ))
  Rout1_2_OBUF (
    .I(\Rout1<2>/O ),
    .O(Rout1[2])
  );
  X_OPAD #(
    .LOC ( "PAD64" ))
  \Rout2<10>/PAD  (
    .PAD(Rout2[10])
  );
  X_OBUF #(
    .LOC ( "PAD64" ))
  Rout2_10_OBUF (
    .I(\Rout2<10>/O ),
    .O(Rout2[10])
  );
  X_OPAD #(
    .LOC ( "PAD53" ))
  \Rout1<3>/PAD  (
    .PAD(Rout1[3])
  );
  X_OBUF #(
    .LOC ( "PAD53" ))
  Rout1_3_OBUF (
    .I(\Rout1<3>/O ),
    .O(Rout1[3])
  );
  X_OPAD #(
    .LOC ( "PAD63" ))
  \Rout2<11>/PAD  (
    .PAD(Rout2[11])
  );
  X_OBUF #(
    .LOC ( "PAD63" ))
  Rout2_11_OBUF (
    .I(\Rout2<11>/O ),
    .O(Rout2[11])
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \Rout2<0>/PAD  (
    .PAD(Rout2[0])
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  Rout2_0_OBUF (
    .I(\Rout2<0>/O ),
    .O(Rout2[0])
  );
  X_OPAD #(
    .LOC ( "PAD49" ))
  \Rout1<4>/PAD  (
    .PAD(Rout1[4])
  );
  X_OBUF #(
    .LOC ( "PAD49" ))
  Rout1_4_OBUF (
    .I(\Rout1<4>/O ),
    .O(Rout1[4])
  );
  X_OPAD #(
    .LOC ( "PAD78" ))
  \Rout2<1>/PAD  (
    .PAD(Rout2[1])
  );
  X_OBUF #(
    .LOC ( "PAD78" ))
  Rout2_1_OBUF (
    .I(\Rout2<1>/O ),
    .O(Rout2[1])
  );
  X_OPAD #(
    .LOC ( "PAD62" ))
  \Rout2<12>/PAD  (
    .PAD(Rout2[12])
  );
  X_OBUF #(
    .LOC ( "PAD62" ))
  Rout2_12_OBUF (
    .I(\Rout2<12>/O ),
    .O(Rout2[12])
  );
  X_OPAD #(
    .LOC ( "PAD48" ))
  \Rout1<5>/PAD  (
    .PAD(Rout1[5])
  );
  X_OBUF #(
    .LOC ( "PAD48" ))
  Rout1_5_OBUF (
    .I(\Rout1<5>/O ),
    .O(Rout1[5])
  );
  X_OPAD #(
    .LOC ( "PAD76" ))
  \Rout2<2>/PAD  (
    .PAD(Rout2[2])
  );
  X_OBUF #(
    .LOC ( "PAD76" ))
  Rout2_2_OBUF (
    .I(\Rout2<2>/O ),
    .O(Rout2[2])
  );
  X_OPAD #(
    .LOC ( "PAD61" ))
  \Rout2<13>/PAD  (
    .PAD(Rout2[13])
  );
  X_OBUF #(
    .LOC ( "PAD61" ))
  Rout2_13_OBUF (
    .I(\Rout2<13>/O ),
    .O(Rout2[13])
  );
  X_OPAD #(
    .LOC ( "PAD45" ))
  \Rout1<6>/PAD  (
    .PAD(Rout1[6])
  );
  X_OBUF #(
    .LOC ( "PAD45" ))
  Rout1_6_OBUF (
    .I(\Rout1<6>/O ),
    .O(Rout1[6])
  );
  X_OPAD #(
    .LOC ( "PAD75" ))
  \Rout2<3>/PAD  (
    .PAD(Rout2[3])
  );
  X_OBUF #(
    .LOC ( "PAD75" ))
  Rout2_3_OBUF (
    .I(\Rout2<3>/O ),
    .O(Rout2[3])
  );
  X_OPAD #(
    .LOC ( "PAD59" ))
  \Rout2<14>/PAD  (
    .PAD(Rout2[14])
  );
  X_OBUF #(
    .LOC ( "PAD59" ))
  Rout2_14_OBUF (
    .I(\Rout2<14>/O ),
    .O(Rout2[14])
  );
  X_OPAD #(
    .LOC ( "PAD44" ))
  \Rout1<7>/PAD  (
    .PAD(Rout1[7])
  );
  X_OBUF #(
    .LOC ( "PAD44" ))
  Rout1_7_OBUF (
    .I(\Rout1<7>/O ),
    .O(Rout1[7])
  );
  X_OPAD #(
    .LOC ( "PAD72" ))
  \Rout2<4>/PAD  (
    .PAD(Rout2[4])
  );
  X_OBUF #(
    .LOC ( "PAD72" ))
  Rout2_4_OBUF (
    .I(\Rout2<4>/O ),
    .O(Rout2[4])
  );
  X_OPAD #(
    .LOC ( "PAD58" ))
  \Rout2<15>/PAD  (
    .PAD(Rout2[15])
  );
  X_OBUF #(
    .LOC ( "PAD58" ))
  Rout2_15_OBUF (
    .I(\Rout2<15>/O ),
    .O(Rout2[15])
  );
  X_OPAD #(
    .LOC ( "PAD38" ))
  \Rout1<8>/PAD  (
    .PAD(Rout1[8])
  );
  X_OBUF #(
    .LOC ( "PAD38" ))
  Rout1_8_OBUF (
    .I(\Rout1<8>/O ),
    .O(Rout1[8])
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \Rout2<5>/PAD  (
    .PAD(Rout2[5])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  Rout2_5_OBUF (
    .I(\Rout2<5>/O ),
    .O(Rout2[5])
  );
  X_OPAD #(
    .LOC ( "PAD40" ))
  \Rout1<9>/PAD  (
    .PAD(Rout1[9])
  );
  X_OBUF #(
    .LOC ( "PAD40" ))
  Rout1_9_OBUF (
    .I(\Rout1<9>/O ),
    .O(Rout1[9])
  );
  X_OPAD #(
    .LOC ( "PAD56" ))
  \Rout2<6>/PAD  (
    .PAD(Rout2[6])
  );
  X_OBUF #(
    .LOC ( "PAD56" ))
  Rout2_6_OBUF (
    .I(\Rout2<6>/O ),
    .O(Rout2[6])
  );
  X_OPAD #(
    .LOC ( "PAD70" ))
  \Rout2<7>/PAD  (
    .PAD(Rout2[7])
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  Rout2_7_OBUF (
    .I(\Rout2<7>/O ),
    .O(Rout2[7])
  );
  X_OPAD #(
    .LOC ( "PAD79" ))
  \Rout2<8>/PAD  (
    .PAD(Rout2[8])
  );
  X_OBUF #(
    .LOC ( "PAD79" ))
  Rout2_8_OBUF (
    .I(\Rout2<8>/O ),
    .O(Rout2[8])
  );
  X_OPAD #(
    .LOC ( "PAD65" ))
  \Rout2<9>/PAD  (
    .PAD(Rout2[9])
  );
  X_OBUF #(
    .LOC ( "PAD65" ))
  Rout2_9_OBUF (
    .I(\Rout2<9>/O ),
    .O(Rout2[9])
  );
  X_IPAD #(
    .LOC ( "PAD43" ))
  \RW<0>/PAD  (
    .PAD(RW[0])
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  RW_0_IBUF (
    .I(RW[0]),
    .O(\RW<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD39" ))
  \rst/PAD  (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  rst_IBUF (
    .I(rst),
    .O(\rst/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \wr/IFF/IMUX  (
    .I(\wr/INBUF ),
    .O(wr_IBUF_122)
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<0>/OUTPUT/OFF/O1_DDRMUX  (
    .I(RW_0_IBUF_125),
    .O(\Rout1<0>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<0>/OUTPUT/OFF/PCICE_MUX  (
    .I(wr_IBUF_122),
    .O(\Rout1<0>/OUTPUT/OFF/PCICE_MUX_207 )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<0>/OUTPUT/OFF/OMUX  (
    .I(\R16b1/Register1/qq_1_212 ),
    .O(\Rout1<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<0>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\Rout1<0>/OUTPUT/OTCLK1INV_201 )
  );
  X_FF #(
    .LOC ( "PAD69" ),
    .INIT ( 1'b0 ))
  \R16b1/Register1/qq_1  (
    .I(\Rout1<0>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(\Rout1<0>/OUTPUT/OFF/PCICE_MUX_207 ),
    .CLK(\Rout1<0>/OUTPUT/OTCLK1INV_201 ),
    .SET(GND),
    .RST(\Rout1<0>/OUTPUT/OFF/OFF1/RSTAND_214 ),
    .O(\R16b1/Register1/qq_1_212 )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<0>/OUTPUT/OFF/OFF1/RSTAND  (
    .I(rst_IBUF_123),
    .O(\Rout1<0>/OUTPUT/OFF/OFF1/RSTAND_214 )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout2<0>/OUTPUT/OFF/O1_DDRMUX  (
    .I(RW_0_IBUF_125),
    .O(\Rout2<0>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout2<0>/OUTPUT/OFF/PCICE_MUX  (
    .I(wr_IBUF_122),
    .O(\Rout2<0>/OUTPUT/OFF/PCICE_MUX_278 )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout2<0>/OUTPUT/OFF/OMUX  (
    .I(\R16b1/Register1/qq_283 ),
    .O(\Rout2<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout2<0>/OUTPUT/OTCLK1INV  (
    .I(clk_BUFGP),
    .O(\Rout2<0>/OUTPUT/OTCLK1INV_272 )
  );
  X_FF #(
    .LOC ( "PAD68" ),
    .INIT ( 1'b0 ))
  \R16b1/Register1/qq  (
    .I(\Rout2<0>/OUTPUT/OFF/ODDRIN1_MUX ),
    .CE(\Rout2<0>/OUTPUT/OFF/PCICE_MUX_278 ),
    .CLK(\Rout2<0>/OUTPUT/OTCLK1INV_272 ),
    .SET(GND),
    .RST(\Rout2<0>/OUTPUT/OFF/OFF1/RSTAND_285 ),
    .O(\R16b1/Register1/qq_283 )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout2<0>/OUTPUT/OFF/OFF1/RSTAND  (
    .I(rst_IBUF_123),
    .O(\Rout2<0>/OUTPUT/OFF/OFF1/RSTAND_285 )
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \RW<0>/IFF/IMUX  (
    .I(\RW<0>/INBUF ),
    .O(RW_0_IBUF_125)
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \rst/IFF/IMUX  (
    .I(\rst/INBUF ),
    .O(rst_IBUF_123)
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \Rout1<10>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<10>/OUTPUT/OFF/O1INV_140 ),
    .O(\Rout1<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \Rout1<10>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<10>/OUTPUT/OFF/O1INV_140 )
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \Rout1<11>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<11>/OUTPUT/OFF/O1INV_148 ),
    .O(\Rout1<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \Rout1<11>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<11>/OUTPUT/OFF/O1INV_148 )
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  \Rout1<12>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<12>/OUTPUT/OFF/O1INV_156 ),
    .O(\Rout1<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  \Rout1<12>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<12>/OUTPUT/OFF/O1INV_156 )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \Rout1<13>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<13>/OUTPUT/OFF/O1INV_170 ),
    .O(\Rout1<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \Rout1<13>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<13>/OUTPUT/OFF/O1INV_170 )
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \Rout1<14>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<14>/OUTPUT/OFF/O1INV_178 ),
    .O(\Rout1<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \Rout1<14>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<14>/OUTPUT/OFF/O1INV_178 )
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \Rout1<15>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<15>/OUTPUT/OFF/O1INV_186 ),
    .O(\Rout1<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \Rout1<15>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<15>/OUTPUT/OFF/O1INV_186 )
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \Rout1<1>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<1>/OUTPUT/OFF/O1INV_225 ),
    .O(\Rout1<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \Rout1<1>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<1>/OUTPUT/OFF/O1INV_225 )
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \Rout1<2>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<2>/OUTPUT/OFF/O1INV_233 ),
    .O(\Rout1<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \Rout1<2>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<2>/OUTPUT/OFF/O1INV_233 )
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \Rout2<10>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<10>/OUTPUT/OFF/O1INV_241 ),
    .O(\Rout2<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \Rout2<10>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<10>/OUTPUT/OFF/O1INV_241 )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \Rout1<3>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<3>/OUTPUT/OFF/O1INV_249 ),
    .O(\Rout1<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \Rout1<3>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<3>/OUTPUT/OFF/O1INV_249 )
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \Rout2<11>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<11>/OUTPUT/OFF/O1INV_257 ),
    .O(\Rout2<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \Rout2<11>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<11>/OUTPUT/OFF/O1INV_257 )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \Rout1<4>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<4>/OUTPUT/OFF/O1INV_296 ),
    .O(\Rout1<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \Rout1<4>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<4>/OUTPUT/OFF/O1INV_296 )
  );
  X_BUF #(
    .LOC ( "PAD78" ))
  \Rout2<1>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<1>/OUTPUT/OFF/O1INV_304 ),
    .O(\Rout2<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD78" ))
  \Rout2<1>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<1>/OUTPUT/OFF/O1INV_304 )
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \Rout2<12>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<12>/OUTPUT/OFF/O1INV_312 ),
    .O(\Rout2<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \Rout2<12>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<12>/OUTPUT/OFF/O1INV_312 )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \Rout1<5>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<5>/OUTPUT/OFF/O1INV_320 ),
    .O(\Rout1<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \Rout1<5>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<5>/OUTPUT/OFF/O1INV_320 )
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  \Rout2<2>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<2>/OUTPUT/OFF/O1INV_328 ),
    .O(\Rout2<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  \Rout2<2>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<2>/OUTPUT/OFF/O1INV_328 )
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \Rout2<13>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<13>/OUTPUT/OFF/O1INV_336 ),
    .O(\Rout2<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \Rout2<13>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<13>/OUTPUT/OFF/O1INV_336 )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \Rout1<6>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<6>/OUTPUT/OFF/O1INV_344 ),
    .O(\Rout1<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \Rout1<6>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<6>/OUTPUT/OFF/O1INV_344 )
  );
  X_BUF #(
    .LOC ( "PAD75" ))
  \Rout2<3>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<3>/OUTPUT/OFF/O1INV_352 ),
    .O(\Rout2<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD75" ))
  \Rout2<3>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<3>/OUTPUT/OFF/O1INV_352 )
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \Rout2<14>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<14>/OUTPUT/OFF/O1INV_360 ),
    .O(\Rout2<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \Rout2<14>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<14>/OUTPUT/OFF/O1INV_360 )
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \Rout1<7>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<7>/OUTPUT/OFF/O1INV_368 ),
    .O(\Rout1<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \Rout1<7>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<7>/OUTPUT/OFF/O1INV_368 )
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \Rout2<4>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<4>/OUTPUT/OFF/O1INV_376 ),
    .O(\Rout2<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \Rout2<4>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<4>/OUTPUT/OFF/O1INV_376 )
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \Rout2<15>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<15>/OUTPUT/OFF/O1INV_384 ),
    .O(\Rout2<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \Rout2<15>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<15>/OUTPUT/OFF/O1INV_384 )
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \Rout1<8>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<8>/OUTPUT/OFF/O1INV_392 ),
    .O(\Rout1<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \Rout1<8>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<8>/OUTPUT/OFF/O1INV_392 )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \Rout2<5>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<5>/OUTPUT/OFF/O1INV_400 ),
    .O(\Rout2<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \Rout2<5>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<5>/OUTPUT/OFF/O1INV_400 )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \Rout1<9>/OUTPUT/OFF/OMUX  (
    .I(\Rout1<9>/OUTPUT/OFF/O1INV_408 ),
    .O(\Rout1<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \Rout1<9>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout1<9>/OUTPUT/OFF/O1INV_408 )
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \Rout2<6>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<6>/OUTPUT/OFF/O1INV_416 ),
    .O(\Rout2<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \Rout2<6>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<6>/OUTPUT/OFF/O1INV_416 )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \Rout2<7>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<7>/OUTPUT/OFF/O1INV_424 ),
    .O(\Rout2<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \Rout2<7>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<7>/OUTPUT/OFF/O1INV_424 )
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \Rout2<8>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<8>/OUTPUT/OFF/O1INV_432 ),
    .O(\Rout2<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \Rout2<8>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<8>/OUTPUT/OFF/O1INV_432 )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \Rout2<9>/OUTPUT/OFF/OMUX  (
    .I(\Rout2<9>/OUTPUT/OFF/O1INV_440 ),
    .O(\Rout2<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \Rout2<9>/OUTPUT/OFF/O1INV  (
    .I(1'b0),
    .O(\Rout2<9>/OUTPUT/OFF/O1INV_440 )
  );
  X_ZERO   NlwBlock_Register_File_GND (
    .O(GND)
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

