--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_0412.bd
--Design : bd_0412
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0412 is
  port (
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0412 : entity is "bd_0412,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0412,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0412 : entity is "design_1_debug_bridge_1_0.hwdef";
end bd_0412;

architecture STRUCTURE of bd_0412 is
  component bd_0412_xsdbm_0 is
  port (
    update : in STD_LOGIC;
    capture : in STD_LOGIC;
    reset : in STD_LOGIC;
    runtest : in STD_LOGIC;
    tck : in STD_LOGIC;
    tms : in STD_LOGIC;
    tdi : in STD_LOGIC;
    sel : in STD_LOGIC;
    shift : in STD_LOGIC;
    drck : in STD_LOGIC;
    tdo : out STD_LOGIC;
    bscanid_en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component bd_0412_xsdbm_0;
  component bd_0412_lut_buffer_0 is
  port (
    tdi_i : in STD_LOGIC;
    tms_i : in STD_LOGIC;
    tck_i : in STD_LOGIC;
    drck_i : in STD_LOGIC;
    sel_i : in STD_LOGIC;
    shift_i : in STD_LOGIC;
    update_i : in STD_LOGIC;
    capture_i : in STD_LOGIC;
    runtest_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    bscanid_en_i : in STD_LOGIC;
    tdo_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    drck_o : out STD_LOGIC;
    sel_o : out STD_LOGIC;
    shift_o : out STD_LOGIC;
    update_o : out STD_LOGIC;
    capture_o : out STD_LOGIC;
    runtest_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    bscanid_en_o : out STD_LOGIC;
    tdo_i : in STD_LOGIC
  );
  end component bd_0412_lut_buffer_0;
  signal S_BSCAN_1_BSCANID_EN : STD_LOGIC;
  signal S_BSCAN_1_CAPTURE : STD_LOGIC;
  signal S_BSCAN_1_DRCK : STD_LOGIC;
  signal S_BSCAN_1_RESET : STD_LOGIC;
  signal S_BSCAN_1_RUNTEST : STD_LOGIC;
  signal S_BSCAN_1_SEL : STD_LOGIC;
  signal S_BSCAN_1_SHIFT : STD_LOGIC;
  signal S_BSCAN_1_TCK : STD_LOGIC;
  signal S_BSCAN_1_TDI : STD_LOGIC;
  signal S_BSCAN_1_TDO : STD_LOGIC;
  signal S_BSCAN_1_TMS : STD_LOGIC;
  signal S_BSCAN_1_UPDATE : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal lut_buffer_m_bscan_BSCANID_EN : STD_LOGIC;
  signal lut_buffer_m_bscan_CAPTURE : STD_LOGIC;
  signal lut_buffer_m_bscan_DRCK : STD_LOGIC;
  signal lut_buffer_m_bscan_RESET : STD_LOGIC;
  signal lut_buffer_m_bscan_RUNTEST : STD_LOGIC;
  signal lut_buffer_m_bscan_SEL : STD_LOGIC;
  signal lut_buffer_m_bscan_SHIFT : STD_LOGIC;
  signal lut_buffer_m_bscan_TCK : STD_LOGIC;
  signal lut_buffer_m_bscan_TDI : STD_LOGIC;
  signal lut_buffer_m_bscan_TDO : STD_LOGIC;
  signal lut_buffer_m_bscan_TMS : STD_LOGIC;
  signal lut_buffer_m_bscan_UPDATE : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_BSCAN_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN";
  attribute X_INTERFACE_INFO of S_BSCAN_capture : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE";
  attribute X_INTERFACE_INFO of S_BSCAN_drck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK";
  attribute X_INTERFACE_INFO of S_BSCAN_reset : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RESET";
  attribute X_INTERFACE_INFO of S_BSCAN_runtest : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST";
  attribute X_INTERFACE_INFO of S_BSCAN_sel : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SEL";
  attribute X_INTERFACE_INFO of S_BSCAN_shift : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT";
  attribute X_INTERFACE_INFO of S_BSCAN_tck : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TCK";
  attribute X_INTERFACE_INFO of S_BSCAN_tdi : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDI";
  attribute X_INTERFACE_INFO of S_BSCAN_tdo : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TDO";
  attribute X_INTERFACE_INFO of S_BSCAN_tms : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN TMS";
  attribute X_INTERFACE_INFO of S_BSCAN_update : signal is "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  S_BSCAN_1_BSCANID_EN <= S_BSCAN_bscanid_en;
  S_BSCAN_1_CAPTURE <= S_BSCAN_capture;
  S_BSCAN_1_DRCK <= S_BSCAN_drck;
  S_BSCAN_1_RESET <= S_BSCAN_reset;
  S_BSCAN_1_RUNTEST <= S_BSCAN_runtest;
  S_BSCAN_1_SEL <= S_BSCAN_sel;
  S_BSCAN_1_SHIFT <= S_BSCAN_shift;
  S_BSCAN_1_TCK <= S_BSCAN_tck;
  S_BSCAN_1_TDI <= S_BSCAN_tdi;
  S_BSCAN_1_TMS <= S_BSCAN_tms;
  S_BSCAN_1_UPDATE <= S_BSCAN_update;
  S_BSCAN_tdo <= S_BSCAN_1_TDO;
  clk_1 <= clk;
lut_buffer: component bd_0412_lut_buffer_0
     port map (
      bscanid_en_i => S_BSCAN_1_BSCANID_EN,
      bscanid_en_o => lut_buffer_m_bscan_BSCANID_EN,
      capture_i => S_BSCAN_1_CAPTURE,
      capture_o => lut_buffer_m_bscan_CAPTURE,
      drck_i => S_BSCAN_1_DRCK,
      drck_o => lut_buffer_m_bscan_DRCK,
      reset_i => S_BSCAN_1_RESET,
      reset_o => lut_buffer_m_bscan_RESET,
      runtest_i => S_BSCAN_1_RUNTEST,
      runtest_o => lut_buffer_m_bscan_RUNTEST,
      sel_i => S_BSCAN_1_SEL,
      sel_o => lut_buffer_m_bscan_SEL,
      shift_i => S_BSCAN_1_SHIFT,
      shift_o => lut_buffer_m_bscan_SHIFT,
      tck_i => S_BSCAN_1_TCK,
      tck_o => lut_buffer_m_bscan_TCK,
      tdi_i => S_BSCAN_1_TDI,
      tdi_o => lut_buffer_m_bscan_TDI,
      tdo_i => lut_buffer_m_bscan_TDO,
      tdo_o => S_BSCAN_1_TDO,
      tms_i => S_BSCAN_1_TMS,
      tms_o => lut_buffer_m_bscan_TMS,
      update_i => S_BSCAN_1_UPDATE,
      update_o => lut_buffer_m_bscan_UPDATE
    );
xsdbm: component bd_0412_xsdbm_0
     port map (
      bscanid_en => lut_buffer_m_bscan_BSCANID_EN,
      capture => lut_buffer_m_bscan_CAPTURE,
      clk => clk_1,
      drck => lut_buffer_m_bscan_DRCK,
      reset => lut_buffer_m_bscan_RESET,
      runtest => lut_buffer_m_bscan_RUNTEST,
      sel => lut_buffer_m_bscan_SEL,
      shift => lut_buffer_m_bscan_SHIFT,
      tck => lut_buffer_m_bscan_TCK,
      tdi => lut_buffer_m_bscan_TDI,
      tdo => lut_buffer_m_bscan_TDO,
      tms => lut_buffer_m_bscan_TMS,
      update => lut_buffer_m_bscan_UPDATE
    );
end STRUCTURE;
