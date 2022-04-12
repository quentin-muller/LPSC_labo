-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Mar 29 18:10:57 2022
-- Host        : Surface-2-Quent running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TP2_audioFIR_Speakerctrl_0_0 -prefix
--               TP2_audioFIR_Speakerctrl_0_0_ Speakerctrl_0_sim_netlist.vhdl
-- Design      : Speakerctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TP2_audioFIR_Speakerctrl_0_0_Speakerctrl is
  port (
    SDOUT : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    done : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    audio_in : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end TP2_audioFIR_Speakerctrl_0_0_Speakerctrl;

architecture STRUCTURE of TP2_audioFIR_Speakerctrl_0_0_Speakerctrl is
  signal \div_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal div_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal done_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal shift_reg : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal shift_reg0 : STD_LOGIC;
  signal \shift_reg[15]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \div_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \div_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \div_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \div_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \div_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \div_cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \div_cnt[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \div_cnt[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of done_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_reg[15]_i_3\ : label is "soft_lutpair2";
begin
  \out\(2 downto 0) <= \^out\(2 downto 0);
\div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => div_cnt_reg(0),
      O => plusOp(0)
    );
\div_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => div_cnt_reg(9),
      I1 => div_cnt_reg(7),
      I2 => \div_cnt[10]_i_2_n_0\,
      I3 => div_cnt_reg(6),
      I4 => div_cnt_reg(8),
      I5 => \^out\(2),
      O => plusOp(10)
    );
\div_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^out\(0),
      I1 => div_cnt_reg(2),
      I2 => div_cnt_reg(0),
      I3 => div_cnt_reg(1),
      I4 => div_cnt_reg(3),
      I5 => \^out\(1),
      O => \div_cnt[10]_i_2_n_0\
    );
\div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => div_cnt_reg(0),
      I1 => div_cnt_reg(1),
      O => plusOp(1)
    );
\div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => div_cnt_reg(1),
      I1 => div_cnt_reg(0),
      I2 => div_cnt_reg(2),
      O => plusOp(2)
    );
\div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => div_cnt_reg(2),
      I1 => div_cnt_reg(0),
      I2 => div_cnt_reg(1),
      I3 => div_cnt_reg(3),
      O => plusOp(3)
    );
\div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => div_cnt_reg(3),
      I1 => div_cnt_reg(1),
      I2 => div_cnt_reg(0),
      I3 => div_cnt_reg(2),
      I4 => \^out\(0),
      O => plusOp(4)
    );
\div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^out\(0),
      I1 => div_cnt_reg(2),
      I2 => div_cnt_reg(0),
      I3 => div_cnt_reg(1),
      I4 => div_cnt_reg(3),
      I5 => \^out\(1),
      O => plusOp(5)
    );
\div_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \div_cnt[10]_i_2_n_0\,
      I1 => div_cnt_reg(6),
      O => plusOp(6)
    );
\div_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => div_cnt_reg(6),
      I1 => \div_cnt[10]_i_2_n_0\,
      I2 => div_cnt_reg(7),
      O => plusOp(7)
    );
\div_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => div_cnt_reg(7),
      I1 => \div_cnt[10]_i_2_n_0\,
      I2 => div_cnt_reg(6),
      I3 => div_cnt_reg(8),
      O => plusOp(8)
    );
\div_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \div_cnt[10]_i_2_n_0\,
      I1 => div_cnt_reg(8),
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(6),
      I4 => div_cnt_reg(9),
      O => plusOp(9)
    );
\div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => div_cnt_reg(0),
      R => rst
    );
\div_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(10),
      Q => \^out\(2),
      R => rst
    );
\div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => div_cnt_reg(1),
      R => rst
    );
\div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => div_cnt_reg(2),
      R => rst
    );
\div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => div_cnt_reg(3),
      R => rst
    );
\div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => \^out\(0),
      R => rst
    );
\div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => \^out\(1),
      R => rst
    );
\div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => div_cnt_reg(6),
      R => rst
    );
\div_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => div_cnt_reg(7),
      R => rst
    );
\div_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(8),
      Q => div_cnt_reg(8),
      R => rst
    );
\div_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => plusOp(9),
      Q => div_cnt_reg(9),
      R => rst
    );
done_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => done_INST_0_i_1_n_0,
      I1 => div_cnt_reg(8),
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(6),
      I4 => div_cnt_reg(9),
      O => done
    );
done_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => div_cnt_reg(2),
      I3 => div_cnt_reg(3),
      I4 => div_cnt_reg(1),
      I5 => div_cnt_reg(0),
      O => done_INST_0_i_1_n_0
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => audio_in(0),
      I1 => done_INST_0_i_1_n_0,
      I2 => div_cnt_reg(8),
      I3 => div_cnt_reg(7),
      I4 => div_cnt_reg(6),
      I5 => div_cnt_reg(9),
      O => p_1_in(0)
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(9),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(10),
      O => p_1_in(10)
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(10),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(11),
      O => p_1_in(11)
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(11),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(12),
      O => p_1_in(12)
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(12),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(13),
      O => p_1_in(13)
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(13),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(14),
      O => p_1_in(14)
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => div_cnt_reg(0),
      I1 => div_cnt_reg(1),
      I2 => div_cnt_reg(3),
      I3 => div_cnt_reg(2),
      I4 => \^out\(1),
      I5 => \^out\(0),
      O => shift_reg0
    );
\shift_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(14),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(15),
      O => p_1_in(15)
    );
\shift_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => div_cnt_reg(9),
      I1 => div_cnt_reg(6),
      O => \shift_reg[15]_i_3_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(0),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(1),
      O => p_1_in(1)
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(1),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(2),
      O => p_1_in(2)
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(2),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(3),
      O => p_1_in(3)
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(3),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(4),
      O => p_1_in(4)
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(4),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(5),
      O => p_1_in(5)
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(5),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(6),
      O => p_1_in(6)
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(6),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(7),
      O => p_1_in(7)
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(7),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(8),
      O => p_1_in(8)
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => shift_reg(8),
      I1 => \shift_reg[15]_i_3_n_0\,
      I2 => div_cnt_reg(7),
      I3 => div_cnt_reg(8),
      I4 => done_INST_0_i_1_n_0,
      I5 => audio_in(9),
      O => p_1_in(9)
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(0),
      Q => shift_reg(0),
      R => rst
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(10),
      Q => shift_reg(10),
      R => rst
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(11),
      Q => shift_reg(11),
      R => rst
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(12),
      Q => shift_reg(12),
      R => rst
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(13),
      Q => shift_reg(13),
      R => rst
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(14),
      Q => shift_reg(14),
      R => rst
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(15),
      Q => SDOUT,
      R => rst
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(1),
      Q => shift_reg(1),
      R => rst
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(2),
      Q => shift_reg(2),
      R => rst
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(3),
      Q => shift_reg(3),
      R => rst
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(4),
      Q => shift_reg(4),
      R => rst
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(5),
      Q => shift_reg(5),
      R => rst
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(6),
      Q => shift_reg(6),
      R => rst
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(7),
      Q => shift_reg(7),
      R => rst
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(8),
      Q => shift_reg(8),
      R => rst
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => shift_reg0,
      D => p_1_in(9),
      Q => shift_reg(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TP2_audioFIR_Speakerctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    audio_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    SDOUT : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MCLK : out STD_LOGIC;
    LRCK : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TP2_audioFIR_Speakerctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TP2_audioFIR_Speakerctrl_0_0 : entity is "Speakerctrl_0,Speakerctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TP2_audioFIR_Speakerctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TP2_audioFIR_Speakerctrl_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TP2_audioFIR_Speakerctrl_0_0 : entity is "Speakerctrl,Vivado 2021.2";
end TP2_audioFIR_Speakerctrl_0_0;

architecture STRUCTURE of TP2_audioFIR_Speakerctrl_0_0 is
  signal \^audio_in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of LRCK : signal is "xilinx.com:signal:data:1.0 LRCK DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of LRCK : signal is "XIL_INTERFACENAME LRCK, LAYERED_METADATA undef";
  attribute x_interface_info of MCLK : signal is "xilinx.com:signal:data:1.0 MCLK DATA";
  attribute x_interface_parameter of MCLK : signal is "XIL_INTERFACENAME MCLK, LAYERED_METADATA undef";
  attribute x_interface_info of SCLK : signal is "xilinx.com:signal:data:1.0 SCLK DATA";
  attribute x_interface_parameter of SCLK : signal is "XIL_INTERFACENAME SCLK, LAYERED_METADATA undef";
  attribute x_interface_info of SDOUT : signal is "xilinx.com:signal:data:1.0 SDOUT DATA";
  attribute x_interface_parameter of SDOUT : signal is "XIL_INTERFACENAME SDOUT, LAYERED_METADATA undef";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET audio_in:done:Led:LRCK:MCLK:SCLK:SDOUT, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of done : signal is "xilinx.com:signal:data:1.0 done DATA";
  attribute x_interface_parameter of done : signal is "XIL_INTERFACENAME done, LAYERED_METADATA undef";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of Led : signal is "xilinx.com:signal:data:1.0 Led DATA";
  attribute x_interface_parameter of Led : signal is "XIL_INTERFACENAME Led, LAYERED_METADATA undef";
  attribute x_interface_info of audio_in : signal is "xilinx.com:signal:data:1.0 audio_in DATA";
  attribute x_interface_parameter of audio_in : signal is "XIL_INTERFACENAME audio_in, LAYERED_METADATA undef";
begin
  Led(7 downto 0) <= \^audio_in\(15 downto 8);
  \^audio_in\(15 downto 0) <= audio_in(15 downto 0);
U0: entity work.TP2_audioFIR_Speakerctrl_0_0_Speakerctrl
     port map (
      SDOUT => SDOUT,
      audio_in(15 downto 0) => \^audio_in\(15 downto 0),
      clk => clk,
      done => done,
      \out\(2) => LRCK,
      \out\(1) => SCLK,
      \out\(0) => MCLK,
      rst => rst
    );
end STRUCTURE;
