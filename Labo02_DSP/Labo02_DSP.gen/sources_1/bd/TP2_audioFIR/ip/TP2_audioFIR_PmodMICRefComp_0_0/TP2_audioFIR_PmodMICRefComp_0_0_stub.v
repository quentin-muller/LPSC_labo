// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 29 18:32:50 2022
// Host        : Surface-2-Quent running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TP2_audioFIR_PmodMICRefComp_0_0 -prefix
//               TP2_audioFIR_PmodMICRefComp_0_0_ TP2_audioFIR_PmodMICRefComp_0_0_stub.v
// Design      : TP2_audioFIR_PmodMICRefComp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "PmodMICRefComp,Vivado 2021.2" *)
module TP2_audioFIR_PmodMICRefComp_0_0(CLK, RST, SDATA, SCLK, nCS, DATA, START, DONE)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,SDATA,SCLK,nCS,DATA[11:0],START,DONE" */;
  input CLK;
  input RST;
  input SDATA;
  output SCLK;
  output nCS;
  output [11:0]DATA;
  input START;
  output DONE;
endmodule
