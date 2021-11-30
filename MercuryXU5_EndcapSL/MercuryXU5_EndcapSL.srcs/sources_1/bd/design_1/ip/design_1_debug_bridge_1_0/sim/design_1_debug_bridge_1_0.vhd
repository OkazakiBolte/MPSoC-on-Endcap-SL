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

-- IP VLNV: xilinx.com:ip:debug_bridge:3.0
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_debug_bridge_1_0 IS
  PORT (
    clk : IN STD_LOGIC;
    S_BSCAN_bscanid_en : IN STD_LOGIC;
    S_BSCAN_capture : IN STD_LOGIC;
    S_BSCAN_drck : IN STD_LOGIC;
    S_BSCAN_reset : IN STD_LOGIC;
    S_BSCAN_runtest : IN STD_LOGIC;
    S_BSCAN_sel : IN STD_LOGIC;
    S_BSCAN_shift : IN STD_LOGIC;
    S_BSCAN_tck : IN STD_LOGIC;
    S_BSCAN_tdi : IN STD_LOGIC;
    S_BSCAN_tdo : OUT STD_LOGIC;
    S_BSCAN_tms : IN STD_LOGIC;
    S_BSCAN_update : IN STD_LOGIC
  );
END design_1_debug_bridge_1_0;

ARCHITECTURE design_1_debug_bridge_1_0_arch OF design_1_debug_bridge_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_debug_bridge_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_0412 IS
    PORT (
      clk : IN STD_LOGIC;
      S_BSCAN_bscanid_en : IN STD_LOGIC;
      S_BSCAN_capture : IN STD_LOGIC;
      S_BSCAN_drck : IN STD_LOGIC;
      S_BSCAN_reset : IN STD_LOGIC;
      S_BSCAN_runtest : IN STD_LOGIC;
      S_BSCAN_sel : IN STD_LOGIC;
      S_BSCAN_shift : IN STD_LOGIC;
      S_BSCAN_tck : IN STD_LOGIC;
      S_BSCAN_tdi : IN STD_LOGIC;
      S_BSCAN_tdo : OUT STD_LOGIC;
      S_BSCAN_tms : IN STD_LOGIC;
      S_BSCAN_update : IN STD_LOGIC
    );
  END COMPONENT bd_0412;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_update: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tms: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tdo: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tdi: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_tck: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_shift: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_sel: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_runtest: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_reset: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_drck: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_capture: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  ATTRIBUTE X_INTERFACE_INFO OF S_BSCAN_bscanid_en: SIGNAL IS "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME CLK.clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.clk CLK";
BEGIN
  U0 : bd_0412
    PORT MAP (
      clk => clk,
      S_BSCAN_bscanid_en => S_BSCAN_bscanid_en,
      S_BSCAN_capture => S_BSCAN_capture,
      S_BSCAN_drck => S_BSCAN_drck,
      S_BSCAN_reset => S_BSCAN_reset,
      S_BSCAN_runtest => S_BSCAN_runtest,
      S_BSCAN_sel => S_BSCAN_sel,
      S_BSCAN_shift => S_BSCAN_shift,
      S_BSCAN_tck => S_BSCAN_tck,
      S_BSCAN_tdi => S_BSCAN_tdi,
      S_BSCAN_tdo => S_BSCAN_tdo,
      S_BSCAN_tms => S_BSCAN_tms,
      S_BSCAN_update => S_BSCAN_update
    );
END design_1_debug_bridge_1_0_arch;
