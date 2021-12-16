-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:module_ref:pma_init_generator:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_pma_init_generator_0_0 IS
  PORT (
    aur_init_clk : IN STD_LOGIC;
    periph_reset : IN STD_LOGIC;
    pma_init_in : OUT STD_LOGIC
  );
END design_1_pma_init_generator_0_0;

ARCHITECTURE design_1_pma_init_generator_0_0_arch OF design_1_pma_init_generator_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_pma_init_generator_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pma_init_generator IS
    GENERIC (
      PULSE_WIDTH : INTEGER
    );
    PORT (
      aur_init_clk : IN STD_LOGIC;
      periph_reset : IN STD_LOGIC;
      pma_init_in : OUT STD_LOGIC
    );
  END COMPONENT pma_init_generator;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_pma_init_generator_0_0_arch: ARCHITECTURE IS "pma_init_generator,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_pma_init_generator_0_0_arch : ARCHITECTURE IS "design_1_pma_init_generator_0_0,pma_init_generator,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_pma_init_generator_0_0_arch: ARCHITECTURE IS "design_1_pma_init_generator_0_0,pma_init_generator,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pma_init_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,PULSE_WIDTH=16}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_pma_init_generator_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF periph_reset: SIGNAL IS "XIL_INTERFACENAME periph_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF periph_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 periph_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aur_init_clk: SIGNAL IS "XIL_INTERFACENAME aur_init_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aur_init_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 aur_init_clk CLK";
BEGIN
  U0 : pma_init_generator
    GENERIC MAP (
      PULSE_WIDTH => 16
    )
    PORT MAP (
      aur_init_clk => aur_init_clk,
      periph_reset => periph_reset,
      pma_init_in => pma_init_in
    );
END design_1_pma_init_generator_0_0_arch;
