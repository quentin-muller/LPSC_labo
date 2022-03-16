----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.03.2022 14:27:57
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

--library work;
--use work.package_vhdl.all;

--library  xil_defaultlib;


entity top_level is
    Port ( ClkSys100MhzxCI : in STD_LOGIC;
           LedxDO : out STD_LOGIC_VECTOR (7 downto 0);
           BtnDxSI : in STD_LOGIC;
           ResetxRI : in STD_LOGIC;
           SwitchxDI : in STD_LOGIC_VECTOR (7 downto 0));
end top_level;

architecture Behavioral of top_level is

component memory is
Port (CLK : in std_logic;
      WE  : in std_logic;
      A   : in STD_LOGIC_VECTOR (7 downto 0);
      DI  : in STD_LOGIC_VECTOR (7 downto 0);
      DO  : out STD_LOGIC_VECTOR (7 downto 0));
end component;
--for all : memory use entity work.memory(Behavioral);


component edge_detector is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_i : in STD_LOGIC;
           data_o : out std_logic);
end component ;
--for all : edge_detector use entity work.edge_detector(Behavioral);

COMPONENT vio_0
  PORT (
    clk : IN STD_LOGIC;
    probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

signal data_s      : std_logic;
signal address,n_address     : std_logic_vector(7 downto 0);
signal memdata_i   : std_logic_vector(7 downto 0);
signal memdata_o   : std_logic_vector(7 downto 0);
signal writeEnable : std_logic;
signal probeIN_s   : std_logic;
signal probeOUT_s  : std_logic;

type eState is (INIT, ADD, DATA);

signal nwr_Rd : std_logic;
signal state, n_state : eState;

begin

--mem_inst : entity work.memory
mem_inst : memory
port map (CLK => ClkSys100MhzxCI,
          WE  => writeEnable,
          A   => address,
          DI  => memdata_i,
          DO  => memdata_o);

--edge_detect_inst : entity work.edge_detector
edge_detect_inst : edge_detector
port map ( clk => ClkSys100MhzxCI,
           rst => ResetxRI ,
           data_i => BtnDxSI,
           data_o => data_s );

virtual_BtnLed : vio_0
  PORT MAP (
    clk => ClkSys100MhzxCI,
    probe_in0(0) => probeIN_s,
    probe_out0(0) => probeOUT_s);

-- Process mode read and write
process(probeOUT_s)
begin
    if probeOUT_s = '0' then
        nwr_Rd <= '0';
    else
        nwr_Rd <= '1';
    end if;
end process;

-- Process synchrone de transistion de la machine d'état
process(ClkSys100MhzxCI, ResetxRI)
begin
    if ResetxRI = '1' then
        state <= INIT;
        address <= (others => '0');
    elsif rising_edge(ClkSys100MhzxCI) then
        state <= n_state;
        address <= n_address;
    end if;
end process;

-- Process de la machine d'état write
p1: process(state, data_s, SwitchxDI, nwr_Rd, memdata_o)
begin
-- valeurs par défaut (process asynchrone)
    writeEnable <= '0';
    n_address <= address;
    n_state <= state;
    memdata_i <= (others => '0');
    
    if nwr_Rd = '0' then
        LedxDO <= SwitchxDI;
        case state is
            when INIT=>
                n_state<=ADD;
            when ADD=>
                writeEnable <= '0';
                n_address <= SwitchxDI;
                if data_s='1' then
                    n_state<=DATA;
                end if;
            when DATA=>
                memdata_i <= SwitchxDI;
                if data_s='1' then
                    writeEnable <= '1';
                    n_state<=ADD;
                end if;
        end case;
    else
        n_address <= SwitchxDI;
        LedxDO <= memdata_o;
    end if;
end process;

end Behavioral;
