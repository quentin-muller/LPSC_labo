--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Tue Apr  5 19:25:30 2022
--Host        : Surface-2-Quent running 64-bit major release  (build 9200)
--Command     : generate_target TP2_audioFIR.bd
--Design      : TP2_audioFIR
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TP2_audioFIR is
  port (
    Led_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MIC_DONE : out STD_LOGIC;
    MIC_SCLK : out STD_LOGIC;
    MIC_nCS : out STD_LOGIC;
    SC_LRCK : out STD_LOGIC;
    SC_MCLK : out STD_LOGIC;
    SC_SCLK : out STD_LOGIC;
    SC_SDOUT : out STD_LOGIC;
    SDATA : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of TP2_audioFIR : entity is "TP2_audioFIR,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TP2_audioFIR,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of TP2_audioFIR : entity is "TP2_audioFIR.hwdef";
end TP2_audioFIR;

architecture STRUCTURE of TP2_audioFIR is
  component TP2_audioFIR_Speakerctrl_0_0 is
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
  end component TP2_audioFIR_Speakerctrl_0_0;
  component TP2_audioFIR_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component TP2_audioFIR_clk_wiz_0_0;
  component TP2_audioFIR_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component TP2_audioFIR_util_vector_logic_0_0;
  component TP2_audioFIR_PmodMICRefComp_0_0 is
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
  end component TP2_audioFIR_PmodMICRefComp_0_0;
  component TP2_audioFIR_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component TP2_audioFIR_ila_0_0;
  component TP2_audioFIR_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component TP2_audioFIR_xlconcat_0_0;
  component TP2_audioFIR_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component TP2_audioFIR_xlconstant_0_0;
  component TP2_audioFIR_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component TP2_audioFIR_xlconstant_0_1;
  signal PmodMICRefComp_0_DATA : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal PmodMICRefComp_0_DONE : STD_LOGIC;
  signal PmodMICRefComp_0_SCLK : STD_LOGIC;
  signal PmodMICRefComp_0_nCS : STD_LOGIC;
  signal SDATA_0_1 : STD_LOGIC;
  signal Speakerctrl_0_LRCK : STD_LOGIC;
  signal Speakerctrl_0_Led : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Speakerctrl_0_MCLK : STD_LOGIC;
  signal Speakerctrl_0_SCLK : STD_LOGIC;
  signal Speakerctrl_0_SDOUT : STD_LOGIC;
  signal Speakerctrl_0_done : STD_LOGIC;
  signal audio_in_0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal clk_100M_50M_clk_out1 : STD_LOGIC;
  signal clk_100M_50M_locked : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of MIC_DONE : signal is "xilinx.com:signal:data:1.0 DATA.MIC_DONE DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of MIC_DONE : signal is "XIL_INTERFACENAME DATA.MIC_DONE, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of MIC_SCLK : signal is "xilinx.com:signal:data:1.0 DATA.MIC_SCLK DATA";
  attribute X_INTERFACE_PARAMETER of MIC_SCLK : signal is "XIL_INTERFACENAME DATA.MIC_SCLK, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of MIC_nCS : signal is "xilinx.com:signal:data:1.0 DATA.MIC_NCS DATA";
  attribute X_INTERFACE_PARAMETER of MIC_nCS : signal is "XIL_INTERFACENAME DATA.MIC_NCS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SC_LRCK : signal is "xilinx.com:signal:data:1.0 DATA.SC_LRCK DATA";
  attribute X_INTERFACE_PARAMETER of SC_LRCK : signal is "XIL_INTERFACENAME DATA.SC_LRCK, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SC_MCLK : signal is "xilinx.com:signal:data:1.0 DATA.SC_MCLK DATA";
  attribute X_INTERFACE_PARAMETER of SC_MCLK : signal is "XIL_INTERFACENAME DATA.SC_MCLK, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SC_SCLK : signal is "xilinx.com:signal:data:1.0 DATA.SC_SCLK DATA";
  attribute X_INTERFACE_PARAMETER of SC_SCLK : signal is "XIL_INTERFACENAME DATA.SC_SCLK, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SC_SDOUT : signal is "xilinx.com:signal:data:1.0 DATA.SC_SDOUT DATA";
  attribute X_INTERFACE_PARAMETER of SC_SDOUT : signal is "XIL_INTERFACENAME DATA.SC_SDOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of SDATA : signal is "xilinx.com:signal:data:1.0 DATA.SDATA DATA";
  attribute X_INTERFACE_PARAMETER of SDATA : signal is "XIL_INTERFACENAME DATA.SDATA, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN TP2_audioFIR_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of Led_0 : signal is "xilinx.com:signal:data:1.0 DATA.LED_0 DATA";
  attribute X_INTERFACE_PARAMETER of Led_0 : signal is "XIL_INTERFACENAME DATA.LED_0, LAYERED_METADATA undef";
begin
  Led_0(7 downto 0) <= Speakerctrl_0_Led(7 downto 0);
  MIC_DONE <= PmodMICRefComp_0_DONE;
  MIC_SCLK <= PmodMICRefComp_0_SCLK;
  MIC_nCS <= PmodMICRefComp_0_nCS;
  SC_LRCK <= Speakerctrl_0_LRCK;
  SC_MCLK <= Speakerctrl_0_MCLK;
  SC_SCLK <= Speakerctrl_0_SCLK;
  SC_SDOUT <= Speakerctrl_0_SDOUT;
  SDATA_0_1 <= SDATA;
  clk_1 <= clk;
  reset_1 <= reset;
PmodMICRefComp_0: component TP2_audioFIR_PmodMICRefComp_0_0
     port map (
      CLK => clk_100M_50M_clk_out1,
      DATA(11 downto 0) => PmodMICRefComp_0_DATA(11 downto 0),
      DONE => PmodMICRefComp_0_DONE,
      RST => util_vector_logic_0_Res(0),
      SCLK => PmodMICRefComp_0_SCLK,
      SDATA => SDATA_0_1,
      START => Speakerctrl_0_done,
      nCS => PmodMICRefComp_0_nCS
    );
Speakerctrl_0: component TP2_audioFIR_Speakerctrl_0_0
     port map (
      LRCK => Speakerctrl_0_LRCK,
      Led(7 downto 0) => Speakerctrl_0_Led(7 downto 0),
      MCLK => Speakerctrl_0_MCLK,
      SCLK => Speakerctrl_0_SCLK,
      SDOUT => Speakerctrl_0_SDOUT,
      audio_in(15 downto 0) => audio_in_0_1(15 downto 0),
      clk => clk_100M_50M_clk_out1,
      done => Speakerctrl_0_done,
      rst => util_vector_logic_0_Res(0)
    );
clk_100M_50M: component TP2_audioFIR_clk_wiz_0_0
     port map (
      clk_in1 => clk_1,
      clk_out1 => clk_100M_50M_clk_out1,
      locked => clk_100M_50M_locked,
      reset => reset_1
    );
ila_0: component TP2_audioFIR_ila_0_0
     port map (
      clk => clk_100M_50M_clk_out1,
      probe0(15 downto 0) => audio_in_0_1(15 downto 0),
      probe1(0) => Speakerctrl_0_done,
      probe2(0) => Speakerctrl_0_SDOUT,
      probe3(0) => Speakerctrl_0_SCLK,
      probe4(0) => Speakerctrl_0_MCLK,
      probe5(0) => Speakerctrl_0_LRCK
    );
util_vector_logic_0: component TP2_audioFIR_util_vector_logic_0_0
     port map (
      Op1(0) => clk_100M_50M_locked,
      Res(0) => util_vector_logic_0_Res(0)
    );
xlconcat_0: component TP2_audioFIR_xlconcat_0_0
     port map (
      In0(2 downto 0) => xlconstant_0_dout(2 downto 0),
      In1(11 downto 0) => PmodMICRefComp_0_DATA(11 downto 0),
      In2(0) => xlconstant_1_dout(0),
      dout(15 downto 0) => audio_in_0_1(15 downto 0)
    );
xlconstant_0: component TP2_audioFIR_xlconstant_0_0
     port map (
      dout(2 downto 0) => xlconstant_0_dout(2 downto 0)
    );
xlconstant_1: component TP2_audioFIR_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
