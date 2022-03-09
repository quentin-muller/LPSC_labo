----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2022 17:58:35
-- Design Name: 
-- Module Name: top_level - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

library work;
use work.package_vhdl.all;
use work.memory.all;
use work.edge_detector.all;

entity top_level is
    Port ( LedxDO : out STD_LOGIC_VECTOR (7 downto 0);
           BtnDxSI : in STD_LOGIC;
           ResetxRI : in STD_LOGIC;
           SwitchxDI : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC);
end top_level;

architecture Behavioral of top_level is

component memory is
Port (CLK : in std_logic;
      WE  : in std_logic;
      A   : in std_logic_vector(5 downto 0);
      DI  : in std_logic_vector(15 downto 0);
      DO  : out std_logic_vector(15 downto 0));
end component;
for all : memory use entity work.memory(Behavioral);


component edge_detector is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_i : in STD_LOGIC;
           data_o : out std_logic);
end component ;
for all : edge_detector use entity work.edge_detector(Behavioral);

signal data_s : std_logic;
signal address : std_logic_vector(7 downto 0);
signal memdata_i : std_logic_vector(7 downto 0);
signal memdata_o : std_logic_vector(7 downto 0);
signal writeEnable : std_logic;

begin

mem_inst : memory
port map (CLK => clk,
          WE  => writeEnable,
          A   => address,
          DI  => memdata_i,
          DO  => memdata_o);

edge_detect_inst : edge_detector
port map ( clk => clk,
           rst => ResetxRI ,
           data_i => BtnDxSI,
           data_o => data_s );


end Behavioral;
