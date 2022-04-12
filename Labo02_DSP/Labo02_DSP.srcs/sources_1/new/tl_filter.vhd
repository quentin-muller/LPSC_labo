----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2022 19:17:33
-- Design Name: 
-- Module Name: tl_filter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tl_filter is
    Port ( ClkSys100MhzxCLK : in STD_LOGIC;
           ResetxRI : in STD_LOGIC;
           LedxDO   : out STD_LOGIC_VECTOR(7 downto 0);
        
           SC_SDOUT : OUT STD_LOGIC;
           SC_SCLK  : OUT STD_LOGIC; 
           SC_MCLK  : OUT STD_LOGIC;
           SC_LRCK  : OUT STD_LOGIC;
           
           SDATA    : IN STD_LOGIC;
           MIC_SCLK : OUT STD_LOGIC;
           MIC_nCS  : OUT STD_LOGIC
           --MIC_DONE : OUT STD_LOGIC
           );
end tl_filter;
architecture Behavioral of tl_filter is

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
signal done_s : std_logic;
begin
TP2_audioFIR_i: component TP2_audioFIR
     port map (
      Led_0(7 downto 0) => LedxDO(7 downto 0),
      MIC_DONE => done_s,
      MIC_SCLK => MIC_SCLK,
      MIC_nCS => MIC_nCS,
      SC_LRCK => SC_LRCK,
      SC_MCLK => SC_MCLK,
      SC_SCLK => SC_SCLK,
      SC_SDOUT => SC_SDOUT,
      SDATA => SDATA,
      clk => ClkSys100MhzxCLK,
      reset => ResetxRI
    ); 
end Behavioral;
