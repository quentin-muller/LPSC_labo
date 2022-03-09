----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2022 18:44:58
-- Design Name: 
-- Module Name: tb_edgeDetector - Behavioral
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

entity tb_edgeDetector is
end tb_edgeDetector;

architecture Behavioral of tb_edgeDetector is

constant CLK_PERIOD: time := 10ns;

component  edge_detector is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_i : in STD_LOGIC;
           data_o : out std_logic);
end component ;

signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal sti : std_logic := '0';
signal obs : std_logic := '0';

begin

clk <= not clk after (CLK_PERIOD / 2);

edge_inst : entity work.edge_detector 
port map(
clk => clk,
rst => rst,
data_i => sti,
data_o => obs);


p1 : process is 
begin
rst <= '0';
wait for 10ns;
sti <= '1';
wait for 2*CLK_PERIOD ;
sti <= '0';
wait for 20ns;
sti <= '1';
wait for 2*CLK_PERIOD ;
sti <= '0';
wait;

end process p1;

end Behavioral;
