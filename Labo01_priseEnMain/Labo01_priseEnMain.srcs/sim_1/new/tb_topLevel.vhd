----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2022 10:22:11
-- Design Name: 
-- Module Name: tb_topLevel - Behavioral
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


entity tb_topLevel is
end tb_topLevel;

architecture Behavioral of tb_topLevel is

constant CLK_PERIOD: time := 10ns;

component top_level is
    Port ( clk : in STD_LOGIC;
           LedxDO : out STD_LOGIC_VECTOR (7 downto 0);
           BtnDxSI : in STD_LOGIC;
           ResetxRI : in STD_LOGIC;
           SwitchxDI : in STD_LOGIC_VECTOR (7 downto 0));
end component;

--signal
signal clk     : std_logic := '0';
signal rst_sti : std_logic := '0';
signal btn_sti : std_logic := '0';
signal sw_sti  : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
signal led_obs : STD_LOGIC_VECTOR (7 downto 0);

begin
clk <= not clk after (CLK_PERIOD / 2);

tl_inst : entity work.top_level
port map ( clk       => clk,
           LedxDO    => led_obs,
           BtnDxSI   => btn_sti,
           ResetxRI  => rst_sti,
           SwitchxDI => sw_sti);

p1 : process is 
begin
--TODO
rst_sti <= '1';
wait for 10ns;
rst_sti <= '0';
wait for 10ns;

sw_sti <= "00000001";
wait for CLK_PERIOD;
btn_sti <= '1';
wait for CLK_PERIOD;
btn_sti <= '0';
wait for CLK_PERIOD/2;

sw_sti <= "10101010";
wait for CLK_PERIOD;
btn_sti <= '1';
wait for CLK_PERIOD;
btn_sti <= '0';
wait for CLK_PERIOD/2;

wait;
end process p1;

end Behavioral;
