// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Mar 29 18:10:57 2022
// Host        : Surface-2-Quent running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TP2_audioFIR_Speakerctrl_0_0 -prefix
//               TP2_audioFIR_Speakerctrl_0_0_ Speakerctrl_0_stub.v
// Design      : Speakerctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Speakerctrl,Vivado 2021.2" *)
module TP2_audioFIR_Speakerctrl_0_0(clk, rst, Led, audio_in, done, SDOUT, SCLK, MCLK, LRCK)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,Led[7:0],audio_in[15:0],done,SDOUT,SCLK,MCLK,LRCK" */;
  input clk;
  input rst;
  output [7:0]Led;
  input [15:0]audio_in;
  output done;
  output SDOUT;
  output SCLK;
  output MCLK;
  output LRCK;
endmodule
