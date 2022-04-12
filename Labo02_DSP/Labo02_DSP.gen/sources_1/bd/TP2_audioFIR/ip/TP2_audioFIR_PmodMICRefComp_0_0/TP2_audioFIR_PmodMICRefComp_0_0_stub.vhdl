-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Mar 29 18:32:50 2022
-- Host        : Surface-2-Quent running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top TP2_audioFIR_PmodMICRefComp_0_0 -prefix
--               TP2_audioFIR_PmodMICRefComp_0_0_ TP2_audioFIR_PmodMICRefComp_0_0_stub.vhdl
-- Design      : TP2_audioFIR_PmodMICRefComp_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TP2_audioFIR_PmodMICRefComp_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    SDATA : in STD_LOGIC;
    SCLK : out STD_LOGIC;
    nCS : out STD_LOGIC;
    DATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    START : in STD_LOGIC;
    DONE : out STD_LOGIC
  );

end TP2_audioFIR_PmodMICRefComp_0_0;

architecture stub of TP2_audioFIR_PmodMICRefComp_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,SDATA,SCLK,nCS,DATA[11:0],START,DONE";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "PmodMICRefComp,Vivado 2021.2";
begin
end;
