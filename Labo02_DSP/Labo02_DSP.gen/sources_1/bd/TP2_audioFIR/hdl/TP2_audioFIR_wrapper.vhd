--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Tue Apr  5 19:25:30 2022
--Host        : Surface-2-Quent running 64-bit major release  (build 9200)
--Command     : generate_target TP2_audioFIR_wrapper.bd
--Design      : TP2_audioFIR_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TP2_audioFIR_wrapper is
  port (
    Led_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MIC_DONE : out STD_LOGIC;
    MIC_SCLK : out STD_LOGIC;
    MIC_nCS : out STD_LOGIC;
    SC_LRCK : out STD_LOGIC;
    SC_MCLK : out STD_LOGIC;
    SC_SCLK : out STD_LOGIC;
    SC_SDOUT : out STD_LOGIC;
    SDATA : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end TP2_audioFIR_wrapper;

architecture STRUCTURE of TP2_audioFIR_wrapper is
  component TP2_audioFIR is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    Led_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SC_SDOUT : out STD_LOGIC;
    SC_SCLK : out STD_LOGIC;
    SC_MCLK : out STD_LOGIC;
    SC_LRCK : out STD_LOGIC;
    MIC_SCLK : out STD_LOGIC;
    MIC_nCS : out STD_LOGIC;
    MIC_DONE : out STD_LOGIC;
    SDATA : in STD_LOGIC
  );
  end component TP2_audioFIR;
begin
TP2_audioFIR_i: component TP2_audioFIR
     port map (
      Led_0(7 downto 0) => Led_0(7 downto 0),
      MIC_DONE => MIC_DONE,
      MIC_SCLK => MIC_SCLK,
      MIC_nCS => MIC_nCS,
      SC_LRCK => SC_LRCK,
      SC_MCLK => SC_MCLK,
      SC_SCLK => SC_SCLK,
      SC_SDOUT => SC_SDOUT,
      SDATA => SDATA,
      clk => clk,
      reset => reset
    );
end STRUCTURE;
