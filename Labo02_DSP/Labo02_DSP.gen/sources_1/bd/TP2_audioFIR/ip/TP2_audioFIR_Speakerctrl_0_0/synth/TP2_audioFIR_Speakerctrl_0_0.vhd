-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:Speakerctrl:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TP2_audioFIR_Speakerctrl_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    Led : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    audio_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    done : OUT STD_LOGIC;
    SDOUT : OUT STD_LOGIC;
    SCLK : OUT STD_LOGIC;
    MCLK : OUT STD_LOGIC;
    LRCK : OUT STD_LOGIC
  );
END TP2_audioFIR_Speakerctrl_0_0;

ARCHITECTURE TP2_audioFIR_Speakerctrl_0_0_arch OF TP2_audioFIR_Speakerctrl_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF TP2_audioFIR_Speakerctrl_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Speakerctrl IS
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      Led : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      audio_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      done : OUT STD_LOGIC;
      SDOUT : OUT STD_LOGIC;
      SCLK : OUT STD_LOGIC;
      MCLK : OUT STD_LOGIC;
      LRCK : OUT STD_LOGIC
    );
  END COMPONENT Speakerctrl;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF TP2_audioFIR_Speakerctrl_0_0_arch: ARCHITECTURE IS "Speakerctrl,Vivado 2021.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF TP2_audioFIR_Speakerctrl_0_0_arch : ARCHITECTURE IS "TP2_audioFIR_Speakerctrl_0_0,Speakerctrl,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF TP2_audioFIR_Speakerctrl_0_0_arch: ARCHITECTURE IS "TP2_audioFIR_Speakerctrl_0_0,Speakerctrl,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=Speakerctrl,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF TP2_audioFIR_Speakerctrl_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF LRCK: SIGNAL IS "XIL_INTERFACENAME LRCK, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF LRCK: SIGNAL IS "xilinx.com:signal:data:1.0 LRCK DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF MCLK: SIGNAL IS "XIL_INTERFACENAME MCLK, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF MCLK: SIGNAL IS "xilinx.com:signal:data:1.0 MCLK DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SCLK: SIGNAL IS "XIL_INTERFACENAME SCLK, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF SCLK: SIGNAL IS "xilinx.com:signal:data:1.0 SCLK DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SDOUT: SIGNAL IS "XIL_INTERFACENAME SDOUT, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF SDOUT: SIGNAL IS "xilinx.com:signal:data:1.0 SDOUT DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF done: SIGNAL IS "XIL_INTERFACENAME done, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF done: SIGNAL IS "xilinx.com:signal:data:1.0 done DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF audio_in: SIGNAL IS "XIL_INTERFACENAME audio_in, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF audio_in: SIGNAL IS "xilinx.com:signal:data:1.0 audio_in DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Led: SIGNAL IS "XIL_INTERFACENAME Led, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF Led: SIGNAL IS "xilinx.com:signal:data:1.0 Led DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET audio_in:done:Led:LRCK:MCLK:SCLK:SDOUT, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_100M_50M_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : Speakerctrl
    PORT MAP (
      clk => clk,
      rst => rst,
      Led => Led,
      audio_in => audio_in,
      done => done,
      SDOUT => SDOUT,
      SCLK => SCLK,
      MCLK => MCLK,
      LRCK => LRCK
    );
END TP2_audioFIR_Speakerctrl_0_0_arch;
