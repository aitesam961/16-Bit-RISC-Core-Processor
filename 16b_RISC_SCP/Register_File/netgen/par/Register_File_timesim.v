////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Register_File_timesim.v
// /___/   /\     Timestamp: Sat Dec 10 14:51:58 2022
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
  wire Rs_0_IBUF_365;
  wire Rs_1_IBUF_366;
  wire Rs_2_IBUF_367;
  wire Rs_3_IBUF_368;
  wire Rt_0_IBUF_370;
  wire Rt_1_IBUF_371;
  wire Rt_2_IBUF_372;
  wire Rt_3_IBUF_373;
  wire \R16b1/Register1/qq_375 ;
  wire clk_BUFGP;
  wire \Rs<0>/INBUF ;
  wire \Rs<1>/INBUF ;
  wire \Rs<2>/INBUF ;
  wire \Rs<3>/INBUF ;
  wire \clk/INBUF ;
  wire \Rt<0>/INBUF ;
  wire \Rt<1>/INBUF ;
  wire \Rt<2>/INBUF ;
  wire \Rt<3>/INBUF ;
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
  wire Rout2_0_not0001;
  wire Rout2_15_cmp_eq0000;
  wire Rout1_0_not0001;
  wire Rout1_14_cmp_eq0000;
  wire Rout1_10_cmp_eq0000;
  wire Rout1_6_cmp_eq0000;
  wire Rout2_10_cmp_eq0000;
  wire Rout2_2_cmp_eq0000;
  wire Rout1_11_cmp_eq0000;
  wire Rout1_8_cmp_eq0000;
  wire Rout2_11_cmp_eq0000;
  wire Rout2_4_cmp_eq0000;
  wire Rout2_12_cmp_eq0000;
  wire Rout2_6_cmp_eq0000;
  wire Rout1_12_cmp_eq0000;
  wire Rout1_1_cmp_eq0000;
  wire Rout2_13_cmp_eq0000;
  wire Rout2_8_cmp_eq0000;
  wire Rout1_13_cmp_eq0000;
  wire Rout1_3_cmp_eq0000;
  wire Rout2_1_cmp_eq0000;
  wire Rout2_14_cmp_eq0000;
  wire Rout1_15_cmp_eq0000;
  wire Rout1_5_cmp_eq0000;
  wire Rout1_2_cmp_eq0000;
  wire Rout1_7_cmp_eq0000;
  wire Rout2_5_cmp_eq0000;
  wire Rout2_3_cmp_eq0000;
  wire Rout1_4_cmp_eq0000;
  wire Rout1_9_cmp_eq0000;
  wire Rout2_9_cmp_eq0000;
  wire Rout2_7_cmp_eq0000;
  wire \Rout1<10>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_10_479;
  wire \Rout1<10>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<11>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_11_496;
  wire \Rout1<11>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<12>/OUTPUT/OTCLK2INVNOT ;
  wire Rout1_12_513;
  wire \Rout1<12>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<13>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_13_536;
  wire \Rout1<13>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<14>/OUTPUT/OTCLK2INVNOT ;
  wire Rout1_14_553;
  wire \Rout1<14>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<15>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_15_570;
  wire \Rout1<15>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<0>/OUTPUT/OTCLK2INV_581 ;
  wire Rout1_0_587;
  wire \Rout1<0>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<1>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_1_604;
  wire \Rout1<1>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<2>/OUTPUT/OTCLK2INVNOT ;
  wire Rout1_2_621;
  wire \Rout1<2>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<10>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_10_638;
  wire \Rout2<10>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<3>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_3_655;
  wire \Rout1<3>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<11>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_11_672;
  wire \Rout2<11>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<0>/OUTPUT/OTCLK1INV_683 ;
  wire Rout2_0_689;
  wire \Rout2<0>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<4>/OUTPUT/OTCLK2INVNOT ;
  wire Rout1_4_706;
  wire \Rout1<4>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<1>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_1_723;
  wire \Rout2<1>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<12>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_12_740;
  wire \Rout2<12>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<5>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_5_757;
  wire \Rout1<5>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<2>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_2_774;
  wire \Rout2<2>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<13>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_13_791;
  wire \Rout2<13>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<6>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_6_808;
  wire \Rout1<6>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<3>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_3_825;
  wire \Rout2<3>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<14>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_14_842;
  wire \Rout2<14>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<7>/OUTPUT/OTCLK2INVNOT ;
  wire Rout1_7_859;
  wire \Rout1<7>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<4>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_4_876;
  wire \Rout2<4>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<15>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_15_893;
  wire \Rout2<15>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout1<8>/OUTPUT/OTCLK1INVNOT ;
  wire Rout1_8_910;
  wire \Rout1<8>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<5>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_5_927;
  wire \Rout2<5>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout1<9>/OUTPUT/OTCLK2INVNOT ;
  wire Rout1_9_944;
  wire \Rout1<9>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<6>/OUTPUT/OTCLK2INVNOT ;
  wire Rout2_6_961;
  wire \Rout2<6>/OUTPUT/OFF/ODDRIN2_MUX ;
  wire \Rout2<7>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_7_978;
  wire \Rout2<7>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<8>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_8_995;
  wire \Rout2<8>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \Rout2<9>/OUTPUT/OTCLK1INVNOT ;
  wire Rout2_9_1012;
  wire \Rout2<9>/OUTPUT/OFF/ODDRIN1_MUX ;
  wire \RW<0>/IFF/ICLK1INV_1031 ;
  wire \RW<0>/IFF/ICEINV_1029 ;
  wire \RW<0>/IFF/IDDRIN_MUX_1027 ;
  wire \RW<0>/IFF/IFF1/RSTAND_1036 ;
  wire GND;
  wire VCC;
  wire \NlwInverterSignal_Rout1_10/CLK ;
  wire \NlwInverterSignal_Rout1_11/CLK ;
  wire \NlwInverterSignal_Rout1_12/CLK ;
  wire \NlwInverterSignal_Rout1_13/CLK ;
  wire \NlwInverterSignal_Rout1_14/CLK ;
  wire \NlwInverterSignal_Rout1_15/CLK ;
  wire \NlwInverterSignal_Rout1_0/CLK ;
  wire \NlwInverterSignal_Rout1_1/CLK ;
  wire \NlwInverterSignal_Rout1_2/CLK ;
  wire \NlwInverterSignal_Rout2_10/CLK ;
  wire \NlwInverterSignal_Rout1_3/CLK ;
  wire \NlwInverterSignal_Rout2_11/CLK ;
  wire \NlwInverterSignal_Rout2_0/CLK ;
  wire \NlwInverterSignal_Rout1_4/CLK ;
  wire \NlwInverterSignal_Rout2_1/CLK ;
  wire \NlwInverterSignal_Rout2_12/CLK ;
  wire \NlwInverterSignal_Rout1_5/CLK ;
  wire \NlwInverterSignal_Rout2_2/CLK ;
  wire \NlwInverterSignal_Rout2_13/CLK ;
  wire \NlwInverterSignal_Rout1_6/CLK ;
  wire \NlwInverterSignal_Rout2_3/CLK ;
  wire \NlwInverterSignal_Rout2_14/CLK ;
  wire \NlwInverterSignal_Rout1_7/CLK ;
  wire \NlwInverterSignal_Rout2_4/CLK ;
  wire \NlwInverterSignal_Rout2_15/CLK ;
  wire \NlwInverterSignal_Rout1_8/CLK ;
  wire \NlwInverterSignal_Rout2_5/CLK ;
  wire \NlwInverterSignal_Rout1_9/CLK ;
  wire \NlwInverterSignal_Rout2_6/CLK ;
  wire \NlwInverterSignal_Rout2_7/CLK ;
  wire \NlwInverterSignal_Rout2_8/CLK ;
  wire \NlwInverterSignal_Rout2_9/CLK ;
  initial $sdf_annotate("netgen/par/register_file_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD25" ))
  \Rs<0>/PAD  (
    .PAD(Rs[0])
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  Rs_0_IBUF (
    .I(Rs[0]),
    .O(\Rs<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD24" ))
  \Rs<1>/PAD  (
    .PAD(Rs[1])
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  Rs_1_IBUF (
    .I(Rs[1]),
    .O(\Rs<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD18" ))
  \Rs<2>/PAD  (
    .PAD(Rs[2])
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  Rs_2_IBUF (
    .I(Rs[2]),
    .O(\Rs<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD17" ))
  \Rs<3>/PAD  (
    .PAD(Rs[3])
  );
  X_BUF #(
    .LOC ( "PAD17" ))
  Rs_3_IBUF (
    .I(Rs[3]),
    .O(\Rs<3>/INBUF )
  );
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
  X_IPAD #(
    .LOC ( "PAD15" ))
  \Rt<0>/PAD  (
    .PAD(Rt[0])
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  Rt_0_IBUF (
    .I(Rt[0]),
    .O(\Rt<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD14" ))
  \Rt<1>/PAD  (
    .PAD(Rt[1])
  );
  X_BUF #(
    .LOC ( "PAD14" ))
  Rt_1_IBUF (
    .I(Rt[1]),
    .O(\Rt<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD13" ))
  \Rt<2>/PAD  (
    .PAD(Rt[2])
  );
  X_BUF #(
    .LOC ( "IPAD13" ))
  Rt_2_IBUF (
    .I(Rt[2]),
    .O(\Rt<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD11" ))
  \Rt<3>/PAD  (
    .PAD(Rt[3])
  );
  X_BUF #(
    .LOC ( "PAD11" ))
  Rt_3_IBUF (
    .I(Rt[3]),
    .O(\Rt<3>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD64" ))
  \Rout1<10>/PAD  (
    .PAD(Rout1[10])
  );
  X_OBUF #(
    .LOC ( "PAD64" ))
  Rout1_10_OBUF (
    .I(\Rout1<10>/O ),
    .O(Rout1[10])
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \Rout1<11>/PAD  (
    .PAD(Rout1[11])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  Rout1_11_OBUF (
    .I(\Rout1<11>/O ),
    .O(Rout1[11])
  );
  X_OPAD #(
    .LOC ( "PAD72" ))
  \Rout1<12>/PAD  (
    .PAD(Rout1[12])
  );
  X_OBUF #(
    .LOC ( "PAD72" ))
  Rout1_12_OBUF (
    .I(\Rout1<12>/O ),
    .O(Rout1[12])
  );
  X_IPAD #(
    .LOC ( "PAD10" ))
  \wr/PAD  (
    .PAD(wr)
  );
  X_BUF #(
    .LOC ( "PAD10" ))
  wr_IBUF (
    .I(wr),
    .O(\wr/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD61" ))
  \Rout1<13>/PAD  (
    .PAD(Rout1[13])
  );
  X_OBUF #(
    .LOC ( "PAD61" ))
  Rout1_13_OBUF (
    .I(\Rout1<13>/O ),
    .O(Rout1[13])
  );
  X_OPAD #(
    .LOC ( "PAD59" ))
  \Rout1<14>/PAD  (
    .PAD(Rout1[14])
  );
  X_OBUF #(
    .LOC ( "PAD59" ))
  Rout1_14_OBUF (
    .I(\Rout1<14>/O ),
    .O(Rout1[14])
  );
  X_OPAD #(
    .LOC ( "PAD58" ))
  \Rout1<15>/PAD  (
    .PAD(Rout1[15])
  );
  X_OBUF #(
    .LOC ( "PAD58" ))
  Rout1_15_OBUF (
    .I(\Rout1<15>/O ),
    .O(Rout1[15])
  );
  X_OPAD #(
    .LOC ( "PAD92" ))
  \Rout1<0>/PAD  (
    .PAD(Rout1[0])
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  Rout1_0_OBUF (
    .I(\Rout1<0>/O ),
    .O(Rout1[0])
  );
  X_OPAD #(
    .LOC ( "PAD75" ))
  \Rout1<1>/PAD  (
    .PAD(Rout1[1])
  );
  X_OBUF #(
    .LOC ( "PAD75" ))
  Rout1_1_OBUF (
    .I(\Rout1<1>/O ),
    .O(Rout1[1])
  );
  X_OPAD #(
    .LOC ( "PAD76" ))
  \Rout1<2>/PAD  (
    .PAD(Rout1[2])
  );
  X_OBUF #(
    .LOC ( "PAD76" ))
  Rout1_2_OBUF (
    .I(\Rout1<2>/O ),
    .O(Rout1[2])
  );
  X_OPAD #(
    .LOC ( "PAD56" ))
  \Rout2<10>/PAD  (
    .PAD(Rout2[10])
  );
  X_OBUF #(
    .LOC ( "PAD56" ))
  Rout2_10_OBUF (
    .I(\Rout2<10>/O ),
    .O(Rout2[10])
  );
  X_OPAD #(
    .LOC ( "PAD91" ))
  \Rout1<3>/PAD  (
    .PAD(Rout1[3])
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  Rout1_3_OBUF (
    .I(\Rout1<3>/O ),
    .O(Rout1[3])
  );
  X_OPAD #(
    .LOC ( "PAD39" ))
  \Rout2<11>/PAD  (
    .PAD(Rout2[11])
  );
  X_OBUF #(
    .LOC ( "PAD39" ))
  Rout2_11_OBUF (
    .I(\Rout2<11>/O ),
    .O(Rout2[11])
  );
  X_OPAD #(
    .LOC ( "PAD55" ))
  \Rout2<0>/PAD  (
    .PAD(Rout2[0])
  );
  X_OBUF #(
    .LOC ( "PAD55" ))
  Rout2_0_OBUF (
    .I(\Rout2<0>/O ),
    .O(Rout2[0])
  );
  X_OPAD #(
    .LOC ( "PAD62" ))
  \Rout1<4>/PAD  (
    .PAD(Rout1[4])
  );
  X_OBUF #(
    .LOC ( "PAD62" ))
  Rout1_4_OBUF (
    .I(\Rout1<4>/O ),
    .O(Rout1[4])
  );
  X_OPAD #(
    .LOC ( "PAD40" ))
  \Rout2<1>/PAD  (
    .PAD(Rout2[1])
  );
  X_OBUF #(
    .LOC ( "PAD40" ))
  Rout2_1_OBUF (
    .I(\Rout2<1>/O ),
    .O(Rout2[1])
  );
  X_OPAD #(
    .LOC ( "PAD49" ))
  \Rout2<12>/PAD  (
    .PAD(Rout2[12])
  );
  X_OBUF #(
    .LOC ( "PAD49" ))
  Rout2_12_OBUF (
    .I(\Rout2<12>/O ),
    .O(Rout2[12])
  );
  X_OPAD #(
    .LOC ( "PAD63" ))
  \Rout1<5>/PAD  (
    .PAD(Rout1[5])
  );
  X_OBUF #(
    .LOC ( "PAD63" ))
  Rout1_5_OBUF (
    .I(\Rout1<5>/O ),
    .O(Rout1[5])
  );
  X_OPAD #(
    .LOC ( "PAD54" ))
  \Rout2<2>/PAD  (
    .PAD(Rout2[2])
  );
  X_OBUF #(
    .LOC ( "PAD54" ))
  Rout2_2_OBUF (
    .I(\Rout2<2>/O ),
    .O(Rout2[2])
  );
  X_OPAD #(
    .LOC ( "PAD35" ))
  \Rout2<13>/PAD  (
    .PAD(Rout2[13])
  );
  X_OBUF #(
    .LOC ( "PAD35" ))
  Rout2_13_OBUF (
    .I(\Rout2<13>/O ),
    .O(Rout2[13])
  );
  X_OPAD #(
    .LOC ( "PAD70" ))
  \Rout1<6>/PAD  (
    .PAD(Rout1[6])
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  Rout1_6_OBUF (
    .I(\Rout1<6>/O ),
    .O(Rout1[6])
  );
  X_OPAD #(
    .LOC ( "PAD53" ))
  \Rout2<3>/PAD  (
    .PAD(Rout2[3])
  );
  X_OBUF #(
    .LOC ( "PAD53" ))
  Rout2_3_OBUF (
    .I(\Rout2<3>/O ),
    .O(Rout2[3])
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \Rout2<14>/PAD  (
    .PAD(Rout2[14])
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  Rout2_14_OBUF (
    .I(\Rout2<14>/O ),
    .O(Rout2[14])
  );
  X_OPAD #(
    .LOC ( "PAD69" ))
  \Rout1<7>/PAD  (
    .PAD(Rout1[7])
  );
  X_OBUF #(
    .LOC ( "PAD69" ))
  Rout1_7_OBUF (
    .I(\Rout1<7>/O ),
    .O(Rout1[7])
  );
  X_OPAD #(
    .LOC ( "PAD38" ))
  \Rout2<4>/PAD  (
    .PAD(Rout2[4])
  );
  X_OBUF #(
    .LOC ( "PAD38" ))
  Rout2_4_OBUF (
    .I(\Rout2<4>/O ),
    .O(Rout2[4])
  );
  X_OPAD #(
    .LOC ( "PAD43" ))
  \Rout2<15>/PAD  (
    .PAD(Rout2[15])
  );
  X_OBUF #(
    .LOC ( "PAD43" ))
  Rout2_15_OBUF (
    .I(\Rout2<15>/O ),
    .O(Rout2[15])
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \Rout1<8>/PAD  (
    .PAD(Rout1[8])
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  Rout1_8_OBUF (
    .I(\Rout1<8>/O ),
    .O(Rout1[8])
  );
  X_OPAD #(
    .LOC ( "PAD48" ))
  \Rout2<5>/PAD  (
    .PAD(Rout2[5])
  );
  X_OBUF #(
    .LOC ( "PAD48" ))
  Rout2_5_OBUF (
    .I(\Rout2<5>/O ),
    .O(Rout2[5])
  );
  X_OPAD #(
    .LOC ( "PAD65" ))
  \Rout1<9>/PAD  (
    .PAD(Rout1[9])
  );
  X_OBUF #(
    .LOC ( "PAD65" ))
  Rout1_9_OBUF (
    .I(\Rout1<9>/O ),
    .O(Rout1[9])
  );
  X_OPAD #(
    .LOC ( "PAD45" ))
  \Rout2<6>/PAD  (
    .PAD(Rout2[6])
  );
  X_OBUF #(
    .LOC ( "PAD45" ))
  Rout2_6_OBUF (
    .I(\Rout2<6>/O ),
    .O(Rout2[6])
  );
  X_OPAD #(
    .LOC ( "PAD44" ))
  \Rout2<7>/PAD  (
    .PAD(Rout2[7])
  );
  X_OBUF #(
    .LOC ( "PAD44" ))
  Rout2_7_OBUF (
    .I(\Rout2<7>/O ),
    .O(Rout2[7])
  );
  X_OPAD #(
    .LOC ( "PAD34" ))
  \Rout2<8>/PAD  (
    .PAD(Rout2[8])
  );
  X_OBUF #(
    .LOC ( "PAD34" ))
  Rout2_8_OBUF (
    .I(\Rout2<8>/O ),
    .O(Rout2[8])
  );
  X_OPAD #(
    .LOC ( "PAD42" ))
  \Rout2<9>/PAD  (
    .PAD(Rout2[9])
  );
  X_OBUF #(
    .LOC ( "PAD42" ))
  Rout2_9_OBUF (
    .I(\Rout2<9>/O ),
    .O(Rout2[9])
  );
  X_IPAD #(
    .LOC ( "PAD9" ))
  \RW<0>/PAD  (
    .PAD(RW[0])
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  RW_0_IBUF (
    .I(RW[0]),
    .O(\RW<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD8" ))
  \rst/PAD  (
    .PAD(rst)
  );
  X_BUF #(
    .LOC ( "PAD8" ))
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
    .LOC ( "PAD24" ))
  \Rs<1>/IFF/IMUX  (
    .I(\Rs<1>/INBUF ),
    .O(Rs_1_IBUF_366)
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \Rs<0>/IFF/IMUX  (
    .I(\Rs<0>/INBUF ),
    .O(Rs_0_IBUF_365)
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \Rs<2>/IFF/IMUX  (
    .I(\Rs<2>/INBUF ),
    .O(Rs_2_IBUF_367)
  );
  X_BUF #(
    .LOC ( "PAD17" ))
  \Rs<3>/IFF/IMUX  (
    .I(\Rs<3>/INBUF ),
    .O(Rs_3_IBUF_368)
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  \Rt<0>/IFF/IMUX  (
    .I(\Rt<0>/INBUF ),
    .O(Rt_0_IBUF_370)
  );
  X_BUF #(
    .LOC ( "PAD14" ))
  \Rt<1>/IFF/IMUX  (
    .I(\Rt<1>/INBUF ),
    .O(Rt_1_IBUF_371)
  );
  X_BUF #(
    .LOC ( "IPAD13" ))
  \Rt<2>/IFF/IMUX  (
    .I(\Rt<2>/INBUF ),
    .O(Rt_2_IBUF_372)
  );
  X_BUF #(
    .LOC ( "PAD11" ))
  \Rt<3>/IFF/IMUX  (
    .I(\Rt<3>/INBUF ),
    .O(Rt_3_IBUF_373)
  );
  X_INV #(
    .LOC ( "PAD64" ))
  \Rout1<10>/OUTPUT/OTCLK1INV  (
    .I(Rout1_10_cmp_eq0000),
    .O(\Rout1<10>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD64" ),
    .INIT ( 1'b0 ))
  Rout1_10 (
    .I(\Rout1<10>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_10/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_10_479)
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \Rout1<10>/OUTPUT/OFF/OMUX  (
    .I(Rout1_10_479),
    .O(\Rout1<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \Rout1<10>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<10>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD71" ))
  \Rout1<11>/OUTPUT/OTCLK1INV  (
    .I(Rout1_11_cmp_eq0000),
    .O(\Rout1<11>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD71" ),
    .INIT ( 1'b0 ))
  Rout1_11 (
    .I(\Rout1<11>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_11/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_11_496)
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \Rout1<11>/OUTPUT/OFF/OMUX  (
    .I(Rout1_11_496),
    .O(\Rout1<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \Rout1<11>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<11>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD72" ))
  \Rout1<12>/OUTPUT/OTCLK2INV  (
    .I(Rout1_12_cmp_eq0000),
    .O(\Rout1<12>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD72" ),
    .INIT ( 1'b0 ))
  Rout1_12 (
    .I(\Rout1<12>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_12/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_12_513)
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \Rout1<12>/OUTPUT/OFF/OMUX  (
    .I(Rout1_12_513),
    .O(\Rout1<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \Rout1<12>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<12>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD61" ))
  \Rout1<13>/OUTPUT/OTCLK1INV  (
    .I(Rout1_13_cmp_eq0000),
    .O(\Rout1<13>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD61" ),
    .INIT ( 1'b0 ))
  Rout1_13 (
    .I(\Rout1<13>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_13/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_13_536)
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \Rout1<13>/OUTPUT/OFF/OMUX  (
    .I(Rout1_13_536),
    .O(\Rout1<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \Rout1<13>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<13>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD59" ))
  \Rout1<14>/OUTPUT/OTCLK2INV  (
    .I(Rout1_14_cmp_eq0000),
    .O(\Rout1<14>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD59" ),
    .INIT ( 1'b0 ))
  Rout1_14 (
    .I(\Rout1<14>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_14/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_14_553)
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \Rout1<14>/OUTPUT/OFF/OMUX  (
    .I(Rout1_14_553),
    .O(\Rout1<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \Rout1<14>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<14>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD58" ))
  \Rout1<15>/OUTPUT/OTCLK1INV  (
    .I(Rout1_15_cmp_eq0000),
    .O(\Rout1<15>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD58" ),
    .INIT ( 1'b0 ))
  Rout1_15 (
    .I(\Rout1<15>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_15/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_15_570)
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \Rout1<15>/OUTPUT/OFF/OMUX  (
    .I(Rout1_15_570),
    .O(\Rout1<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \Rout1<15>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<15>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \Rout1<0>/OUTPUT/OTCLK2INV  (
    .I(Rout1_0_not0001),
    .O(\Rout1<0>/OUTPUT/OTCLK2INV_581 )
  );
  X_LATCHE #(
    .LOC ( "PAD92" ),
    .INIT ( 1'b0 ))
  Rout1_0 (
    .I(\Rout1<0>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_0_587)
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \Rout1<0>/OUTPUT/OFF/OMUX  (
    .I(Rout1_0_587),
    .O(\Rout1<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \Rout1<0>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<0>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD75" ))
  \Rout1<1>/OUTPUT/OTCLK1INV  (
    .I(Rout1_1_cmp_eq0000),
    .O(\Rout1<1>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD75" ),
    .INIT ( 1'b0 ))
  Rout1_1 (
    .I(\Rout1<1>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_1_604)
  );
  X_BUF #(
    .LOC ( "PAD75" ))
  \Rout1<1>/OUTPUT/OFF/OMUX  (
    .I(Rout1_1_604),
    .O(\Rout1<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD75" ))
  \Rout1<1>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<1>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD76" ))
  \Rout1<2>/OUTPUT/OTCLK2INV  (
    .I(Rout1_2_cmp_eq0000),
    .O(\Rout1<2>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD76" ),
    .INIT ( 1'b0 ))
  Rout1_2 (
    .I(\Rout1<2>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_2_621)
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  \Rout1<2>/OUTPUT/OFF/OMUX  (
    .I(Rout1_2_621),
    .O(\Rout1<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  \Rout1<2>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<2>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD56" ))
  \Rout2<10>/OUTPUT/OTCLK2INV  (
    .I(Rout2_10_cmp_eq0000),
    .O(\Rout2<10>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD56" ),
    .INIT ( 1'b0 ))
  Rout2_10 (
    .I(\Rout2<10>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_10/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_10_638)
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \Rout2<10>/OUTPUT/OFF/OMUX  (
    .I(Rout2_10_638),
    .O(\Rout2<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \Rout2<10>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<10>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD91" ))
  \Rout1<3>/OUTPUT/OTCLK1INV  (
    .I(Rout1_3_cmp_eq0000),
    .O(\Rout1<3>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD91" ),
    .INIT ( 1'b0 ))
  Rout1_3 (
    .I(\Rout1<3>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_3_655)
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \Rout1<3>/OUTPUT/OFF/OMUX  (
    .I(Rout1_3_655),
    .O(\Rout1<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \Rout1<3>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<3>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD39" ))
  \Rout2<11>/OUTPUT/OTCLK1INV  (
    .I(Rout2_11_cmp_eq0000),
    .O(\Rout2<11>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD39" ),
    .INIT ( 1'b0 ))
  Rout2_11 (
    .I(\Rout2<11>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_11/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_11_672)
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \Rout2<11>/OUTPUT/OFF/OMUX  (
    .I(Rout2_11_672),
    .O(\Rout2<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD39" ))
  \Rout2<11>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<11>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \Rout2<0>/OUTPUT/OTCLK1INV  (
    .I(Rout2_0_not0001),
    .O(\Rout2<0>/OUTPUT/OTCLK1INV_683 )
  );
  X_LATCHE #(
    .LOC ( "PAD55" ),
    .INIT ( 1'b0 ))
  Rout2_0 (
    .I(\Rout2<0>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_0_689)
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \Rout2<0>/OUTPUT/OFF/OMUX  (
    .I(Rout2_0_689),
    .O(\Rout2<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \Rout2<0>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<0>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD62" ))
  \Rout1<4>/OUTPUT/OTCLK2INV  (
    .I(Rout1_4_cmp_eq0000),
    .O(\Rout1<4>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD62" ),
    .INIT ( 1'b0 ))
  Rout1_4 (
    .I(\Rout1<4>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_4_706)
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \Rout1<4>/OUTPUT/OFF/OMUX  (
    .I(Rout1_4_706),
    .O(\Rout1<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \Rout1<4>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<4>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD40" ))
  \Rout2<1>/OUTPUT/OTCLK2INV  (
    .I(Rout2_1_cmp_eq0000),
    .O(\Rout2<1>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD40" ),
    .INIT ( 1'b0 ))
  Rout2_1 (
    .I(\Rout2<1>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_1_723)
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \Rout2<1>/OUTPUT/OFF/OMUX  (
    .I(Rout2_1_723),
    .O(\Rout2<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \Rout2<1>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<1>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD49" ))
  \Rout2<12>/OUTPUT/OTCLK2INV  (
    .I(Rout2_12_cmp_eq0000),
    .O(\Rout2<12>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD49" ),
    .INIT ( 1'b0 ))
  Rout2_12 (
    .I(\Rout2<12>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_12/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_12_740)
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \Rout2<12>/OUTPUT/OFF/OMUX  (
    .I(Rout2_12_740),
    .O(\Rout2<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \Rout2<12>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<12>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD63" ))
  \Rout1<5>/OUTPUT/OTCLK1INV  (
    .I(Rout1_5_cmp_eq0000),
    .O(\Rout1<5>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD63" ),
    .INIT ( 1'b0 ))
  Rout1_5 (
    .I(\Rout1<5>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_5_757)
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \Rout1<5>/OUTPUT/OFF/OMUX  (
    .I(Rout1_5_757),
    .O(\Rout1<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \Rout1<5>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<5>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD54" ))
  \Rout2<2>/OUTPUT/OTCLK2INV  (
    .I(Rout2_2_cmp_eq0000),
    .O(\Rout2<2>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD54" ),
    .INIT ( 1'b0 ))
  Rout2_2 (
    .I(\Rout2<2>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_2_774)
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \Rout2<2>/OUTPUT/OFF/OMUX  (
    .I(Rout2_2_774),
    .O(\Rout2<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \Rout2<2>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<2>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD35" ))
  \Rout2<13>/OUTPUT/OTCLK2INV  (
    .I(Rout2_13_cmp_eq0000),
    .O(\Rout2<13>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD35" ),
    .INIT ( 1'b0 ))
  Rout2_13 (
    .I(\Rout2<13>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_13/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_13_791)
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \Rout2<13>/OUTPUT/OFF/OMUX  (
    .I(Rout2_13_791),
    .O(\Rout2<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \Rout2<13>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<13>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD70" ))
  \Rout1<6>/OUTPUT/OTCLK1INV  (
    .I(Rout1_6_cmp_eq0000),
    .O(\Rout1<6>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD70" ),
    .INIT ( 1'b0 ))
  Rout1_6 (
    .I(\Rout1<6>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_6/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_6_808)
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \Rout1<6>/OUTPUT/OFF/OMUX  (
    .I(Rout1_6_808),
    .O(\Rout1<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \Rout1<6>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<6>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD53" ))
  \Rout2<3>/OUTPUT/OTCLK1INV  (
    .I(Rout2_3_cmp_eq0000),
    .O(\Rout2<3>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD53" ),
    .INIT ( 1'b0 ))
  Rout2_3 (
    .I(\Rout2<3>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_3_825)
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \Rout2<3>/OUTPUT/OFF/OMUX  (
    .I(Rout2_3_825),
    .O(\Rout2<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \Rout2<3>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<3>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD37" ))
  \Rout2<14>/OUTPUT/OTCLK1INV  (
    .I(Rout2_14_cmp_eq0000),
    .O(\Rout2<14>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD37" ),
    .INIT ( 1'b0 ))
  Rout2_14 (
    .I(\Rout2<14>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_14/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_14_842)
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \Rout2<14>/OUTPUT/OFF/OMUX  (
    .I(Rout2_14_842),
    .O(\Rout2<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \Rout2<14>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<14>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD69" ))
  \Rout1<7>/OUTPUT/OTCLK2INV  (
    .I(Rout1_7_cmp_eq0000),
    .O(\Rout1<7>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD69" ),
    .INIT ( 1'b0 ))
  Rout1_7 (
    .I(\Rout1<7>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_7/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_7_859)
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<7>/OUTPUT/OFF/OMUX  (
    .I(Rout1_7_859),
    .O(\Rout1<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \Rout1<7>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<7>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD38" ))
  \Rout2<4>/OUTPUT/OTCLK2INV  (
    .I(Rout2_4_cmp_eq0000),
    .O(\Rout2<4>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD38" ),
    .INIT ( 1'b0 ))
  Rout2_4 (
    .I(\Rout2<4>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_4_876)
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \Rout2<4>/OUTPUT/OFF/OMUX  (
    .I(Rout2_4_876),
    .O(\Rout2<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD38" ))
  \Rout2<4>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<4>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD43" ))
  \Rout2<15>/OUTPUT/OTCLK2INV  (
    .I(Rout2_15_cmp_eq0000),
    .O(\Rout2<15>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD43" ),
    .INIT ( 1'b0 ))
  Rout2_15 (
    .I(\Rout2<15>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_15/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_15_893)
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \Rout2<15>/OUTPUT/OFF/OMUX  (
    .I(Rout2_15_893),
    .O(\Rout2<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD43" ))
  \Rout2<15>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<15>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD68" ))
  \Rout1<8>/OUTPUT/OTCLK1INV  (
    .I(Rout1_8_cmp_eq0000),
    .O(\Rout1<8>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD68" ),
    .INIT ( 1'b0 ))
  Rout1_8 (
    .I(\Rout1<8>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_8/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_8_910)
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout1<8>/OUTPUT/OFF/OMUX  (
    .I(Rout1_8_910),
    .O(\Rout1<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \Rout1<8>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<8>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD48" ))
  \Rout2<5>/OUTPUT/OTCLK1INV  (
    .I(Rout2_5_cmp_eq0000),
    .O(\Rout2<5>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD48" ),
    .INIT ( 1'b0 ))
  Rout2_5 (
    .I(\Rout2<5>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_5_927)
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \Rout2<5>/OUTPUT/OFF/OMUX  (
    .I(Rout2_5_927),
    .O(\Rout2<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \Rout2<5>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<5>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD65" ))
  \Rout1<9>/OUTPUT/OTCLK2INV  (
    .I(Rout1_9_cmp_eq0000),
    .O(\Rout1<9>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD65" ),
    .INIT ( 1'b0 ))
  Rout1_9 (
    .I(\Rout1<9>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout1_9/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout1_9_944)
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \Rout1<9>/OUTPUT/OFF/OMUX  (
    .I(Rout1_9_944),
    .O(\Rout1<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \Rout1<9>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout1<9>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD45" ))
  \Rout2<6>/OUTPUT/OTCLK2INV  (
    .I(Rout2_6_cmp_eq0000),
    .O(\Rout2<6>/OUTPUT/OTCLK2INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD45" ),
    .INIT ( 1'b0 ))
  Rout2_6 (
    .I(\Rout2<6>/OUTPUT/OFF/ODDRIN2_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_6/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_6_961)
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \Rout2<6>/OUTPUT/OFF/OMUX  (
    .I(Rout2_6_961),
    .O(\Rout2<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD45" ))
  \Rout2<6>/OUTPUT/OFF/O2_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<6>/OUTPUT/OFF/ODDRIN2_MUX )
  );
  X_INV #(
    .LOC ( "PAD44" ))
  \Rout2<7>/OUTPUT/OTCLK1INV  (
    .I(Rout2_7_cmp_eq0000),
    .O(\Rout2<7>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD44" ),
    .INIT ( 1'b0 ))
  Rout2_7 (
    .I(\Rout2<7>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_7/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_7_978)
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \Rout2<7>/OUTPUT/OFF/OMUX  (
    .I(Rout2_7_978),
    .O(\Rout2<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD44" ))
  \Rout2<7>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<7>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD34" ))
  \Rout2<8>/OUTPUT/OTCLK1INV  (
    .I(Rout2_8_cmp_eq0000),
    .O(\Rout2<8>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD34" ),
    .INIT ( 1'b0 ))
  Rout2_8 (
    .I(\Rout2<8>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_8/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_8_995)
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \Rout2<8>/OUTPUT/OFF/OMUX  (
    .I(Rout2_8_995),
    .O(\Rout2<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD34" ))
  \Rout2<8>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<8>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_INV #(
    .LOC ( "PAD42" ))
  \Rout2<9>/OUTPUT/OTCLK1INV  (
    .I(Rout2_9_cmp_eq0000),
    .O(\Rout2<9>/OUTPUT/OTCLK1INVNOT )
  );
  X_LATCHE #(
    .LOC ( "PAD42" ),
    .INIT ( 1'b0 ))
  Rout2_9 (
    .I(\Rout2<9>/OUTPUT/OFF/ODDRIN1_MUX ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_Rout2_9/CLK ),
    .SET(GND),
    .RST(GND),
    .O(Rout2_9_1012)
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \Rout2<9>/OUTPUT/OFF/OMUX  (
    .I(Rout2_9_1012),
    .O(\Rout2<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD42" ))
  \Rout2<9>/OUTPUT/OFF/O1_DDRMUX  (
    .I(\R16b1/Register1/qq_375 ),
    .O(\Rout2<9>/OUTPUT/OFF/ODDRIN1_MUX )
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  \RW<0>/IFF/IDDRIN_MUX  (
    .I(\RW<0>/INBUF ),
    .O(\RW<0>/IFF/IDDRIN_MUX_1027 )
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  \RW<0>/IFF/ICLK1INV  (
    .I(clk_BUFGP),
    .O(\RW<0>/IFF/ICLK1INV_1031 )
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  \RW<0>/IFF/ICEINV  (
    .I(\wr/INBUF ),
    .O(\RW<0>/IFF/ICEINV_1029 )
  );
  X_FF #(
    .LOC ( "PAD9" ),
    .INIT ( 1'b0 ))
  \R16b1/Register1/qq  (
    .I(\RW<0>/IFF/IDDRIN_MUX_1027 ),
    .CE(\RW<0>/IFF/ICEINV_1029 ),
    .CLK(\RW<0>/IFF/ICLK1INV_1031 ),
    .SET(GND),
    .RST(\RW<0>/IFF/IFF1/RSTAND_1036 ),
    .O(\R16b1/Register1/qq_375 )
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  \RW<0>/IFF/IFF1/RSTAND  (
    .I(\rst/INBUF ),
    .O(\RW<0>/IFF/IFF1/RSTAND_1036 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X28Y19" ))
  Rout2_15_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_1_IBUF_371),
    .ADR2(Rt_0_IBUF_370),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_15_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X28Y19" ))
  Rout2_0_not00011 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_1_IBUF_371),
    .ADR2(Rt_0_IBUF_370),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_0_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X18Y12" ))
  Rout1_14_cmp_eq00001 (
    .ADR0(Rs_1_IBUF_366),
    .ADR1(Rs_0_IBUF_365),
    .ADR2(Rs_2_IBUF_367),
    .ADR3(Rs_3_IBUF_368),
    .O(Rout1_14_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X18Y12" ))
  Rout1_0_not00011 (
    .ADR0(Rs_1_IBUF_366),
    .ADR1(Rs_2_IBUF_367),
    .ADR2(Rs_0_IBUF_365),
    .ADR3(Rs_3_IBUF_368),
    .O(Rout1_0_not0001)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X17Y11" ))
  Rout1_6_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_0_IBUF_365),
    .O(Rout1_6_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X17Y11" ))
  Rout1_10_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_0_IBUF_365),
    .O(Rout1_10_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X28Y11" ))
  Rout2_2_cmp_eq00001 (
    .ADR0(Rt_2_IBUF_372),
    .ADR1(Rt_1_IBUF_371),
    .ADR2(Rt_3_IBUF_373),
    .ADR3(Rt_0_IBUF_370),
    .O(Rout2_2_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X28Y11" ))
  Rout2_10_cmp_eq00001 (
    .ADR0(Rt_2_IBUF_372),
    .ADR1(Rt_1_IBUF_371),
    .ADR2(Rt_3_IBUF_373),
    .ADR3(Rt_0_IBUF_370),
    .O(Rout2_10_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X17Y9" ))
  Rout1_8_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_0_IBUF_365),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_1_IBUF_366),
    .O(Rout1_8_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X17Y9" ))
  Rout1_11_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_0_IBUF_365),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_1_IBUF_366),
    .O(Rout1_11_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X30Y23" ))
  Rout2_4_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_4_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X30Y23" ))
  Rout2_11_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_11_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X30Y18" ))
  Rout2_6_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_1_IBUF_371),
    .ADR2(Rt_0_IBUF_370),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_6_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X30Y18" ))
  Rout2_12_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_1_IBUF_371),
    .ADR2(Rt_0_IBUF_370),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_12_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0002 ),
    .LOC ( "SLICE_X15Y10" ))
  Rout1_1_cmp_eq00001 (
    .ADR0(Rs_0_IBUF_365),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_2_IBUF_367),
    .O(Rout1_1_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X15Y10" ))
  Rout1_12_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_0_IBUF_365),
    .O(Rout1_12_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X30Y31" ))
  Rout2_8_cmp_eq00001 (
    .ADR0(Rt_0_IBUF_370),
    .ADR1(Rt_2_IBUF_372),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_3_IBUF_373),
    .O(Rout2_8_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X30Y31" ))
  Rout2_13_cmp_eq00001 (
    .ADR0(Rt_0_IBUF_370),
    .ADR1(Rt_2_IBUF_372),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_3_IBUF_373),
    .O(Rout2_13_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X18Y14" ))
  Rout1_3_cmp_eq00001 (
    .ADR0(Rs_0_IBUF_365),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_2_IBUF_367),
    .ADR3(Rs_3_IBUF_368),
    .O(Rout1_3_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X18Y14" ))
  Rout1_13_cmp_eq00001 (
    .ADR0(Rs_1_IBUF_366),
    .ADR1(Rs_2_IBUF_367),
    .ADR2(Rs_0_IBUF_365),
    .ADR3(Rs_3_IBUF_368),
    .O(Rout1_13_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X30Y25" ))
  Rout2_14_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_14_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X30Y25" ))
  Rout2_1_cmp_eq00001 (
    .ADR0(Rt_3_IBUF_373),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_2_IBUF_372),
    .O(Rout2_1_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X21Y10" ))
  Rout1_5_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_0_IBUF_365),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_1_IBUF_366),
    .O(Rout1_5_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X21Y10" ))
  Rout1_15_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_0_IBUF_365),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_1_IBUF_366),
    .O(Rout1_15_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X15Y11" ))
  Rout1_7_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_0_IBUF_365),
    .O(Rout1_7_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X15Y11" ))
  Rout1_2_cmp_eq00001 (
    .ADR0(Rs_2_IBUF_367),
    .ADR1(Rs_1_IBUF_366),
    .ADR2(Rs_3_IBUF_368),
    .ADR3(Rs_0_IBUF_365),
    .O(Rout1_2_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X29Y15" ))
  Rout2_3_cmp_eq00001 (
    .ADR0(Rt_2_IBUF_372),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_3_IBUF_373),
    .O(Rout2_3_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X29Y15" ))
  Rout2_5_cmp_eq00001 (
    .ADR0(Rt_2_IBUF_372),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_3_IBUF_373),
    .O(Rout2_5_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X21Y9" ))
  Rout1_9_cmp_eq00001 (
    .ADR0(Rs_3_IBUF_368),
    .ADR1(Rs_2_IBUF_367),
    .ADR2(Rs_0_IBUF_365),
    .ADR3(Rs_1_IBUF_366),
    .O(Rout1_9_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ),
    .LOC ( "SLICE_X21Y9" ))
  Rout1_4_cmp_eq00001 (
    .ADR0(Rs_3_IBUF_368),
    .ADR1(Rs_2_IBUF_367),
    .ADR2(Rs_0_IBUF_365),
    .ADR3(Rs_1_IBUF_366),
    .O(Rout1_4_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X29Y17" ))
  Rout2_7_cmp_eq00001 (
    .ADR0(Rt_2_IBUF_372),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_3_IBUF_373),
    .O(Rout2_7_cmp_eq0000)
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X29Y17" ))
  Rout2_9_cmp_eq00001 (
    .ADR0(Rt_2_IBUF_372),
    .ADR1(Rt_0_IBUF_370),
    .ADR2(Rt_1_IBUF_371),
    .ADR3(Rt_3_IBUF_373),
    .O(Rout2_9_cmp_eq0000)
  );
  X_ZERO   NlwBlock_Register_File_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_Register_File_VCC (
    .O(VCC)
  );
  X_INV   \NlwInverterBlock_Rout1_10/CLK  (
    .I(\Rout1<10>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_10/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_11/CLK  (
    .I(\Rout1<11>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_11/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_12/CLK  (
    .I(\Rout1<12>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout1_12/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_13/CLK  (
    .I(\Rout1<13>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_13/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_14/CLK  (
    .I(\Rout1<14>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout1_14/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_15/CLK  (
    .I(\Rout1<15>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_15/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_0/CLK  (
    .I(\Rout1<0>/OUTPUT/OTCLK2INV_581 ),
    .O(\NlwInverterSignal_Rout1_0/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_1/CLK  (
    .I(\Rout1<1>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_1/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_2/CLK  (
    .I(\Rout1<2>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout1_2/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_10/CLK  (
    .I(\Rout2<10>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_10/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_3/CLK  (
    .I(\Rout1<3>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_3/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_11/CLK  (
    .I(\Rout2<11>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_11/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_0/CLK  (
    .I(\Rout2<0>/OUTPUT/OTCLK1INV_683 ),
    .O(\NlwInverterSignal_Rout2_0/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_4/CLK  (
    .I(\Rout1<4>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout1_4/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_1/CLK  (
    .I(\Rout2<1>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_1/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_12/CLK  (
    .I(\Rout2<12>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_12/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_5/CLK  (
    .I(\Rout1<5>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_5/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_2/CLK  (
    .I(\Rout2<2>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_2/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_13/CLK  (
    .I(\Rout2<13>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_13/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_6/CLK  (
    .I(\Rout1<6>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_6/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_3/CLK  (
    .I(\Rout2<3>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_3/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_14/CLK  (
    .I(\Rout2<14>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_14/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_7/CLK  (
    .I(\Rout1<7>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout1_7/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_4/CLK  (
    .I(\Rout2<4>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_4/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_15/CLK  (
    .I(\Rout2<15>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_15/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_8/CLK  (
    .I(\Rout1<8>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout1_8/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_5/CLK  (
    .I(\Rout2<5>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_5/CLK )
  );
  X_INV   \NlwInverterBlock_Rout1_9/CLK  (
    .I(\Rout1<9>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout1_9/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_6/CLK  (
    .I(\Rout2<6>/OUTPUT/OTCLK2INVNOT ),
    .O(\NlwInverterSignal_Rout2_6/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_7/CLK  (
    .I(\Rout2<7>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_7/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_8/CLK  (
    .I(\Rout2<8>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_8/CLK )
  );
  X_INV   \NlwInverterBlock_Rout2_9/CLK  (
    .I(\Rout2<9>/OUTPUT/OTCLK1INVNOT ),
    .O(\NlwInverterSignal_Rout2_9/CLK )
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

