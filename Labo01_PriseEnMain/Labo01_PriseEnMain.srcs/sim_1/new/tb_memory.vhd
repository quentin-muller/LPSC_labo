----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2022 19:23:21
-- Design Name: 
-- Module Name: tb_memory - Behavioral
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


entity tb_memory is
end tb_memory;

architecture Behavioral of tb_memory is

constant CLK_PERIOD: time := 10ns;

component  memory is
    Port ( CLK : in std_logic;
          WE  : in std_logic;
          A   : in std_logic_vector(7 downto 0);
          DI  : in std_logic_vector(7 downto 0);
          DO  : out std_logic_vector(7 downto 0));
end component ;

signal clk : std_logic := '0';
signal we : std_logic := '1';
signal A : std_logic_vector (7 downto 0);
signal data_sti : std_logic_vector (7 downto 0);
signal data_obs : std_logic_vector (7 downto 0);

begin
clk <= not clk after (CLK_PERIOD / 2);

mem_inst : entity work.memory 
port map (CLK => clk,
          WE  => we,
          A   => A,
          DI  => data_sti ,
          DO  => data_obs);


p1 : process is 
begin
--TODO
wait for 10ns;
A <= "00000000";
data_sti <= "10101010";
we <= '1';
wait for CLK_PERIOD;
we <= '0';
data_sti <= "00000000";

wait for 20ns;
A <= "00000001";
data_sti <= "00000001";
we <= '1';
wait for CLK_PERIOD;
we <= '0';

wait for 20ns;
A <= "00000010";
data_sti <= "00001111";
we <= '1';
wait for CLK_PERIOD;
we <= '0';

wait for 20ns;
A <= "00000000";
wait for 20ns;
A <= "00000001";
wait for 20ns;
A <= "00000010";

wait;
end process p1;
end Behavioral;
