----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2022 18:23:54
-- Design Name: 
-- Module Name: edge_detector - Behavioral
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
Library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity edge_detector is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_i : in STD_LOGIC;
           data_o : out std_logic);
end edge_detector;

architecture Behavioral of edge_detector is
signal data_s : std_logic;
signal dataOut_s : std_logic;
begin

FF_1 : FDRE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => data_s,   -- Data output
      C => clk,      -- Clock input
      CE => '1',      -- Clock enable input
      R => rst,      -- Synchronous reset input
      D => data_i    -- Data input
   );

FF_2 : FDRE
   generic map (
      INIT => '0') -- Initial value of register ('0' or '1')  
   port map (
      Q => dataOut_s,   -- Data output
      C => clk,      -- Clock input
      CE => '1',      -- Clock enable input
      R => rst,      -- Synchronous reset input
      D => data_s    -- Data input
   );

data_o <= data_s and not(dataOut_s);
end Behavioral;
