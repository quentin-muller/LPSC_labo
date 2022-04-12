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

-- IP VLNV: xilinx.com:user:PmodMICRefComp:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TP2_audioFIR_PmodMICRefComp_0_0 IS
  PORT (
    CLK : IN STD_LOGIC;
    RST : IN STD_LOGIC;
    SDATA : IN STD_LOGIC;
    SCLK : OUT STD_LOGIC;
    nCS : OUT STD_LOGIC;
    DATA : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    START : IN STD_LOGIC;
    DONE : OUT STD_LOGIC
  );
END TP2_audioFIR_PmodMICRefComp_0_0;

ARCHITECTURE TP2_audioFIR_PmodMICRefComp_0_0_arch OF TP2_audioFIR_PmodMICRefComp_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF TP2_audioFIR_PmodMICRefComp_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT PmodMICRefComp IS
    PORT (
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;
      SDATA : IN STD_LOGIC;
      SCLK : OUT STD_LOGIC;
      nCS : OUT STD_LOGIC;
      DATA : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      START : IN STD_LOGIC;
      DONE : OUT STD_LOGIC
    );
  END COMPONENT PmodMICRefComp;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF TP2_audioFIR_PmodMICRefComp_0_0_arch: ARCHITECTURE IS "PmodMICRefComp,Vivado 2021.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF TP2_audioFIR_PmodMICRefComp_0_0_arch : ARCHITECTURE IS "TP2_audioFIR_PmodMICRefComp_0_0,PmodMICRefComp,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF TP2_audioFIR_PmodMICRefComp_0_0_arch: ARCHITECTURE IS "TP2_audioFIR_PmodMICRefComp_0_0,PmodMICRefComp,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=PmodMICRefComp,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF TP2_audioFIR_PmodMICRefComp_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF DONE: SIGNAL IS "XIL_INTERFACENAME DONE, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF DONE: SIGNAL IS "xilinx.com:signal:data:1.0 DONE DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF START: SIGNAL IS "XIL_INTERFACENAME START, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF START: SIGNAL IS "xilinx.com:signal:data:1.0 START DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF DATA: SIGNAL IS "XIL_INTERFACENAME DATA, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF DATA: SIGNAL IS "xilinx.com:signal:data:1.0 DATA DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF nCS: SIGNAL IS "XIL_INTERFACENAME nCS, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF nCS: SIGNAL IS "xilinx.com:signal:data:1.0 nCS DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SCLK: SIGNAL IS "XIL_INTERFACENAME SCLK, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF SCLK: SIGNAL IS "xilinx.com:signal:data:1.0 SCLK DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SDATA: SIGNAL IS "XIL_INTERFACENAME SDATA, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF SDATA: SIGNAL IS "xilinx.com:signal:data:1.0 SDATA DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF RST: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RST: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST:rst:DATA:DONE:nCS:SCLK:SDATA:START, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_100M_50M_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK CLK";
BEGIN
  U0 : PmodMICRefComp
    PORT MAP (
      CLK => CLK,
      RST => RST,
      SDATA => SDATA,
      SCLK => SCLK,
      nCS => nCS,
      DATA => DATA,
      START => START,
      DONE => DONE
    );
END TP2_audioFIR_PmodMICRefComp_0_0_arch;
