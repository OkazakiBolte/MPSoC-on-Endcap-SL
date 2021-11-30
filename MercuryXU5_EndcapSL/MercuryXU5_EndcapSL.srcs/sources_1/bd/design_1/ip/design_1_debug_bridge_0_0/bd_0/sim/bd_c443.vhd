--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_c443.bd
--Design : bd_c443
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_c443 is
  port (
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    m0_bscan_bscanid_en : out STD_LOGIC;
    m0_bscan_capture : out STD_LOGIC;
    m0_bscan_drck : out STD_LOGIC;
    m0_bscan_reset : out STD_LOGIC;
    m0_bscan_runtest : out STD_LOGIC;
    m0_bscan_sel : out STD_LOGIC;
    m0_bscan_shift : out STD_LOGIC;
    m0_bscan_tck : out STD_LOGIC;
    m0_bscan_tdi : out STD_LOGIC;
    m0_bscan_tdo : in STD_LOGIC;
    m0_bscan_tms : out STD_LOGIC;
    m0_bscan_update : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_c443 : entity is "bd_c443,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_c443,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_c443 : entity is "design_1_debug_bridge_0_0.hwdef";
end bd_c443;

architecture STRUCTURE of bd_c443 is
  component bd_c443_axi_jtag_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tdi : out STD_LOGIC;
    mux_status : in STD_LOGIC;
    tdo : in STD_LOGIC
  );
  end component bd_c443_axi_jtag_0;
  component bd_c443_bsip_0 is
  port (
    drck : out STD_LOGIC;
    reset : out STD_LOGIC;
    sel : out STD_LOGIC;
    shift : out STD_LOGIC;
    tdi : out STD_LOGIC;
    update : out STD_LOGIC;
    capture : out STD_LOGIC;
    runtest : out STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tap_tdo : out STD_LOGIC;
    tdo : in STD_LOGIC;
    tap_tdi : in STD_LOGIC;
    tap_tms : in STD_LOGIC;
    tap_tck : in STD_LOGIC
  );
  end component bd_c443_bsip_0;
  component bd_c443_bs_switch_1_0 is
  port (
    s_bscan_drck : in STD_LOGIC;
    s_bscan_reset : in STD_LOGIC;
    s_bscan_sel : in STD_LOGIC;
    s_bscan_capture : in STD_LOGIC;
    s_bscan_shift : in STD_LOGIC;
    s_bscan_update : in STD_LOGIC;
    s_bscan_tdi : in STD_LOGIC;
    s_bscan_runtest : in STD_LOGIC;
    s_bscan_tck : in STD_LOGIC;
    s_bscan_tms : in STD_LOGIC;
    s_bscanid_en : in STD_LOGIC;
    s_bscan_tdo : out STD_LOGIC;
    drck_0 : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    sel_0 : out STD_LOGIC;
    capture_0 : out STD_LOGIC;
    shift_0 : out STD_LOGIC;
    update_0 : out STD_LOGIC;
    tdi_0 : out STD_LOGIC;
    runtest_0 : out STD_LOGIC;
    tck_0 : out STD_LOGIC;
    tms_0 : out STD_LOGIC;
    bscanid_en_0 : out STD_LOGIC;
    tdo_0 : in STD_LOGIC
  );
  end component bd_c443_bs_switch_1_0;
  component bd_c443_bs_switch_2 is
  port (
    drck_0 : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    sel_0 : out STD_LOGIC;
    capture_0 : out STD_LOGIC;
    shift_0 : out STD_LOGIC;
    update_0 : out STD_LOGIC;
    tdi_0 : out STD_LOGIC;
    runtest_0 : out STD_LOGIC;
    tck_0 : out STD_LOGIC;
    tms_0 : out STD_LOGIC;
    bscanid_en_0 : out STD_LOGIC;
    tdo_0 : in STD_LOGIC;
    drck_1 : out STD_LOGIC;
    reset_1 : out STD_LOGIC;
    sel_1 : out STD_LOGIC;
    capture_1 : out STD_LOGIC;
    shift_1 : out STD_LOGIC;
    update_1 : out STD_LOGIC;
    tdi_1 : out STD_LOGIC;
    runtest_1 : out STD_LOGIC;
    tck_1 : out STD_LOGIC;
    tms_1 : out STD_LOGIC;
    bscanid_en_1 : out STD_LOGIC;
    tdo_1 : in STD_LOGIC
  );
  end component bd_c443_bs_switch_2;
  component bd_c443_bs_mux_0 is
  port (
    mux_ctrl_update : in STD_LOGIC;
    mux_ctrl_capture : in STD_LOGIC;
    mux_ctrl_reset : in STD_LOGIC;
    mux_ctrl_runtest : in STD_LOGIC;
    mux_ctrl_tck : in STD_LOGIC;
    mux_ctrl_tms : in STD_LOGIC;
    mux_ctrl_tdi : in STD_LOGIC;
    mux_ctrl_sel : in STD_LOGIC;
    mux_ctrl_shift : in STD_LOGIC;
    mux_ctrl_drck : in STD_LOGIC;
    mux_ctrl_bscanid_en : in STD_LOGIC;
    mux_ctrl_tdo : out STD_LOGIC;
    prim_update : in STD_LOGIC;
    prim_capture : in STD_LOGIC;
    prim_reset : in STD_LOGIC;
    prim_runtest : in STD_LOGIC;
    prim_tck : in STD_LOGIC;
    prim_tms : in STD_LOGIC;
    prim_tdi : in STD_LOGIC;
    prim_sel : in STD_LOGIC;
    prim_shift : in STD_LOGIC;
    prim_drck : in STD_LOGIC;
    prim_bscanid_en : in STD_LOGIC;
    prim_tdo : out STD_LOGIC;
    soft_update : in STD_LOGIC;
    soft_capture : in STD_LOGIC;
    soft_reset : in STD_LOGIC;
    soft_runtest : in STD_LOGIC;
    soft_tck : in STD_LOGIC;
    soft_tms : in STD_LOGIC;
    soft_tdi : in STD_LOGIC;
    soft_sel : in STD_LOGIC;
    soft_shift : in STD_LOGIC;
    soft_drck : in STD_LOGIC;
    soft_bscanid_en : in STD_LOGIC;
    soft_tdo : out STD_LOGIC;
    update : out STD_LOGIC;
    capture : out STD_LOGIC;
    reset : out STD_LOGIC;
    runtest : out STD_LOGIC;
    tck : out STD_LOGIC;
    tms : out STD_LOGIC;
    tdi : out STD_LOGIC;
    sel : out STD_LOGIC;
    shift : out STD_LOGIC;
    drck : out STD_LOGIC;
    bscanid_en : out STD_LOGIC;
    tdo : in STD_LOGIC;
    mux : out STD_LOGIC
  );
  end component bd_c443_bs_mux_0;
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC;
  signal S_AXI_1_ARVALID : STD_LOGIC;
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal S_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC;
  signal S_AXI_1_AWVALID : STD_LOGIC;
  signal S_AXI_1_BREADY : STD_LOGIC;
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC;
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_RREADY : STD_LOGIC;
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC;
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_WREADY : STD_LOGIC;
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC;
  signal axi_jtag_tck : STD_LOGIC;
  signal axi_jtag_tdi : STD_LOGIC;
  signal axi_jtag_tms : STD_LOGIC;
  signal bs_mux_m_bscan_BSCANID_en : STD_LOGIC;
  signal bs_mux_m_bscan_CAPTURE : STD_LOGIC;
  signal bs_mux_m_bscan_DRCK : STD_LOGIC;
  signal bs_mux_m_bscan_RESET : STD_LOGIC;
  signal bs_mux_m_bscan_RUNTEST : STD_LOGIC;
  signal bs_mux_m_bscan_SEL : STD_LOGIC;
  signal bs_mux_m_bscan_SHIFT : STD_LOGIC;
  signal bs_mux_m_bscan_TCK : STD_LOGIC;
  signal bs_mux_m_bscan_TDI : STD_LOGIC;
  signal bs_mux_m_bscan_TDO : STD_LOGIC;
  signal bs_mux_m_bscan_TMS : STD_LOGIC;
  signal bs_mux_m_bscan_UPDATE : STD_LOGIC;
  signal bs_mux_mux : STD_LOGIC;
  signal bs_switch_1_m0_bscan_BSCANID_en : STD_LOGIC;
  signal bs_switch_1_m0_bscan_CAPTURE : STD_LOGIC;
  signal bs_switch_1_m0_bscan_DRCK : STD_LOGIC;
  signal bs_switch_1_m0_bscan_RESET : STD_LOGIC;
  signal bs_switch_1_m0_bscan_RUNTEST : STD_LOGIC;
  signal bs_switch_1_m0_bscan_SEL : STD_LOGIC;
  signal bs_switch_1_m0_bscan_SHIFT : STD_LOGIC;
  signal bs_switch_1_m0_bscan_TCK : STD_LOGIC;
  signal bs_switch_1_m0_bscan_TDI : STD_LOGIC;
  signal bs_switch_1_m0_bscan_TDO : STD_LOGIC;
  signal bs_switch_1_m0_bscan_TMS : STD_LOGIC;
  signal bs_switch_1_m0_bscan_UPDATE : STD_LOGIC;
  signal bs_switch_m0_bscan_BSCANID_en : STD_LOGIC;
  signal bs_switch_m0_bscan_CAPTURE : STD_LOGIC;
  signal bs_switch_m0_bscan_DRCK : STD_LOGIC;
  signal bs_switch_m0_bscan_RESET : STD_LOGIC;
  signal bs_switch_m0_bscan_RUNTEST : STD_LOGIC;
  signal bs_switch_m0_bscan_SEL : STD_LOGIC;
  signal bs_switch_m0_bscan_SHIFT : STD_LOGIC;
  signal bs_switch_m0_bscan_TCK : STD_LOGIC;
  signal bs_switch_m0_bscan_TDI : STD_LOGIC;
  signal bs_switch_m0_bscan_TDO : STD_LOGIC;
  signal bs_switch_m0_bscan_TMS : STD_LOGIC;
  signal bs_switch_m0_bscan_UPDATE : STD_LOGIC;
  signal bs_switch_m1_bscan_BSCANID_en : STD_LOGIC;
  signal bs_switch_m1_bscan_CAPTURE : STD_LOGIC;
  signal bs_switch_m1_bscan_DRCK : STD_LOGIC;
  signal bs_switch_m1_bscan_RESET : STD_LOGIC;
  signal bs_switch_m1_bscan_RUNTEST : STD_LOGIC;
  signal bs_switch_m1_bscan_SEL : STD_LOGIC;
  signal bs_switch_m1_bscan_SHIFT : STD_LOGIC;
  signal bs_switch_m1_bscan_TCK : STD_LOGIC;
  signal bs_switch_m1_bscan_TDI : STD_LOGIC;
  signal bs_switch_m1_bscan_TDO : STD_LOGIC;
  signal bs_switch_m1_bscan_TMS : STD_LOGIC;
  signal bs_switch_m1_bscan_UPDATE : STD_LOGIC;
  signal bsip_m_bscan_CAPTURE : STD_LOGIC;
  signal bsip_m_bscan_DRCK : STD_LOGIC;
  signal bsip_m_bscan_RESET : STD_LOGIC;
  signal bsip_m_bscan_RUNTEST : STD_LOGIC;
  signal bsip_m_bscan_SEL : STD_LOGIC;
  signal bsip_m_bscan_SHIFT : STD_LOGIC;
  signal bsip_m_bscan_TCK : STD_LOGIC;
  signal bsip_m_bscan_TDI : STD_LOGIC;
  signal bsip_m_bscan_TDO : STD_LOGIC;
  signal bsip_m_bscan_TMS : STD_LOGIC;
  signal bsip_m_bscan_UPDATE : STD_LOGIC;
  signal bsip_tap_tdo : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m0_bscan_bscanid_en : signal is "xilinx.com:interface:bscan:1.0 m0_bscan BSCANID_en";
  attribute X_INTERFACE_INFO of m0_bscan_capture : signal is "xilinx.com:interface:bscan:1.0 m0_bscan CAPTURE";
  attribute X_INTERFACE_INFO of m0_bscan_drck : signal is "xilinx.com:interface:bscan:1.0 m0_bscan DRCK";
  attribute X_INTERFACE_INFO of m0_bscan_reset : signal is "xilinx.com:interface:bscan:1.0 m0_bscan RESET";
  attribute X_INTERFACE_INFO of m0_bscan_runtest : signal is "xilinx.com:interface:bscan:1.0 m0_bscan RUNTEST";
  attribute X_INTERFACE_INFO of m0_bscan_sel : signal is "xilinx.com:interface:bscan:1.0 m0_bscan SEL";
  attribute X_INTERFACE_INFO of m0_bscan_shift : signal is "xilinx.com:interface:bscan:1.0 m0_bscan SHIFT";
  attribute X_INTERFACE_INFO of m0_bscan_tck : signal is "xilinx.com:interface:bscan:1.0 m0_bscan TCK";
  attribute X_INTERFACE_INFO of m0_bscan_tdi : signal is "xilinx.com:interface:bscan:1.0 m0_bscan TDI";
  attribute X_INTERFACE_INFO of m0_bscan_tdo : signal is "xilinx.com:interface:bscan:1.0 m0_bscan TDO";
  attribute X_INTERFACE_INFO of m0_bscan_tms : signal is "xilinx.com:interface:bscan:1.0 m0_bscan TMS";
  attribute X_INTERFACE_INFO of m0_bscan_update : signal is "xilinx.com:interface:bscan:1.0 m0_bscan UPDATE";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn:s_axi_lite_resetn, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_araddr : signal is "XIL_INTERFACENAME S_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, ASSOCIATED_BUSIF S_AXI, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, DATA_WIDTH 32, FREQ_HZ 99999001, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_1_ARADDR(4 downto 0) <= S_AXI_araddr(4 downto 0);
  S_AXI_1_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  S_AXI_1_ARVALID <= S_AXI_arvalid;
  S_AXI_1_AWADDR(4 downto 0) <= S_AXI_awaddr(4 downto 0);
  S_AXI_1_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  S_AXI_1_AWVALID <= S_AXI_awvalid;
  S_AXI_1_BREADY <= S_AXI_bready;
  S_AXI_1_RREADY <= S_AXI_rready;
  S_AXI_1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  S_AXI_1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  S_AXI_1_WVALID <= S_AXI_wvalid;
  S_AXI_arready <= S_AXI_1_ARREADY;
  S_AXI_awready <= S_AXI_1_AWREADY;
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid <= S_AXI_1_BVALID;
  S_AXI_rdata(31 downto 0) <= S_AXI_1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid <= S_AXI_1_RVALID;
  S_AXI_wready <= S_AXI_1_WREADY;
  bs_switch_1_m0_bscan_TDO <= m0_bscan_tdo;
  m0_bscan_bscanid_en <= bs_switch_1_m0_bscan_BSCANID_en;
  m0_bscan_capture <= bs_switch_1_m0_bscan_CAPTURE;
  m0_bscan_drck <= bs_switch_1_m0_bscan_DRCK;
  m0_bscan_reset <= bs_switch_1_m0_bscan_RESET;
  m0_bscan_runtest <= bs_switch_1_m0_bscan_RUNTEST;
  m0_bscan_sel <= bs_switch_1_m0_bscan_SEL;
  m0_bscan_shift <= bs_switch_1_m0_bscan_SHIFT;
  m0_bscan_tck <= bs_switch_1_m0_bscan_TCK;
  m0_bscan_tdi <= bs_switch_1_m0_bscan_TDI;
  m0_bscan_tms <= bs_switch_1_m0_bscan_TMS;
  m0_bscan_update <= bs_switch_1_m0_bscan_UPDATE;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
axi_jtag: component bd_c443_axi_jtag_0
     port map (
      mux_status => bs_mux_mux,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(4 downto 0) => S_AXI_1_ARADDR(4 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arprot(2 downto 0) => S_AXI_1_ARPROT(2 downto 0),
      s_axi_arready => S_AXI_1_ARREADY,
      s_axi_arvalid => S_AXI_1_ARVALID,
      s_axi_awaddr(4 downto 0) => S_AXI_1_AWADDR(4 downto 0),
      s_axi_awprot(2 downto 0) => S_AXI_1_AWPROT(2 downto 0),
      s_axi_awready => S_AXI_1_AWREADY,
      s_axi_awvalid => S_AXI_1_AWVALID,
      s_axi_bready => S_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      s_axi_rready => S_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      s_axi_wready => S_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_1_WVALID,
      tck => axi_jtag_tck,
      tdi => axi_jtag_tdi,
      tdo => bsip_tap_tdo,
      tms => axi_jtag_tms
    );
bs_mux: component bd_c443_bs_mux_0
     port map (
      bscanid_en => bs_mux_m_bscan_BSCANID_en,
      capture => bs_mux_m_bscan_CAPTURE,
      drck => bs_mux_m_bscan_DRCK,
      mux => bs_mux_mux,
      mux_ctrl_bscanid_en => bs_switch_m0_bscan_BSCANID_en,
      mux_ctrl_capture => bs_switch_m0_bscan_CAPTURE,
      mux_ctrl_drck => bs_switch_m0_bscan_DRCK,
      mux_ctrl_reset => bs_switch_m0_bscan_RESET,
      mux_ctrl_runtest => bs_switch_m0_bscan_RUNTEST,
      mux_ctrl_sel => bs_switch_m0_bscan_SEL,
      mux_ctrl_shift => bs_switch_m0_bscan_SHIFT,
      mux_ctrl_tck => bs_switch_m0_bscan_TCK,
      mux_ctrl_tdi => bs_switch_m0_bscan_TDI,
      mux_ctrl_tdo => bs_switch_m0_bscan_TDO,
      mux_ctrl_tms => bs_switch_m0_bscan_TMS,
      mux_ctrl_update => bs_switch_m0_bscan_UPDATE,
      prim_bscanid_en => bs_switch_m1_bscan_BSCANID_en,
      prim_capture => bs_switch_m1_bscan_CAPTURE,
      prim_drck => bs_switch_m1_bscan_DRCK,
      prim_reset => bs_switch_m1_bscan_RESET,
      prim_runtest => bs_switch_m1_bscan_RUNTEST,
      prim_sel => bs_switch_m1_bscan_SEL,
      prim_shift => bs_switch_m1_bscan_SHIFT,
      prim_tck => bs_switch_m1_bscan_TCK,
      prim_tdi => bs_switch_m1_bscan_TDI,
      prim_tdo => bs_switch_m1_bscan_TDO,
      prim_tms => bs_switch_m1_bscan_TMS,
      prim_update => bs_switch_m1_bscan_UPDATE,
      reset => bs_mux_m_bscan_RESET,
      runtest => bs_mux_m_bscan_RUNTEST,
      sel => bs_mux_m_bscan_SEL,
      shift => bs_mux_m_bscan_SHIFT,
      soft_bscanid_en => '0',
      soft_capture => bsip_m_bscan_CAPTURE,
      soft_drck => bsip_m_bscan_DRCK,
      soft_reset => bsip_m_bscan_RESET,
      soft_runtest => bsip_m_bscan_RUNTEST,
      soft_sel => bsip_m_bscan_SEL,
      soft_shift => bsip_m_bscan_SHIFT,
      soft_tck => bsip_m_bscan_TCK,
      soft_tdi => bsip_m_bscan_TDI,
      soft_tdo => bsip_m_bscan_TDO,
      soft_tms => bsip_m_bscan_TMS,
      soft_update => bsip_m_bscan_UPDATE,
      tck => bs_mux_m_bscan_TCK,
      tdi => bs_mux_m_bscan_TDI,
      tdo => bs_mux_m_bscan_TDO,
      tms => bs_mux_m_bscan_TMS,
      update => bs_mux_m_bscan_UPDATE
    );
bs_switch: component bd_c443_bs_switch_2
     port map (
      bscanid_en_0 => bs_switch_m0_bscan_BSCANID_en,
      bscanid_en_1 => bs_switch_m1_bscan_BSCANID_en,
      capture_0 => bs_switch_m0_bscan_CAPTURE,
      capture_1 => bs_switch_m1_bscan_CAPTURE,
      drck_0 => bs_switch_m0_bscan_DRCK,
      drck_1 => bs_switch_m1_bscan_DRCK,
      reset_0 => bs_switch_m0_bscan_RESET,
      reset_1 => bs_switch_m1_bscan_RESET,
      runtest_0 => bs_switch_m0_bscan_RUNTEST,
      runtest_1 => bs_switch_m1_bscan_RUNTEST,
      sel_0 => bs_switch_m0_bscan_SEL,
      sel_1 => bs_switch_m1_bscan_SEL,
      shift_0 => bs_switch_m0_bscan_SHIFT,
      shift_1 => bs_switch_m1_bscan_SHIFT,
      tck_0 => bs_switch_m0_bscan_TCK,
      tck_1 => bs_switch_m1_bscan_TCK,
      tdi_0 => bs_switch_m0_bscan_TDI,
      tdi_1 => bs_switch_m1_bscan_TDI,
      tdo_0 => bs_switch_m0_bscan_TDO,
      tdo_1 => bs_switch_m1_bscan_TDO,
      tms_0 => bs_switch_m0_bscan_TMS,
      tms_1 => bs_switch_m1_bscan_TMS,
      update_0 => bs_switch_m0_bscan_UPDATE,
      update_1 => bs_switch_m1_bscan_UPDATE
    );
bs_switch_1: component bd_c443_bs_switch_1_0
     port map (
      bscanid_en_0 => bs_switch_1_m0_bscan_BSCANID_en,
      capture_0 => bs_switch_1_m0_bscan_CAPTURE,
      drck_0 => bs_switch_1_m0_bscan_DRCK,
      reset_0 => bs_switch_1_m0_bscan_RESET,
      runtest_0 => bs_switch_1_m0_bscan_RUNTEST,
      s_bscan_capture => bs_mux_m_bscan_CAPTURE,
      s_bscan_drck => bs_mux_m_bscan_DRCK,
      s_bscan_reset => bs_mux_m_bscan_RESET,
      s_bscan_runtest => bs_mux_m_bscan_RUNTEST,
      s_bscan_sel => bs_mux_m_bscan_SEL,
      s_bscan_shift => bs_mux_m_bscan_SHIFT,
      s_bscan_tck => bs_mux_m_bscan_TCK,
      s_bscan_tdi => bs_mux_m_bscan_TDI,
      s_bscan_tdo => bs_mux_m_bscan_TDO,
      s_bscan_tms => bs_mux_m_bscan_TMS,
      s_bscan_update => bs_mux_m_bscan_UPDATE,
      s_bscanid_en => bs_mux_m_bscan_BSCANID_en,
      sel_0 => bs_switch_1_m0_bscan_SEL,
      shift_0 => bs_switch_1_m0_bscan_SHIFT,
      tck_0 => bs_switch_1_m0_bscan_TCK,
      tdi_0 => bs_switch_1_m0_bscan_TDI,
      tdo_0 => bs_switch_1_m0_bscan_TDO,
      tms_0 => bs_switch_1_m0_bscan_TMS,
      update_0 => bs_switch_1_m0_bscan_UPDATE
    );
bsip: component bd_c443_bsip_0
     port map (
      capture => bsip_m_bscan_CAPTURE,
      drck => bsip_m_bscan_DRCK,
      reset => bsip_m_bscan_RESET,
      runtest => bsip_m_bscan_RUNTEST,
      sel => bsip_m_bscan_SEL,
      shift => bsip_m_bscan_SHIFT,
      tap_tck => axi_jtag_tck,
      tap_tdi => axi_jtag_tdi,
      tap_tdo => bsip_tap_tdo,
      tap_tms => axi_jtag_tms,
      tck => bsip_m_bscan_TCK,
      tdi => bsip_m_bscan_TDI,
      tdo => bsip_m_bscan_TDO,
      tms => bsip_m_bscan_TMS,
      update => bsip_m_bscan_UPDATE
    );
end STRUCTURE;
