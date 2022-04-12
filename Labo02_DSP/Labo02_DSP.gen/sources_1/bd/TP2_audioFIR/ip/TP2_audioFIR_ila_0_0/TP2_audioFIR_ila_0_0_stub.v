// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 29 18:37:58 2022
// Host        : Surface-2-Quent running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/quent/Documents/HES-SO__Local/LPSC_labo/Labo02_DSP/Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ip/TP2_audioFIR_ila_0_0/TP2_audioFIR_ila_0_0_stub.v
// Design      : TP2_audioFIR_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2021.2" *)
module TP2_audioFIR_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[0:0]" */;
  input clk;
  input [15:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
endmodule
