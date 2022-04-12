-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Mar 29 18:10:57 2022
-- Host        : Surface-2-Quent running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top TP2_audioFIR_Speakerctrl_0_0 -prefix
--               TP2_audioFIR_Speakerctrl_0_0_ Speakerctrl_0_stub.vhdl
-- Design      : Speakerctrl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TP2_audioFIR_Speakerctrl_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    audio_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    SDOUT : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    LRCK : out STD_LOGIC
  );

end TP2_audioFIR_Speakerctrl_0_0;

architecture stub of TP2_audioFIR_Speakerctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,Led[7:0],audio_in[15:0],done,SDOUT,SCLK,MCLK,LRCK";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Speakerctrl,Vivado 2021.2";
begin
end;
