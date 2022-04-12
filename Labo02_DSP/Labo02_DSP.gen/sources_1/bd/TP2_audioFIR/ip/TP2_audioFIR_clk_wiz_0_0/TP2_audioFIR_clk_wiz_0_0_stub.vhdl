-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Mar 29 18:33:00 2022
-- Host        : Surface-2-Quent running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/quent/Documents/HES-SO__Local/LPSC_labo/Labo02_DSP/Labo02_DSP.gen/sources_1/bd/TP2_audioFIR/ip/TP2_audioFIR_clk_wiz_0_0/TP2_audioFIR_clk_wiz_0_0_stub.vhdl
-- Design      : TP2_audioFIR_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TP2_audioFIR_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end TP2_audioFIR_clk_wiz_0_0;

architecture stub of TP2_audioFIR_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
