-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Mar 29 18:32:50 2022
-- Host        : Surface-2-Quent running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TP2_audioFIR_PmodMICRefComp_0_0 -prefix
--               TP2_audioFIR_PmodMICRefComp_0_0_ TP2_audioFIR_PmodMICRefComp_0_0_sim_netlist.vhdl
-- Design      : TP2_audioFIR_PmodMICRefComp_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TP2_audioFIR_PmodMICRefComp_0_0_PmodMICRefComp is
  port (
    \FSM_onehot_current_state_reg[0]_0\ : out STD_LOGIC;
    DATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    SCLK : out STD_LOGIC;
    nCS : out STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    SDATA : in STD_LOGIC;
    START : in STD_LOGIC
  );
end TP2_audioFIR_PmodMICRefComp_0_0_PmodMICRefComp;

architecture STRUCTURE of TP2_audioFIR_PmodMICRefComp_0_0_PmodMICRefComp is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[0]_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^sclk\ : STD_LOGIC;
  signal clk_counter_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clk_en__1\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal shiftCounter : STD_LOGIC;
  signal \shiftCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal shiftCounter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal started_ok : STD_LOGIC;
  signal synch_START : STD_LOGIC;
  signal synch_START_i_1_n_0 : STD_LOGIC;
  signal temp : STD_LOGIC;
  signal \temp_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[10]\ : STD_LOGIC;
  signal \temp_reg_n_0_[11]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[0]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[0]_i_5\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "shiftin:0010,syncdata:0100,idle:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "shiftin:0010,syncdata:0100,idle:0001,iSTATE:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "shiftin:0010,syncdata:0100,idle:0001,iSTATE:1000";
  attribute SOFT_HLUTNM of \clk_counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of nCS_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shiftCounter[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shiftCounter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shiftCounter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shiftCounter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of synch_START_i_1 : label is "soft_lutpair2";
begin
  \FSM_onehot_current_state_reg[0]_0\ <= \^fsm_onehot_current_state_reg[0]_0\;
  SCLK <= \^sclk\;
\DATA[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^sclk\,
      I1 => clk_counter_reg(0),
      I2 => clk_counter_reg(1),
      I3 => started_ok,
      I4 => \^fsm_onehot_current_state_reg[0]_0\,
      O => shiftCounter
    );
\DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[0]\,
      Q => DATA(0),
      R => '0'
    );
\DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[10]\,
      Q => DATA(10),
      R => '0'
    );
\DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[11]\,
      Q => DATA(11),
      R => '0'
    );
\DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[1]\,
      Q => DATA(1),
      R => '0'
    );
\DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[2]\,
      Q => DATA(2),
      R => '0'
    );
\DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[3]\,
      Q => DATA(3),
      R => '0'
    );
\DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[4]\,
      Q => DATA(4),
      R => '0'
    );
\DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[5]\,
      Q => DATA(5),
      R => '0'
    );
\DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[6]\,
      Q => DATA(6),
      R => '0'
    );
\DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[7]\,
      Q => DATA(7),
      R => '0'
    );
\DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[8]\,
      Q => DATA(8),
      R => '0'
    );
\DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => shiftCounter,
      D => \temp_reg_n_0_[9]\,
      Q => DATA(9),
      R => '0'
    );
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE02AAAAAAAA"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[0]_0\,
      I1 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg[0]_i_3_n_0\,
      I3 => \FSM_onehot_current_state[0]_i_4_n_0\,
      I4 => RST,
      I5 => \clk_en__1\,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => START,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => synch_START,
      I3 => \^fsm_onehot_current_state_reg[0]_0\,
      O => \FSM_onehot_current_state[0]_i_2_n_0\
    );
\FSM_onehot_current_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4447"
    )
        port map (
      I0 => START,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \^fsm_onehot_current_state_reg[0]_0\,
      I3 => started_ok,
      O => \FSM_onehot_current_state[0]_i_4_n_0\
    );
\FSM_onehot_current_state[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => clk_counter_reg(1),
      I1 => clk_counter_reg(0),
      I2 => \^sclk\,
      O => \clk_en__1\
    );
\FSM_onehot_current_state[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[0]_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[0]_i_6_n_0\
    );
\FSM_onehot_current_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => shiftCounter_reg(3),
      I1 => shiftCounter_reg(2),
      I2 => shiftCounter_reg(0),
      I3 => shiftCounter_reg(1),
      O => \FSM_onehot_current_state[0]_i_7_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE02AAAAAAAA"
    )
        port map (
      I0 => started_ok,
      I1 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg[0]_i_3_n_0\,
      I3 => \^fsm_onehot_current_state_reg[0]_0\,
      I4 => RST,
      I5 => \clk_en__1\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE02AAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_current_state[0]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg[0]_i_3_n_0\,
      I3 => started_ok,
      I4 => RST,
      I5 => \clk_en__1\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \^fsm_onehot_current_state_reg[0]_0\,
      R => '0'
    );
\FSM_onehot_current_state_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_onehot_current_state[0]_i_6_n_0\,
      I1 => \FSM_onehot_current_state[0]_i_7_n_0\,
      O => \FSM_onehot_current_state_reg[0]_i_3_n_0\,
      S => started_ok
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => started_ok,
      R => '0'
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => '0'
    );
\clk_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_counter_reg(0),
      O => plusOp(0)
    );
\clk_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_counter_reg(0),
      I1 => clk_counter_reg(1),
      O => plusOp(1)
    );
\clk_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_counter_reg(0),
      I1 => clk_counter_reg(1),
      I2 => \^sclk\,
      O => plusOp(2)
    );
\clk_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => plusOp(0),
      Q => clk_counter_reg(0)
    );
\clk_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => plusOp(1),
      Q => clk_counter_reg(1)
    );
\clk_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => plusOp(2),
      Q => \^sclk\
    );
nCS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[0]_0\,
      I1 => started_ok,
      O => nCS
    );
\shiftCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shiftCounter_reg(0),
      O => \plusOp__0\(0)
    );
\shiftCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => shiftCounter_reg(0),
      I1 => shiftCounter_reg(1),
      O => \plusOp__0\(1)
    );
\shiftCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => shiftCounter_reg(0),
      I1 => shiftCounter_reg(1),
      I2 => shiftCounter_reg(2),
      O => \shiftCounter[2]_i_1_n_0\
    );
\shiftCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => shiftCounter_reg(1),
      I1 => shiftCounter_reg(0),
      I2 => shiftCounter_reg(2),
      I3 => shiftCounter_reg(3),
      O => \plusOp__0\(3)
    );
\shiftCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => temp,
      D => \plusOp__0\(0),
      Q => shiftCounter_reg(0),
      R => shiftCounter
    );
\shiftCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => temp,
      D => \plusOp__0\(1),
      Q => shiftCounter_reg(1),
      R => shiftCounter
    );
\shiftCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => temp,
      D => \shiftCounter[2]_i_1_n_0\,
      Q => shiftCounter_reg(2),
      R => shiftCounter
    );
\shiftCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => temp,
      D => \plusOp__0\(3),
      Q => shiftCounter_reg(3),
      R => shiftCounter
    );
synch_START_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88DC"
    )
        port map (
      I0 => RST,
      I1 => synch_START,
      I2 => START,
      I3 => started_ok,
      O => synch_START_i_1_n_0
    );
synch_START_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => synch_START_i_1_n_0,
      Q => synch_START,
      R => '0'
    );
\temp[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^sclk\,
      I1 => clk_counter_reg(0),
      I2 => clk_counter_reg(1),
      I3 => started_ok,
      O => temp
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => SDATA,
      Q => \temp_reg_n_0_[0]\,
      R => '0'
    );
\temp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[9]\,
      Q => \temp_reg_n_0_[10]\,
      R => '0'
    );
\temp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[10]\,
      Q => \temp_reg_n_0_[11]\,
      R => '0'
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[0]\,
      Q => \temp_reg_n_0_[1]\,
      R => '0'
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[1]\,
      Q => \temp_reg_n_0_[2]\,
      R => '0'
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[2]\,
      Q => \temp_reg_n_0_[3]\,
      R => '0'
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[3]\,
      Q => \temp_reg_n_0_[4]\,
      R => '0'
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[4]\,
      Q => \temp_reg_n_0_[5]\,
      R => '0'
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[5]\,
      Q => \temp_reg_n_0_[6]\,
      R => '0'
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[6]\,
      Q => \temp_reg_n_0_[7]\,
      R => '0'
    );
\temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[7]\,
      Q => \temp_reg_n_0_[8]\,
      R => '0'
    );
\temp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => temp,
      D => \temp_reg_n_0_[8]\,
      Q => \temp_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TP2_audioFIR_PmodMICRefComp_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    SDATA : in STD_LOGIC;
    SCLK : out STD_LOGIC;
    nCS : out STD_LOGIC;
    DATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    START : in STD_LOGIC;
    DONE : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TP2_audioFIR_PmodMICRefComp_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TP2_audioFIR_PmodMICRefComp_0_0 : entity is "TP2_audioFIR_PmodMICRefComp_0_0,PmodMICRefComp,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TP2_audioFIR_PmodMICRefComp_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TP2_audioFIR_PmodMICRefComp_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TP2_audioFIR_PmodMICRefComp_0_0 : entity is "PmodMICRefComp,Vivado 2021.2";
end TP2_audioFIR_PmodMICRefComp_0_0;

architecture STRUCTURE of TP2_audioFIR_PmodMICRefComp_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST:rst:DATA:DONE:nCS:SCLK:SDATA:START, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_100M_50M_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of DONE : signal is "xilinx.com:signal:data:1.0 DONE DATA";
  attribute x_interface_parameter of DONE : signal is "XIL_INTERFACENAME DONE, LAYERED_METADATA undef";
  attribute x_interface_info of RST : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of RST : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of SCLK : signal is "xilinx.com:signal:data:1.0 SCLK DATA";
  attribute x_interface_parameter of SCLK : signal is "XIL_INTERFACENAME SCLK, LAYERED_METADATA undef";
  attribute x_interface_info of SDATA : signal is "xilinx.com:signal:data:1.0 SDATA DATA";
  attribute x_interface_parameter of SDATA : signal is "XIL_INTERFACENAME SDATA, LAYERED_METADATA undef";
  attribute x_interface_info of START : signal is "xilinx.com:signal:data:1.0 START DATA";
  attribute x_interface_parameter of START : signal is "XIL_INTERFACENAME START, LAYERED_METADATA undef";
  attribute x_interface_info of nCS : signal is "xilinx.com:signal:data:1.0 nCS DATA";
  attribute x_interface_parameter of nCS : signal is "XIL_INTERFACENAME nCS, LAYERED_METADATA undef";
  attribute x_interface_info of DATA : signal is "xilinx.com:signal:data:1.0 DATA DATA";
  attribute x_interface_parameter of DATA : signal is "XIL_INTERFACENAME DATA, LAYERED_METADATA undef";
begin
U0: entity work.TP2_audioFIR_PmodMICRefComp_0_0_PmodMICRefComp
     port map (
      CLK => CLK,
      DATA(11 downto 0) => DATA(11 downto 0),
      \FSM_onehot_current_state_reg[0]_0\ => DONE,
      RST => RST,
      SCLK => SCLK,
      SDATA => SDATA,
      START => START,
      nCS => nCS
    );
end STRUCTURE;
