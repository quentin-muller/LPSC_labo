library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;


entity Speakerctrl is
    port (clk      : in  std_logic;
          rst      : in  std_logic;
          Led      : out std_logic_vector (7 downto 0);
          audio_in : in  std_logic_vector(15 downto 0);
          done     : out std_logic;
          SDOUT    : out std_logic;
          SCLK     : out std_logic;
          MCLK     : out std_logic;
          LRCK     : out std_logic);
end Speakerctrl;

architecture Behavioral of Speakerctrl is

    signal div_cnt        : unsigned(10 downto 0);          -- 50 MHZ / 8K
    signal shift_reg_load : std_logic;
    signal shift_reg_en   : std_logic;
    signal shift_reg      : std_logic_vector(15 downto 0);  -- 50 MHZ / 8K

begin

------------------------------------
---------- serial transmission -----
------------------------------------

-- generate LRCK and MCLK

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                div_cnt <= (others => '0');
            else
                div_cnt <= div_cnt + 1;
            end if;
        end if;
    end process;

    MCLK <= div_cnt(4);                 -- 50MHz / 16
    LRCK <= div_cnt(10);                -- 50MHz / 1024

--  shift_reg_load <= '1' when div_cnt(9 downto 0) = 0
    shift_reg_load <= '1' when div_cnt(9 downto 0) = "0001000000"  -- selon datasheet...
--       shift_reg_load <= '1' when div_cnt(10 downto 0) = "00001000000" -- selon datasheet... only one channel

else '0';

    done         <= shift_reg_load;
    shift_reg_en <= '1' when div_cnt(5 downto 0) = 0
                    else '0';
    SCLK <= div_cnt(5);

    SDOUT <= shift_reg(15);

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                shift_reg <= (others => '0');
            elsif shift_reg_load = '1' then
                shift_reg <= audio_in;
            elsif shift_reg_en = '1' then
                shift_reg <= shift_reg(14 downto 0) & '0';
            end if;
        end if;
    end process;

    Led <= audio_in(15 downto 8);

end Behavioral;
