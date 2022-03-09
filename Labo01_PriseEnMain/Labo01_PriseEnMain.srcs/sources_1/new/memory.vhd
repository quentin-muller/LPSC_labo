----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2022 18:07:06
-- Design Name: 
-- Module Name: memory - Behavioral
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

entity memory is
    Port ( CLK : in std_logic;
          WE  : in std_logic;
          A   : in std_logic_vector(7 downto 0);
          DI  : in std_logic_vector(7 downto 0);
          DO  : out std_logic_vector(7 downto 0));
end memory;
architecture Behavioral of memory is
    type ram_type is array (63 downto 0) of std_logic_vector (7 downto 0);
    signal RAM : ram_type;
begin
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (WE = '1') then
                RAM(to_integer(unsigned(A))) <= DI;
            end if;
        end if;
    end process;

    DO <= RAM(to_integer(unsigned(A)));

end Behavioral;
