--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Fri Dec 17 12:21:23 2021
--Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CFGDONE : in STD_LOGIC;
    CFGINIT : in STD_LOGIC;
    ETH_CLK10 : out STD_LOGIC;
    ETH_CLK125 : out STD_LOGIC;
    ETH_CLK125_90 : out STD_LOGIC;
    ETH_CLK25 : out STD_LOGIC;
    ETH_resetn : out STD_LOGIC;
    GMII_col : in STD_LOGIC;
    GMII_crs : in STD_LOGIC;
    GMII_rx_clk : in STD_LOGIC;
    GMII_rx_dv : in STD_LOGIC;
    GMII_rx_er : in STD_LOGIC;
    GMII_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_speed_mode : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GMII_tx_clk : in STD_LOGIC;
    GMII_tx_en : out STD_LOGIC;
    GMII_tx_er : out STD_LOGIC;
    GMII_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GT_DIFF_REFCLK1_clk_n : in STD_LOGIC;
    GT_DIFF_REFCLK1_clk_p : in STD_LOGIC;
    GT_SERIAL_F2Z_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_F2Z_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_Z2F_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_Z2F_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED : out STD_LOGIC_VECTOR ( 2 downto 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_i : in STD_LOGIC;
    MDIO_mdio_o : out STD_LOGIC;
    MDIO_mdio_t : out STD_LOGIC;
    Si5345_INSEL_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ZYNQTCK : out STD_LOGIC;
    ZYNQTDI : out STD_LOGIC;
    ZYNQTDO : in STD_LOGIC;
    ZYNQTMS : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=22,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=12,da_axi_chip2chip_cnt=1,da_board_cnt=7,da_bram_cntlr_cnt=4,da_clkrst_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_zynq_ultra_ps_e_1 is
  port (
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_enet1_gmii_rx_clk : in STD_LOGIC;
    emio_enet1_speed_mode : out STD_LOGIC_VECTOR ( 2 downto 0 );
    emio_enet1_gmii_crs : in STD_LOGIC;
    emio_enet1_gmii_col : in STD_LOGIC;
    emio_enet1_gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet1_gmii_rx_er : in STD_LOGIC;
    emio_enet1_gmii_rx_dv : in STD_LOGIC;
    emio_enet1_gmii_tx_clk : in STD_LOGIC;
    emio_enet1_gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet1_gmii_tx_en : out STD_LOGIC;
    emio_enet1_gmii_tx_er : out STD_LOGIC;
    emio_enet1_mdio_mdc : out STD_LOGIC;
    emio_enet1_mdio_i : in STD_LOGIC;
    emio_enet1_mdio_o : out STD_LOGIC;
    emio_enet1_mdio_t : out STD_LOGIC;
    emio_enet1_tsu_inc_ctrl : in STD_LOGIC_VECTOR ( 1 downto 0 );
    emio_enet1_tsu_timer_cmp_val : out STD_LOGIC;
    emio_enet0_enet_tsu_timer_cnt : out STD_LOGIC_VECTOR ( 93 downto 0 );
    emio_enet1_ext_int_in : in STD_LOGIC;
    emio_enet1_dma_bus_width : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC
  );
  end component design_1_zynq_ultra_ps_e_1;
  component design_1_axi_bram_ctrl_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_axi_bram_ctrl_0_1;
  component design_1_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component design_1_blk_mem_gen_0_1;
  component design_1_led_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_led_1;
  component design_1_axi_smc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M06_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M06_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC
  );
  end component design_1_axi_smc_1;
  component design_1_rst_ps8_99M_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps8_99M_1;
  component design_1_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    clk_out4 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_debug_bridge_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
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
    m0_bscan_update : out STD_LOGIC
  );
  end component design_1_debug_bridge_0_0;
  component design_1_debug_bridge_1_0 is
  port (
    clk : in STD_LOGIC;
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
    S_BSCAN_update : in STD_LOGIC
  );
  end component design_1_debug_bridge_1_0;
  component design_1_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_ila_0_0;
  component design_1_debug_bridge_2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tap_tdi : out STD_LOGIC;
    tap_tdo : in STD_LOGIC;
    tap_tms : out STD_LOGIC;
    tap_tck : out STD_LOGIC;
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
    S_AXI_wvalid : in STD_LOGIC
  );
  end component design_1_debug_bridge_2_0;
  component design_1_heartbeat_0_0 is
  port (
    clk100 : in STD_LOGIC;
    resetn : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_heartbeat_0_0;
  component design_1_axi_chip2chip_0_0 is
  port (
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_c2c_m2s_intr_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_s2m_intr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_phy_clk : in STD_LOGIC;
    axi_c2c_aurora_channel_up : in STD_LOGIC;
    axi_c2c_aurora_tx_tready : in STD_LOGIC;
    axi_c2c_aurora_tx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    axi_c2c_aurora_tx_tvalid : out STD_LOGIC;
    axi_c2c_aurora_rx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    axi_c2c_aurora_rx_tvalid : in STD_LOGIC;
    aurora_do_cc : out STD_LOGIC;
    aurora_pma_init_in : in STD_LOGIC;
    aurora_init_clk : in STD_LOGIC;
    aurora_pma_init_out : out STD_LOGIC;
    aurora_mmcm_not_locked : in STD_LOGIC;
    aurora_reset_pb : out STD_LOGIC;
    axi_c2c_config_error_out : out STD_LOGIC;
    axi_c2c_link_status_out : out STD_LOGIC;
    axi_c2c_multi_bit_error_out : out STD_LOGIC;
    axi_c2c_link_error_out : out STD_LOGIC
  );
  end component design_1_axi_chip2chip_0_0;
  component design_1_aurora_64b66b_0_0 is
  port (
    rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_pb : in STD_LOGIC;
    power_down : in STD_LOGIC;
    pma_init : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    lane_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_out_clk : out STD_LOGIC;
    gt_pll_lock : out STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 63 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 63 );
    m_axi_rx_tvalid : out STD_LOGIC;
    mmcm_not_locked_out : out STD_LOGIC;
    init_clk : in STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    gt_refclk1_p : in STD_LOGIC;
    gt_refclk1_n : in STD_LOGIC;
    user_clk_out : out STD_LOGIC;
    sync_clk_out : out STD_LOGIC;
    gt_qpllclk_quad1_out : out STD_LOGIC;
    gt_qpllrefclk_quad1_out : out STD_LOGIC;
    gt_qpllrefclklost_quad1_out : out STD_LOGIC;
    gt_qplllock_quad1_out : out STD_LOGIC;
    gt_rxcdrovrden_in : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    gt_reset_out : out STD_LOGIC;
    gt_refclk1_out : out STD_LOGIC;
    gt_powergood : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_aurora_64b66b_0_0;
  component design_1_xlconcat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_2_0;
  component design_1_ila_2_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_ila_2_2;
  component design_1_pma_init_generator_0_0 is
  port (
    aur_init_clk : in STD_LOGIC;
    periph_reset : in STD_LOGIC;
    pma_init_in : out STD_LOGIC
  );
  end component design_1_pma_init_generator_0_0;
  component design_1_xlconcat_0_4 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component design_1_xlconcat_0_4;
  component design_1_ila_0_2 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component design_1_ila_0_2;
  component design_1_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_axi_gpio_0_0;
  component design_1_system_management_wiz_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccpsintlp_alarm_out : out STD_LOGIC;
    vccpsintfp_alarm_out : out STD_LOGIC;
    vccpsaux_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_system_management_wiz_0;
  component design_1_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_c_counter_binary_0_0;
  signal CFGDONE_1 : STD_LOGIC;
  signal CFGINIT_1 : STD_LOGIC;
  signal GT_DIFF_REFCLK1_1_CLK_N : STD_LOGIC;
  signal GT_DIFF_REFCLK1_1_CLK_P : STD_LOGIC;
  signal GT_SERIAL_F2Z_1_RXN : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GT_SERIAL_F2Z_1_RXP : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Si5345_INSEL_GPIO_TRI_O : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ZYNQTDO_1 : STD_LOGIC;
  signal aurora_64b66b_0_GT_SERIAL_TX_TXN : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_64b66b_0_GT_SERIAL_TX_TXP : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA : STD_LOGIC_VECTOR ( 0 to 63 );
  signal aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID : STD_LOGIC;
  signal aurora_64b66b_0_channel_up : STD_LOGIC;
  signal aurora_64b66b_0_gt_pll_lock : STD_LOGIC;
  signal aurora_64b66b_0_gt_powergood : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_64b66b_0_gt_qplllock_quad1_out : STD_LOGIC;
  signal aurora_64b66b_0_gt_qpllrefclklost_quad1_out : STD_LOGIC;
  signal aurora_64b66b_0_gt_reset_out : STD_LOGIC;
  signal aurora_64b66b_0_hard_err : STD_LOGIC;
  signal aurora_64b66b_0_lane_up : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aurora_64b66b_0_link_reset_out : STD_LOGIC;
  signal aurora_64b66b_0_mmcm_not_locked_out : STD_LOGIC;
  signal aurora_64b66b_0_soft_err : STD_LOGIC;
  signal aurora_64b66b_0_sys_reset_out : STD_LOGIC;
  signal aurora_64b66b_0_user_clk_out : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_chip2chip_0_AXIS_TX_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_chip2chip_0_AXIS_TX_TREADY : STD_LOGIC;
  signal axi_chip2chip_0_AXIS_TX_TVALID : STD_LOGIC;
  signal axi_chip2chip_0_aurora_pma_init_out : STD_LOGIC;
  signal axi_chip2chip_0_aurora_reset_pb : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_config_error_out : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_link_error_out : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_link_status_out : STD_LOGIC;
  signal axi_chip2chip_0_axi_c2c_multi_bit_error_out : STD_LOGIC;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smc_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smc_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M01_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M01_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M01_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M01_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M01_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_smc_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_smc_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M02_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M02_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M02_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M02_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M02_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_smc_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_smc_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M03_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M03_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M03_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M03_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M03_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M03_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M04_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M04_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M04_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M04_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M04_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M04_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M04_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M04_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smc_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smc_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M05_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M05_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M05_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M05_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M05_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M05_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_smc_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M06_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M06_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M06_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M06_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M06_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M06_AXI_WVALID : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_clk_out3 : STD_LOGIC;
  signal clk_wiz_0_clk_out4 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_BSCANID_EN : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_CAPTURE : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_DRCK : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_RESET : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_RUNTEST : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_SEL : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_SHIFT : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_TCK : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_TDI : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_TDO : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_TMS : STD_LOGIC;
  signal debug_bridge_0_m0_bscan_UPDATE : STD_LOGIC;
  signal debug_bridge_2_tap_tck : STD_LOGIC;
  signal debug_bridge_2_tap_tdi : STD_LOGIC;
  signal debug_bridge_2_tap_tms : STD_LOGIC;
  signal heartbeat_0_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal led_gpio_io_o : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pma_init_generator_0_pma_init_in : STD_LOGIC;
  signal rst_ps8_99M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps8_99M_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_GMII_ENET1_COL : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_CRS : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_RXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_GMII_ENET1_RX_CLK : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_RX_DV : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_RX_ER : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_SPEED_MODE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_GMII_ENET1_TXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_GMII_ENET1_TX_CLK : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_TX_EN : STD_LOGIC;
  signal zynq_ultra_ps_e_GMII_ENET1_TX_ER : STD_LOGIC;
  signal zynq_ultra_ps_e_MDIO_ENET1_MDC : STD_LOGIC;
  signal zynq_ultra_ps_e_MDIO_ENET1_MDIO_I : STD_LOGIC;
  signal zynq_ultra_ps_e_MDIO_ENET1_MDIO_O : STD_LOGIC;
  signal zynq_ultra_ps_e_MDIO_ENET1_MDIO_T : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_pl_clk1 : STD_LOGIC;
  signal zynq_ultra_ps_e_pl_resetn0 : STD_LOGIC;
  signal NLW_aurora_64b66b_0_gt_qpllclk_quad1_out_UNCONNECTED : STD_LOGIC;
  signal NLW_aurora_64b66b_0_gt_qpllrefclk_quad1_out_UNCONNECTED : STD_LOGIC;
  signal NLW_aurora_64b66b_0_gt_refclk1_out_UNCONNECTED : STD_LOGIC;
  signal NLW_aurora_64b66b_0_sync_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_aurora_64b66b_0_tx_out_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_aurora_do_cc_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_chip2chip_0_axi_c2c_s2m_intr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M00_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M00_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_smc_M00_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M00_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_smc_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M04_AXI_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M04_AXI_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_smc_M04_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M04_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M04_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_smc_M04_AXI_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M04_AXI_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_smc_M04_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M04_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_M04_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_smc_M05_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M05_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M06_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M06_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps8_99M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps8_99M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps8_99M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_system_management_wiz_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_ot_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_vccpsaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_vccpsintfp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_vccpsintlp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_system_management_wiz_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_zynq_ultra_ps_e_emio_enet1_tsu_timer_cmp_val_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_emio_enet0_enet_tsu_timer_cnt_UNCONNECTED : STD_LOGIC_VECTOR ( 93 downto 0 );
  signal NLW_zynq_ultra_ps_e_emio_enet1_dma_bus_width_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ETH_CLK10 : signal is "xilinx.com:signal:clock:1.0 CLK.ETH_CLK10 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ETH_CLK10 : signal is "XIL_INTERFACENAME CLK.ETH_CLK10, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, FREQ_HZ 9999900, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ETH_CLK125 : signal is "xilinx.com:signal:clock:1.0 CLK.ETH_CLK125 CLK";
  attribute X_INTERFACE_PARAMETER of ETH_CLK125 : signal is "XIL_INTERFACENAME CLK.ETH_CLK125, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, FREQ_HZ 124998750, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ETH_CLK125_90 : signal is "xilinx.com:signal:clock:1.0 CLK.ETH_CLK125_90 CLK";
  attribute X_INTERFACE_PARAMETER of ETH_CLK125_90 : signal is "XIL_INTERFACENAME CLK.ETH_CLK125_90, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, FREQ_HZ 124998750, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ETH_CLK25 : signal is "xilinx.com:signal:clock:1.0 CLK.ETH_CLK25 CLK";
  attribute X_INTERFACE_PARAMETER of ETH_CLK25 : signal is "XIL_INTERFACENAME CLK.ETH_CLK25, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, FREQ_HZ 24999750, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ETH_resetn : signal is "xilinx.com:signal:reset:1.0 RST.ETH_RESETN RST";
  attribute X_INTERFACE_PARAMETER of ETH_resetn : signal is "XIL_INTERFACENAME RST.ETH_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of GMII_col : signal is "xilinx.com:interface:gmii:1.0 GMII COL";
  attribute X_INTERFACE_INFO of GMII_crs : signal is "xilinx.com:interface:gmii:1.0 GMII CRS";
  attribute X_INTERFACE_INFO of GMII_rx_clk : signal is "xilinx.com:interface:gmii:1.0 GMII RX_CLK";
  attribute X_INTERFACE_INFO of GMII_rx_dv : signal is "xilinx.com:interface:gmii:1.0 GMII RX_DV";
  attribute X_INTERFACE_INFO of GMII_rx_er : signal is "xilinx.com:interface:gmii:1.0 GMII RX_ER";
  attribute X_INTERFACE_INFO of GMII_tx_clk : signal is "xilinx.com:interface:gmii:1.0 GMII TX_CLK";
  attribute X_INTERFACE_INFO of GMII_tx_en : signal is "xilinx.com:interface:gmii:1.0 GMII TX_EN";
  attribute X_INTERFACE_INFO of GMII_tx_er : signal is "xilinx.com:interface:gmii:1.0 GMII TX_ER";
  attribute X_INTERFACE_INFO of GT_DIFF_REFCLK1_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK1 CLK_N";
  attribute X_INTERFACE_PARAMETER of GT_DIFF_REFCLK1_clk_n : signal is "XIL_INTERFACENAME GT_DIFF_REFCLK1, CAN_DEBUG false, FREQ_HZ 125000000";
  attribute X_INTERFACE_INFO of GT_DIFF_REFCLK1_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK1 CLK_P";
  attribute X_INTERFACE_INFO of MDIO_mdc : signal is "xilinx.com:interface:mdio:1.0 MDIO MDC";
  attribute X_INTERFACE_PARAMETER of MDIO_mdc : signal is "XIL_INTERFACENAME MDIO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of MDIO_mdio_i : signal is "xilinx.com:interface:mdio:1.0 MDIO MDIO_I";
  attribute X_INTERFACE_INFO of MDIO_mdio_o : signal is "xilinx.com:interface:mdio:1.0 MDIO MDIO_O";
  attribute X_INTERFACE_INFO of MDIO_mdio_t : signal is "xilinx.com:interface:mdio:1.0 MDIO MDIO_T";
  attribute X_INTERFACE_INFO of ZYNQTCK : signal is "xilinx.com:signal:clock:1.0 CLK.ZYNQTCK CLK";
  attribute X_INTERFACE_PARAMETER of ZYNQTCK : signal is "XIL_INTERFACENAME CLK.ZYNQTCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ZYNQTDI : signal is "xilinx.com:signal:data:1.0 DATA.ZYNQTDI DATA";
  attribute X_INTERFACE_PARAMETER of ZYNQTDI : signal is "XIL_INTERFACENAME DATA.ZYNQTDI, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ZYNQTDO : signal is "xilinx.com:signal:data:1.0 DATA.ZYNQTDO DATA";
  attribute X_INTERFACE_PARAMETER of ZYNQTDO : signal is "XIL_INTERFACENAME DATA.ZYNQTDO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of GMII_rxd : signal is "xilinx.com:interface:gmii:1.0 GMII RXD";
  attribute X_INTERFACE_INFO of GMII_speed_mode : signal is "xilinx.com:interface:gmii:1.0 GMII SPEED_MODE";
  attribute X_INTERFACE_INFO of GMII_txd : signal is "xilinx.com:interface:gmii:1.0 GMII TXD";
  attribute X_INTERFACE_INFO of GT_SERIAL_F2Z_rxn : signal is "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX:1.0 GT_SERIAL_F2Z RXN";
  attribute X_INTERFACE_INFO of GT_SERIAL_F2Z_rxp : signal is "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX:1.0 GT_SERIAL_F2Z RXP";
  attribute X_INTERFACE_INFO of GT_SERIAL_Z2F_txn : signal is "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_Z2F TXN";
  attribute X_INTERFACE_INFO of GT_SERIAL_Z2F_txp : signal is "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_Z2F TXP";
  attribute X_INTERFACE_INFO of Si5345_INSEL_tri_o : signal is "xilinx.com:interface:gpio:1.0 Si5345_INSEL TRI_O";
begin
  CFGDONE_1 <= CFGDONE;
  CFGINIT_1 <= CFGINIT;
  ETH_CLK10 <= clk_wiz_0_clk_out4;
  ETH_CLK125 <= clk_wiz_0_clk_out1;
  ETH_CLK125_90 <= clk_wiz_0_clk_out2;
  ETH_CLK25 <= clk_wiz_0_clk_out3;
  ETH_resetn <= clk_wiz_0_locked;
  GMII_speed_mode(2 downto 0) <= zynq_ultra_ps_e_GMII_ENET1_SPEED_MODE(2 downto 0);
  GMII_tx_en <= zynq_ultra_ps_e_GMII_ENET1_TX_EN;
  GMII_tx_er <= zynq_ultra_ps_e_GMII_ENET1_TX_ER;
  GMII_txd(7 downto 0) <= zynq_ultra_ps_e_GMII_ENET1_TXD(7 downto 0);
  GT_DIFF_REFCLK1_1_CLK_N <= GT_DIFF_REFCLK1_clk_n;
  GT_DIFF_REFCLK1_1_CLK_P <= GT_DIFF_REFCLK1_clk_p;
  GT_SERIAL_F2Z_1_RXN(0) <= GT_SERIAL_F2Z_rxn(0);
  GT_SERIAL_F2Z_1_RXP(0) <= GT_SERIAL_F2Z_rxp(0);
  GT_SERIAL_Z2F_txn(0) <= aurora_64b66b_0_GT_SERIAL_TX_TXN(0);
  GT_SERIAL_Z2F_txp(0) <= aurora_64b66b_0_GT_SERIAL_TX_TXP(0);
  LED(2 downto 0) <= heartbeat_0_dout(2 downto 0);
  MDIO_mdc <= zynq_ultra_ps_e_MDIO_ENET1_MDC;
  MDIO_mdio_o <= zynq_ultra_ps_e_MDIO_ENET1_MDIO_O;
  MDIO_mdio_t <= zynq_ultra_ps_e_MDIO_ENET1_MDIO_T;
  Si5345_INSEL_tri_o(1 downto 0) <= Si5345_INSEL_GPIO_TRI_O(1 downto 0);
  ZYNQTCK <= debug_bridge_2_tap_tck;
  ZYNQTDI <= debug_bridge_2_tap_tdi;
  ZYNQTDO_1 <= ZYNQTDO;
  ZYNQTMS <= debug_bridge_2_tap_tms;
  zynq_ultra_ps_e_GMII_ENET1_COL <= GMII_col;
  zynq_ultra_ps_e_GMII_ENET1_CRS <= GMII_crs;
  zynq_ultra_ps_e_GMII_ENET1_RXD(7 downto 0) <= GMII_rxd(7 downto 0);
  zynq_ultra_ps_e_GMII_ENET1_RX_CLK <= GMII_rx_clk;
  zynq_ultra_ps_e_GMII_ENET1_RX_DV <= GMII_rx_dv;
  zynq_ultra_ps_e_GMII_ENET1_RX_ER <= GMII_rx_er;
  zynq_ultra_ps_e_GMII_ENET1_TX_CLK <= GMII_tx_clk;
  zynq_ultra_ps_e_MDIO_ENET1_MDIO_I <= MDIO_mdio_i;
JTAG_bridge_XCVU13P: component design_1_debug_bridge_2_0
     port map (
      S_AXI_araddr(4 downto 0) => axi_smc_M03_AXI_ARADDR(4 downto 0),
      S_AXI_arprot(2 downto 0) => axi_smc_M03_AXI_ARPROT(2 downto 0),
      S_AXI_arready => axi_smc_M03_AXI_ARREADY,
      S_AXI_arvalid => axi_smc_M03_AXI_ARVALID,
      S_AXI_awaddr(4 downto 0) => axi_smc_M03_AXI_AWADDR(4 downto 0),
      S_AXI_awprot(2 downto 0) => axi_smc_M03_AXI_AWPROT(2 downto 0),
      S_AXI_awready => axi_smc_M03_AXI_AWREADY,
      S_AXI_awvalid => axi_smc_M03_AXI_AWVALID,
      S_AXI_bready => axi_smc_M03_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => axi_smc_M03_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => axi_smc_M03_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => axi_smc_M03_AXI_RDATA(31 downto 0),
      S_AXI_rready => axi_smc_M03_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => axi_smc_M03_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => axi_smc_M03_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => axi_smc_M03_AXI_WDATA(31 downto 0),
      S_AXI_wready => axi_smc_M03_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_smc_M03_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_smc_M03_AXI_WVALID,
      s_axi_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_aresetn => rst_ps8_99M_peripheral_aresetn(0),
      tap_tck => debug_bridge_2_tap_tck,
      tap_tdi => debug_bridge_2_tap_tdi,
      tap_tdo => ZYNQTDO_1,
      tap_tms => debug_bridge_2_tap_tms
    );
Si5345_INSEL: component design_1_axi_gpio_0_0
     port map (
      gpio_io_o(1 downto 0) => Si5345_INSEL_GPIO_TRI_O(1 downto 0),
      s_axi_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_araddr(8 downto 0) => axi_smc_M05_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps8_99M_peripheral_aresetn(0),
      s_axi_arready => axi_smc_M05_AXI_ARREADY,
      s_axi_arvalid => axi_smc_M05_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smc_M05_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smc_M05_AXI_AWREADY,
      s_axi_awvalid => axi_smc_M05_AXI_AWVALID,
      s_axi_bready => axi_smc_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smc_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smc_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M05_AXI_WVALID
    );
aurora_64b66b_0: component design_1_aurora_64b66b_0_0
     port map (
      channel_up => aurora_64b66b_0_channel_up,
      gt_pll_lock => aurora_64b66b_0_gt_pll_lock,
      gt_powergood(0) => aurora_64b66b_0_gt_powergood(0),
      gt_qpllclk_quad1_out => NLW_aurora_64b66b_0_gt_qpllclk_quad1_out_UNCONNECTED,
      gt_qplllock_quad1_out => aurora_64b66b_0_gt_qplllock_quad1_out,
      gt_qpllrefclk_quad1_out => NLW_aurora_64b66b_0_gt_qpllrefclk_quad1_out_UNCONNECTED,
      gt_qpllrefclklost_quad1_out => aurora_64b66b_0_gt_qpllrefclklost_quad1_out,
      gt_refclk1_n => GT_DIFF_REFCLK1_1_CLK_N,
      gt_refclk1_out => NLW_aurora_64b66b_0_gt_refclk1_out_UNCONNECTED,
      gt_refclk1_p => GT_DIFF_REFCLK1_1_CLK_P,
      gt_reset_out => aurora_64b66b_0_gt_reset_out,
      gt_rxcdrovrden_in => '0',
      hard_err => aurora_64b66b_0_hard_err,
      init_clk => zynq_ultra_ps_e_pl_clk0,
      lane_up(0) => aurora_64b66b_0_lane_up(0),
      link_reset_out => aurora_64b66b_0_link_reset_out,
      loopback(2 downto 0) => B"000",
      m_axi_rx_tdata(0 to 63) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(0 to 63),
      m_axi_rx_tvalid => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID,
      mmcm_not_locked_out => aurora_64b66b_0_mmcm_not_locked_out,
      pma_init => axi_chip2chip_0_aurora_pma_init_out,
      power_down => '0',
      reset_pb => axi_chip2chip_0_aurora_reset_pb,
      rxn(0) => GT_SERIAL_F2Z_1_RXN(0),
      rxp(0) => GT_SERIAL_F2Z_1_RXP(0),
      s_axi_tx_tdata(0) => axi_chip2chip_0_AXIS_TX_TDATA(63),
      s_axi_tx_tdata(1) => axi_chip2chip_0_AXIS_TX_TDATA(62),
      s_axi_tx_tdata(2) => axi_chip2chip_0_AXIS_TX_TDATA(61),
      s_axi_tx_tdata(3) => axi_chip2chip_0_AXIS_TX_TDATA(60),
      s_axi_tx_tdata(4) => axi_chip2chip_0_AXIS_TX_TDATA(59),
      s_axi_tx_tdata(5) => axi_chip2chip_0_AXIS_TX_TDATA(58),
      s_axi_tx_tdata(6) => axi_chip2chip_0_AXIS_TX_TDATA(57),
      s_axi_tx_tdata(7) => axi_chip2chip_0_AXIS_TX_TDATA(56),
      s_axi_tx_tdata(8) => axi_chip2chip_0_AXIS_TX_TDATA(55),
      s_axi_tx_tdata(9) => axi_chip2chip_0_AXIS_TX_TDATA(54),
      s_axi_tx_tdata(10) => axi_chip2chip_0_AXIS_TX_TDATA(53),
      s_axi_tx_tdata(11) => axi_chip2chip_0_AXIS_TX_TDATA(52),
      s_axi_tx_tdata(12) => axi_chip2chip_0_AXIS_TX_TDATA(51),
      s_axi_tx_tdata(13) => axi_chip2chip_0_AXIS_TX_TDATA(50),
      s_axi_tx_tdata(14) => axi_chip2chip_0_AXIS_TX_TDATA(49),
      s_axi_tx_tdata(15) => axi_chip2chip_0_AXIS_TX_TDATA(48),
      s_axi_tx_tdata(16) => axi_chip2chip_0_AXIS_TX_TDATA(47),
      s_axi_tx_tdata(17) => axi_chip2chip_0_AXIS_TX_TDATA(46),
      s_axi_tx_tdata(18) => axi_chip2chip_0_AXIS_TX_TDATA(45),
      s_axi_tx_tdata(19) => axi_chip2chip_0_AXIS_TX_TDATA(44),
      s_axi_tx_tdata(20) => axi_chip2chip_0_AXIS_TX_TDATA(43),
      s_axi_tx_tdata(21) => axi_chip2chip_0_AXIS_TX_TDATA(42),
      s_axi_tx_tdata(22) => axi_chip2chip_0_AXIS_TX_TDATA(41),
      s_axi_tx_tdata(23) => axi_chip2chip_0_AXIS_TX_TDATA(40),
      s_axi_tx_tdata(24) => axi_chip2chip_0_AXIS_TX_TDATA(39),
      s_axi_tx_tdata(25) => axi_chip2chip_0_AXIS_TX_TDATA(38),
      s_axi_tx_tdata(26) => axi_chip2chip_0_AXIS_TX_TDATA(37),
      s_axi_tx_tdata(27) => axi_chip2chip_0_AXIS_TX_TDATA(36),
      s_axi_tx_tdata(28) => axi_chip2chip_0_AXIS_TX_TDATA(35),
      s_axi_tx_tdata(29) => axi_chip2chip_0_AXIS_TX_TDATA(34),
      s_axi_tx_tdata(30) => axi_chip2chip_0_AXIS_TX_TDATA(33),
      s_axi_tx_tdata(31) => axi_chip2chip_0_AXIS_TX_TDATA(32),
      s_axi_tx_tdata(32) => axi_chip2chip_0_AXIS_TX_TDATA(31),
      s_axi_tx_tdata(33) => axi_chip2chip_0_AXIS_TX_TDATA(30),
      s_axi_tx_tdata(34) => axi_chip2chip_0_AXIS_TX_TDATA(29),
      s_axi_tx_tdata(35) => axi_chip2chip_0_AXIS_TX_TDATA(28),
      s_axi_tx_tdata(36) => axi_chip2chip_0_AXIS_TX_TDATA(27),
      s_axi_tx_tdata(37) => axi_chip2chip_0_AXIS_TX_TDATA(26),
      s_axi_tx_tdata(38) => axi_chip2chip_0_AXIS_TX_TDATA(25),
      s_axi_tx_tdata(39) => axi_chip2chip_0_AXIS_TX_TDATA(24),
      s_axi_tx_tdata(40) => axi_chip2chip_0_AXIS_TX_TDATA(23),
      s_axi_tx_tdata(41) => axi_chip2chip_0_AXIS_TX_TDATA(22),
      s_axi_tx_tdata(42) => axi_chip2chip_0_AXIS_TX_TDATA(21),
      s_axi_tx_tdata(43) => axi_chip2chip_0_AXIS_TX_TDATA(20),
      s_axi_tx_tdata(44) => axi_chip2chip_0_AXIS_TX_TDATA(19),
      s_axi_tx_tdata(45) => axi_chip2chip_0_AXIS_TX_TDATA(18),
      s_axi_tx_tdata(46) => axi_chip2chip_0_AXIS_TX_TDATA(17),
      s_axi_tx_tdata(47) => axi_chip2chip_0_AXIS_TX_TDATA(16),
      s_axi_tx_tdata(48) => axi_chip2chip_0_AXIS_TX_TDATA(15),
      s_axi_tx_tdata(49) => axi_chip2chip_0_AXIS_TX_TDATA(14),
      s_axi_tx_tdata(50) => axi_chip2chip_0_AXIS_TX_TDATA(13),
      s_axi_tx_tdata(51) => axi_chip2chip_0_AXIS_TX_TDATA(12),
      s_axi_tx_tdata(52) => axi_chip2chip_0_AXIS_TX_TDATA(11),
      s_axi_tx_tdata(53) => axi_chip2chip_0_AXIS_TX_TDATA(10),
      s_axi_tx_tdata(54) => axi_chip2chip_0_AXIS_TX_TDATA(9),
      s_axi_tx_tdata(55) => axi_chip2chip_0_AXIS_TX_TDATA(8),
      s_axi_tx_tdata(56) => axi_chip2chip_0_AXIS_TX_TDATA(7),
      s_axi_tx_tdata(57) => axi_chip2chip_0_AXIS_TX_TDATA(6),
      s_axi_tx_tdata(58) => axi_chip2chip_0_AXIS_TX_TDATA(5),
      s_axi_tx_tdata(59) => axi_chip2chip_0_AXIS_TX_TDATA(4),
      s_axi_tx_tdata(60) => axi_chip2chip_0_AXIS_TX_TDATA(3),
      s_axi_tx_tdata(61) => axi_chip2chip_0_AXIS_TX_TDATA(2),
      s_axi_tx_tdata(62) => axi_chip2chip_0_AXIS_TX_TDATA(1),
      s_axi_tx_tdata(63) => axi_chip2chip_0_AXIS_TX_TDATA(0),
      s_axi_tx_tready => axi_chip2chip_0_AXIS_TX_TREADY,
      s_axi_tx_tvalid => axi_chip2chip_0_AXIS_TX_TVALID,
      soft_err => aurora_64b66b_0_soft_err,
      sync_clk_out => NLW_aurora_64b66b_0_sync_clk_out_UNCONNECTED,
      sys_reset_out => aurora_64b66b_0_sys_reset_out,
      tx_out_clk => NLW_aurora_64b66b_0_tx_out_clk_UNCONNECTED,
      txn(0) => aurora_64b66b_0_GT_SERIAL_TX_TXN(0),
      txp(0) => aurora_64b66b_0_GT_SERIAL_TX_TXP(0),
      user_clk_out => aurora_64b66b_0_user_clk_out
    );
axi_bram_ctrl_0: component design_1_axi_bram_ctrl_0_1
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_addr_b(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rddata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_we_b(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      bram_wrdata_b(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      s_axi_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps8_99M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_smc_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_smc_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_smc_M00_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_smc_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_smc_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_smc_M00_AXI_AWVALID,
      s_axi_bready => axi_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_smc_M00_AXI_RLAST,
      s_axi_rready => axi_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_smc_M00_AXI_WLAST,
      s_axi_wready => axi_smc_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M00_AXI_WVALID
    );
axi_chip2chip_0: component design_1_axi_chip2chip_0_0
     port map (
      aurora_do_cc => NLW_axi_chip2chip_0_aurora_do_cc_UNCONNECTED,
      aurora_init_clk => zynq_ultra_ps_e_pl_clk0,
      aurora_mmcm_not_locked => aurora_64b66b_0_mmcm_not_locked_out,
      aurora_pma_init_in => pma_init_generator_0_pma_init_in,
      aurora_pma_init_out => axi_chip2chip_0_aurora_pma_init_out,
      aurora_reset_pb => axi_chip2chip_0_aurora_reset_pb,
      axi_c2c_aurora_channel_up => aurora_64b66b_0_channel_up,
      axi_c2c_aurora_rx_tdata(63) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(0),
      axi_c2c_aurora_rx_tdata(62) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(1),
      axi_c2c_aurora_rx_tdata(61) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(2),
      axi_c2c_aurora_rx_tdata(60) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(3),
      axi_c2c_aurora_rx_tdata(59) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(4),
      axi_c2c_aurora_rx_tdata(58) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(5),
      axi_c2c_aurora_rx_tdata(57) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(6),
      axi_c2c_aurora_rx_tdata(56) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(7),
      axi_c2c_aurora_rx_tdata(55) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(8),
      axi_c2c_aurora_rx_tdata(54) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(9),
      axi_c2c_aurora_rx_tdata(53) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(10),
      axi_c2c_aurora_rx_tdata(52) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(11),
      axi_c2c_aurora_rx_tdata(51) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(12),
      axi_c2c_aurora_rx_tdata(50) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(13),
      axi_c2c_aurora_rx_tdata(49) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(14),
      axi_c2c_aurora_rx_tdata(48) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(15),
      axi_c2c_aurora_rx_tdata(47) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(16),
      axi_c2c_aurora_rx_tdata(46) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(17),
      axi_c2c_aurora_rx_tdata(45) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(18),
      axi_c2c_aurora_rx_tdata(44) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(19),
      axi_c2c_aurora_rx_tdata(43) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(20),
      axi_c2c_aurora_rx_tdata(42) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(21),
      axi_c2c_aurora_rx_tdata(41) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(22),
      axi_c2c_aurora_rx_tdata(40) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(23),
      axi_c2c_aurora_rx_tdata(39) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(24),
      axi_c2c_aurora_rx_tdata(38) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(25),
      axi_c2c_aurora_rx_tdata(37) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(26),
      axi_c2c_aurora_rx_tdata(36) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(27),
      axi_c2c_aurora_rx_tdata(35) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(28),
      axi_c2c_aurora_rx_tdata(34) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(29),
      axi_c2c_aurora_rx_tdata(33) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(30),
      axi_c2c_aurora_rx_tdata(32) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(31),
      axi_c2c_aurora_rx_tdata(31) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(32),
      axi_c2c_aurora_rx_tdata(30) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(33),
      axi_c2c_aurora_rx_tdata(29) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(34),
      axi_c2c_aurora_rx_tdata(28) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(35),
      axi_c2c_aurora_rx_tdata(27) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(36),
      axi_c2c_aurora_rx_tdata(26) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(37),
      axi_c2c_aurora_rx_tdata(25) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(38),
      axi_c2c_aurora_rx_tdata(24) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(39),
      axi_c2c_aurora_rx_tdata(23) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(40),
      axi_c2c_aurora_rx_tdata(22) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(41),
      axi_c2c_aurora_rx_tdata(21) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(42),
      axi_c2c_aurora_rx_tdata(20) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(43),
      axi_c2c_aurora_rx_tdata(19) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(44),
      axi_c2c_aurora_rx_tdata(18) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(45),
      axi_c2c_aurora_rx_tdata(17) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(46),
      axi_c2c_aurora_rx_tdata(16) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(47),
      axi_c2c_aurora_rx_tdata(15) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(48),
      axi_c2c_aurora_rx_tdata(14) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(49),
      axi_c2c_aurora_rx_tdata(13) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(50),
      axi_c2c_aurora_rx_tdata(12) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(51),
      axi_c2c_aurora_rx_tdata(11) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(52),
      axi_c2c_aurora_rx_tdata(10) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(53),
      axi_c2c_aurora_rx_tdata(9) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(54),
      axi_c2c_aurora_rx_tdata(8) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(55),
      axi_c2c_aurora_rx_tdata(7) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(56),
      axi_c2c_aurora_rx_tdata(6) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(57),
      axi_c2c_aurora_rx_tdata(5) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(58),
      axi_c2c_aurora_rx_tdata(4) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(59),
      axi_c2c_aurora_rx_tdata(3) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(60),
      axi_c2c_aurora_rx_tdata(2) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(61),
      axi_c2c_aurora_rx_tdata(1) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(62),
      axi_c2c_aurora_rx_tdata(0) => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA(63),
      axi_c2c_aurora_rx_tvalid => aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID,
      axi_c2c_aurora_tx_tdata(63 downto 0) => axi_chip2chip_0_AXIS_TX_TDATA(63 downto 0),
      axi_c2c_aurora_tx_tready => axi_chip2chip_0_AXIS_TX_TREADY,
      axi_c2c_aurora_tx_tvalid => axi_chip2chip_0_AXIS_TX_TVALID,
      axi_c2c_config_error_out => axi_chip2chip_0_axi_c2c_config_error_out,
      axi_c2c_link_error_out => axi_chip2chip_0_axi_c2c_link_error_out,
      axi_c2c_link_status_out => axi_chip2chip_0_axi_c2c_link_status_out,
      axi_c2c_m2s_intr_in(3 downto 0) => B"0000",
      axi_c2c_multi_bit_error_out => axi_chip2chip_0_axi_c2c_multi_bit_error_out,
      axi_c2c_phy_clk => aurora_64b66b_0_user_clk_out,
      axi_c2c_s2m_intr_out(3 downto 0) => NLW_axi_chip2chip_0_axi_c2c_s2m_intr_out_UNCONNECTED(3 downto 0),
      s_aclk => zynq_ultra_ps_e_pl_clk0,
      s_aresetn => rst_ps8_99M_peripheral_aresetn(0),
      s_axi_araddr(31 downto 0) => axi_smc_M04_AXI_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => axi_smc_M04_AXI_ARBURST(1 downto 0),
      s_axi_arlen(7 downto 0) => axi_smc_M04_AXI_ARLEN(7 downto 0),
      s_axi_arready => axi_smc_M04_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_smc_M04_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_smc_M04_AXI_ARVALID,
      s_axi_awaddr(31 downto 0) => axi_smc_M04_AXI_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => axi_smc_M04_AXI_AWBURST(1 downto 0),
      s_axi_awlen(7 downto 0) => axi_smc_M04_AXI_AWLEN(7 downto 0),
      s_axi_awready => axi_smc_M04_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_smc_M04_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_smc_M04_AXI_AWVALID,
      s_axi_bready => axi_smc_M04_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M04_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M04_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M04_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_smc_M04_AXI_RLAST,
      s_axi_rready => axi_smc_M04_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M04_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M04_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M04_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_smc_M04_AXI_WLAST,
      s_axi_wready => axi_smc_M04_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M04_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M04_AXI_WVALID
    );
axi_smc: component design_1_axi_smc_1
     port map (
      M00_AXI_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => NLW_axi_smc_M00_AXI_arqos_UNCONNECTED(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(15 downto 0) => NLW_axi_smc_M00_AXI_aruser_UNCONNECTED(15 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => NLW_axi_smc_M00_AXI_awqos_UNCONNECTED(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(15 downto 0) => NLW_axi_smc_M00_AXI_awuser_UNCONNECTED(15 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => axi_smc_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_axi_smc_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => axi_smc_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_smc_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => axi_smc_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_axi_smc_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => axi_smc_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_smc_M01_AXI_AWVALID,
      M01_AXI_bready => axi_smc_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_smc_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_smc_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_smc_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_smc_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_smc_M01_AXI_WVALID,
      M02_AXI_araddr(15 downto 0) => axi_smc_M02_AXI_ARADDR(15 downto 0),
      M02_AXI_arprot(2 downto 0) => axi_smc_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => axi_smc_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_smc_M02_AXI_ARVALID,
      M02_AXI_awaddr(15 downto 0) => axi_smc_M02_AXI_AWADDR(15 downto 0),
      M02_AXI_awprot(2 downto 0) => axi_smc_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => axi_smc_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_smc_M02_AXI_AWVALID,
      M02_AXI_bready => axi_smc_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_smc_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_smc_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_smc_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_smc_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_smc_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_smc_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_smc_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_smc_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_smc_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_smc_M02_AXI_WVALID,
      M03_AXI_araddr(15 downto 0) => axi_smc_M03_AXI_ARADDR(15 downto 0),
      M03_AXI_arprot(2 downto 0) => axi_smc_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => axi_smc_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_smc_M03_AXI_ARVALID,
      M03_AXI_awaddr(15 downto 0) => axi_smc_M03_AXI_AWADDR(15 downto 0),
      M03_AXI_awprot(2 downto 0) => axi_smc_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => axi_smc_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_smc_M03_AXI_AWVALID,
      M03_AXI_bready => axi_smc_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_smc_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_smc_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_smc_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_smc_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_smc_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_smc_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_smc_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_smc_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_smc_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_smc_M03_AXI_WVALID,
      M04_AXI_araddr(31 downto 0) => axi_smc_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arburst(1 downto 0) => axi_smc_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => NLW_axi_smc_M04_AXI_arcache_UNCONNECTED(3 downto 0),
      M04_AXI_arlen(7 downto 0) => axi_smc_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock(0) => NLW_axi_smc_M04_AXI_arlock_UNCONNECTED(0),
      M04_AXI_arprot(2 downto 0) => NLW_axi_smc_M04_AXI_arprot_UNCONNECTED(2 downto 0),
      M04_AXI_arqos(3 downto 0) => NLW_axi_smc_M04_AXI_arqos_UNCONNECTED(3 downto 0),
      M04_AXI_arready => axi_smc_M04_AXI_ARREADY,
      M04_AXI_arsize(2 downto 0) => axi_smc_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_aruser(15 downto 0) => NLW_axi_smc_M04_AXI_aruser_UNCONNECTED(15 downto 0),
      M04_AXI_arvalid => axi_smc_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => axi_smc_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awburst(1 downto 0) => axi_smc_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => NLW_axi_smc_M04_AXI_awcache_UNCONNECTED(3 downto 0),
      M04_AXI_awlen(7 downto 0) => axi_smc_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock(0) => NLW_axi_smc_M04_AXI_awlock_UNCONNECTED(0),
      M04_AXI_awprot(2 downto 0) => NLW_axi_smc_M04_AXI_awprot_UNCONNECTED(2 downto 0),
      M04_AXI_awqos(3 downto 0) => NLW_axi_smc_M04_AXI_awqos_UNCONNECTED(3 downto 0),
      M04_AXI_awready => axi_smc_M04_AXI_AWREADY,
      M04_AXI_awsize(2 downto 0) => axi_smc_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awuser(15 downto 0) => NLW_axi_smc_M04_AXI_awuser_UNCONNECTED(15 downto 0),
      M04_AXI_awvalid => axi_smc_M04_AXI_AWVALID,
      M04_AXI_bready => axi_smc_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_smc_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_smc_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_smc_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rlast => axi_smc_M04_AXI_RLAST,
      M04_AXI_rready => axi_smc_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_smc_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_smc_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_smc_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wlast => axi_smc_M04_AXI_WLAST,
      M04_AXI_wready => axi_smc_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_smc_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_smc_M04_AXI_WVALID,
      M05_AXI_araddr(8 downto 0) => axi_smc_M05_AXI_ARADDR(8 downto 0),
      M05_AXI_arprot(2 downto 0) => NLW_axi_smc_M05_AXI_arprot_UNCONNECTED(2 downto 0),
      M05_AXI_arready => axi_smc_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_smc_M05_AXI_ARVALID,
      M05_AXI_awaddr(8 downto 0) => axi_smc_M05_AXI_AWADDR(8 downto 0),
      M05_AXI_awprot(2 downto 0) => NLW_axi_smc_M05_AXI_awprot_UNCONNECTED(2 downto 0),
      M05_AXI_awready => axi_smc_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_smc_M05_AXI_AWVALID,
      M05_AXI_bready => axi_smc_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_smc_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_smc_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_smc_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_smc_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_smc_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_smc_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_smc_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_smc_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_smc_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_smc_M05_AXI_WVALID,
      M06_AXI_araddr(12 downto 0) => axi_smc_M06_AXI_ARADDR(12 downto 0),
      M06_AXI_arprot(2 downto 0) => NLW_axi_smc_M06_AXI_arprot_UNCONNECTED(2 downto 0),
      M06_AXI_arready => axi_smc_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_smc_M06_AXI_ARVALID,
      M06_AXI_awaddr(12 downto 0) => axi_smc_M06_AXI_AWADDR(12 downto 0),
      M06_AXI_awprot(2 downto 0) => NLW_axi_smc_M06_AXI_awprot_UNCONNECTED(2 downto 0),
      M06_AXI_awready => axi_smc_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_smc_M06_AXI_AWVALID,
      M06_AXI_bready => axi_smc_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_smc_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_smc_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_smc_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_smc_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_smc_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_smc_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_smc_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_smc_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_smc_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_smc_M06_AXI_WVALID,
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      S00_AXI_aruser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      S00_AXI_awuser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID,
      S00_AXI_rdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID,
      S00_AXI_wdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY,
      S00_AXI_wstrb(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID,
      aclk => zynq_ultra_ps_e_pl_clk0,
      aresetn => rst_ps8_99M_peripheral_aresetn(0)
    );
blk_mem_gen_0: component design_1_blk_mem_gen_0_1
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      addrb(31 downto 13) => B"0000000000000000000",
      addrb(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      rstb_busy => NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(3 downto 0)
    );
c_counter_binary_0: component design_1_c_counter_binary_0_0
     port map (
      CLK => zynq_ultra_ps_e_pl_clk0,
      Q(5 downto 0) => c_counter_binary_0_Q(5 downto 0)
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => zynq_ultra_ps_e_pl_clk1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      clk_out3 => clk_wiz_0_clk_out3,
      clk_out4 => clk_wiz_0_clk_out4,
      locked => clk_wiz_0_locked,
      resetn => zynq_ultra_ps_e_pl_resetn0
    );
debug_bridge_1: component design_1_debug_bridge_1_0
     port map (
      S_BSCAN_bscanid_en => debug_bridge_0_m0_bscan_BSCANID_EN,
      S_BSCAN_capture => debug_bridge_0_m0_bscan_CAPTURE,
      S_BSCAN_drck => debug_bridge_0_m0_bscan_DRCK,
      S_BSCAN_reset => debug_bridge_0_m0_bscan_RESET,
      S_BSCAN_runtest => debug_bridge_0_m0_bscan_RUNTEST,
      S_BSCAN_sel => debug_bridge_0_m0_bscan_SEL,
      S_BSCAN_shift => debug_bridge_0_m0_bscan_SHIFT,
      S_BSCAN_tck => debug_bridge_0_m0_bscan_TCK,
      S_BSCAN_tdi => debug_bridge_0_m0_bscan_TDI,
      S_BSCAN_tdo => debug_bridge_0_m0_bscan_TDO,
      S_BSCAN_tms => debug_bridge_0_m0_bscan_TMS,
      S_BSCAN_update => debug_bridge_0_m0_bscan_UPDATE,
      clk => zynq_ultra_ps_e_pl_clk0
    );
debug_bridge_PL: component design_1_debug_bridge_0_0
     port map (
      S_AXI_araddr(4 downto 0) => axi_smc_M02_AXI_ARADDR(4 downto 0),
      S_AXI_arprot(2 downto 0) => axi_smc_M02_AXI_ARPROT(2 downto 0),
      S_AXI_arready => axi_smc_M02_AXI_ARREADY,
      S_AXI_arvalid => axi_smc_M02_AXI_ARVALID,
      S_AXI_awaddr(4 downto 0) => axi_smc_M02_AXI_AWADDR(4 downto 0),
      S_AXI_awprot(2 downto 0) => axi_smc_M02_AXI_AWPROT(2 downto 0),
      S_AXI_awready => axi_smc_M02_AXI_AWREADY,
      S_AXI_awvalid => axi_smc_M02_AXI_AWVALID,
      S_AXI_bready => axi_smc_M02_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => axi_smc_M02_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => axi_smc_M02_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => axi_smc_M02_AXI_RDATA(31 downto 0),
      S_AXI_rready => axi_smc_M02_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => axi_smc_M02_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => axi_smc_M02_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => axi_smc_M02_AXI_WDATA(31 downto 0),
      S_AXI_wready => axi_smc_M02_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_smc_M02_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_smc_M02_AXI_WVALID,
      m0_bscan_bscanid_en => debug_bridge_0_m0_bscan_BSCANID_EN,
      m0_bscan_capture => debug_bridge_0_m0_bscan_CAPTURE,
      m0_bscan_drck => debug_bridge_0_m0_bscan_DRCK,
      m0_bscan_reset => debug_bridge_0_m0_bscan_RESET,
      m0_bscan_runtest => debug_bridge_0_m0_bscan_RUNTEST,
      m0_bscan_sel => debug_bridge_0_m0_bscan_SEL,
      m0_bscan_shift => debug_bridge_0_m0_bscan_SHIFT,
      m0_bscan_tck => debug_bridge_0_m0_bscan_TCK,
      m0_bscan_tdi => debug_bridge_0_m0_bscan_TDI,
      m0_bscan_tdo => debug_bridge_0_m0_bscan_TDO,
      m0_bscan_tms => debug_bridge_0_m0_bscan_TMS,
      m0_bscan_update => debug_bridge_0_m0_bscan_UPDATE,
      s_axi_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_aresetn => rst_ps8_99M_peripheral_aresetn(0)
    );
gpio_led: component design_1_led_1
     port map (
      gpio_io_o(2 downto 0) => led_gpio_io_o(2 downto 0),
      s_axi_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_araddr(8 downto 0) => axi_smc_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps8_99M_peripheral_aresetn(0),
      s_axi_arready => axi_smc_M01_AXI_ARREADY,
      s_axi_arvalid => axi_smc_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smc_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smc_M01_AXI_AWREADY,
      s_axi_awvalid => axi_smc_M01_AXI_AWVALID,
      s_axi_bready => axi_smc_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smc_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smc_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M01_AXI_WVALID
    );
heartbeat_0: component design_1_heartbeat_0_0
     port map (
      clk100 => zynq_ultra_ps_e_pl_clk0,
      din(2 downto 0) => led_gpio_io_o(2 downto 0),
      dout(2 downto 0) => heartbeat_0_dout(2 downto 0),
      resetn => rst_ps8_99M_peripheral_aresetn(0)
    );
ila_0: component design_1_ila_0_2
     port map (
      clk => zynq_ultra_ps_e_pl_clk0,
      probe0(18 downto 0) => xlconcat_0_dout(18 downto 0)
    );
ila_6bit_counter: component design_1_ila_0_0
     port map (
      clk => zynq_ultra_ps_e_pl_clk0,
      probe0(5 downto 0) => c_counter_binary_0_Q(5 downto 0)
    );
ila_CFG: component design_1_ila_2_2
     port map (
      clk => zynq_ultra_ps_e_pl_clk0,
      probe0(1 downto 0) => xlconcat_2_dout(1 downto 0)
    );
pma_init_generator_0: component design_1_pma_init_generator_0_0
     port map (
      aur_init_clk => zynq_ultra_ps_e_pl_clk0,
      periph_reset => rst_ps8_99M_peripheral_reset(0),
      pma_init_in => pma_init_generator_0_pma_init_in
    );
rst_ps8_99M: component design_1_rst_ps8_99M_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps8_99M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_pl_resetn0,
      interconnect_aresetn(0) => NLW_rst_ps8_99M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps8_99M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps8_99M_peripheral_aresetn(0),
      peripheral_reset(0) => rst_ps8_99M_peripheral_reset(0),
      slowest_sync_clk => zynq_ultra_ps_e_pl_clk0
    );
system_management_wiz: component design_1_system_management_wiz_0
     port map (
      alarm_out => NLW_system_management_wiz_alarm_out_UNCONNECTED,
      busy_out => NLW_system_management_wiz_busy_out_UNCONNECTED,
      channel_out(5 downto 0) => NLW_system_management_wiz_channel_out_UNCONNECTED(5 downto 0),
      eoc_out => NLW_system_management_wiz_eoc_out_UNCONNECTED,
      eos_out => NLW_system_management_wiz_eos_out_UNCONNECTED,
      ip2intc_irpt => NLW_system_management_wiz_ip2intc_irpt_UNCONNECTED,
      ot_out => NLW_system_management_wiz_ot_out_UNCONNECTED,
      s_axi_aclk => zynq_ultra_ps_e_pl_clk0,
      s_axi_araddr(12 downto 0) => axi_smc_M06_AXI_ARADDR(12 downto 0),
      s_axi_aresetn => rst_ps8_99M_peripheral_aresetn(0),
      s_axi_arready => axi_smc_M06_AXI_ARREADY,
      s_axi_arvalid => axi_smc_M06_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_smc_M06_AXI_AWADDR(12 downto 0),
      s_axi_awready => axi_smc_M06_AXI_AWREADY,
      s_axi_awvalid => axi_smc_M06_AXI_AWVALID,
      s_axi_bready => axi_smc_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smc_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smc_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M06_AXI_WVALID,
      user_temp_alarm_out => NLW_system_management_wiz_user_temp_alarm_out_UNCONNECTED,
      vccaux_alarm_out => NLW_system_management_wiz_vccaux_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_system_management_wiz_vccint_alarm_out_UNCONNECTED,
      vccpsaux_alarm_out => NLW_system_management_wiz_vccpsaux_alarm_out_UNCONNECTED,
      vccpsintfp_alarm_out => NLW_system_management_wiz_vccpsintfp_alarm_out_UNCONNECTED,
      vccpsintlp_alarm_out => NLW_system_management_wiz_vccpsintlp_alarm_out_UNCONNECTED
    );
xlconcat_0: component design_1_xlconcat_0_4
     port map (
      In0(0) => axi_chip2chip_0_axi_c2c_link_status_out,
      In1(0) => axi_chip2chip_0_axi_c2c_config_error_out,
      In10(0) => aurora_64b66b_0_hard_err,
      In11(0) => aurora_64b66b_0_soft_err,
      In12(0) => aurora_64b66b_0_mmcm_not_locked_out,
      In13(0) => aurora_64b66b_0_gt_qplllock_quad1_out,
      In14(0) => aurora_64b66b_0_gt_qpllrefclklost_quad1_out,
      In15(0) => aurora_64b66b_0_link_reset_out,
      In16(0) => aurora_64b66b_0_sys_reset_out,
      In17(0) => aurora_64b66b_0_gt_reset_out,
      In18(0) => aurora_64b66b_0_gt_powergood(0),
      In2(0) => axi_chip2chip_0_axi_c2c_link_error_out,
      In3(0) => axi_chip2chip_0_axi_c2c_multi_bit_error_out,
      In4(0) => axi_chip2chip_0_aurora_reset_pb,
      In5(0) => axi_chip2chip_0_aurora_pma_init_out,
      In6(0) => pma_init_generator_0_pma_init_in,
      In7(0) => aurora_64b66b_0_channel_up,
      In8(0) => aurora_64b66b_0_lane_up(0),
      In9(0) => aurora_64b66b_0_gt_pll_lock,
      dout(18 downto 0) => xlconcat_0_dout(18 downto 0)
    );
xlconcat_2: component design_1_xlconcat_2_0
     port map (
      In0(0) => CFGINIT_1,
      In1(0) => CFGDONE_1,
      dout(1 downto 0) => xlconcat_2_dout(1 downto 0)
    );
zynq_ultra_ps_e: component design_1_zynq_ultra_ps_e_1
     port map (
      emio_enet0_enet_tsu_timer_cnt(93 downto 0) => NLW_zynq_ultra_ps_e_emio_enet0_enet_tsu_timer_cnt_UNCONNECTED(93 downto 0),
      emio_enet1_dma_bus_width(1 downto 0) => NLW_zynq_ultra_ps_e_emio_enet1_dma_bus_width_UNCONNECTED(1 downto 0),
      emio_enet1_ext_int_in => '0',
      emio_enet1_gmii_col => zynq_ultra_ps_e_GMII_ENET1_COL,
      emio_enet1_gmii_crs => zynq_ultra_ps_e_GMII_ENET1_CRS,
      emio_enet1_gmii_rx_clk => zynq_ultra_ps_e_GMII_ENET1_RX_CLK,
      emio_enet1_gmii_rx_dv => zynq_ultra_ps_e_GMII_ENET1_RX_DV,
      emio_enet1_gmii_rx_er => zynq_ultra_ps_e_GMII_ENET1_RX_ER,
      emio_enet1_gmii_rxd(7 downto 0) => zynq_ultra_ps_e_GMII_ENET1_RXD(7 downto 0),
      emio_enet1_gmii_tx_clk => zynq_ultra_ps_e_GMII_ENET1_TX_CLK,
      emio_enet1_gmii_tx_en => zynq_ultra_ps_e_GMII_ENET1_TX_EN,
      emio_enet1_gmii_tx_er => zynq_ultra_ps_e_GMII_ENET1_TX_ER,
      emio_enet1_gmii_txd(7 downto 0) => zynq_ultra_ps_e_GMII_ENET1_TXD(7 downto 0),
      emio_enet1_mdio_i => zynq_ultra_ps_e_MDIO_ENET1_MDIO_I,
      emio_enet1_mdio_mdc => zynq_ultra_ps_e_MDIO_ENET1_MDC,
      emio_enet1_mdio_o => zynq_ultra_ps_e_MDIO_ENET1_MDIO_O,
      emio_enet1_mdio_t => zynq_ultra_ps_e_MDIO_ENET1_MDIO_T,
      emio_enet1_speed_mode(2 downto 0) => zynq_ultra_ps_e_GMII_ENET1_SPEED_MODE(2 downto 0),
      emio_enet1_tsu_inc_ctrl(1 downto 0) => B"00",
      emio_enet1_tsu_timer_cmp_val => NLW_zynq_ultra_ps_e_emio_enet1_tsu_timer_cmp_val_UNCONNECTED,
      maxigp2_araddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARADDR(39 downto 0),
      maxigp2_arburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARBURST(1 downto 0),
      maxigp2_arcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARCACHE(3 downto 0),
      maxigp2_arid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARID(15 downto 0),
      maxigp2_arlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLEN(7 downto 0),
      maxigp2_arlock => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARLOCK,
      maxigp2_arprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARPROT(2 downto 0),
      maxigp2_arqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARQOS(3 downto 0),
      maxigp2_arready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARREADY,
      maxigp2_arsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARSIZE(2 downto 0),
      maxigp2_aruser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARUSER(15 downto 0),
      maxigp2_arvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_ARVALID,
      maxigp2_awaddr(39 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWADDR(39 downto 0),
      maxigp2_awburst(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWBURST(1 downto 0),
      maxigp2_awcache(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWCACHE(3 downto 0),
      maxigp2_awid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWID(15 downto 0),
      maxigp2_awlen(7 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLEN(7 downto 0),
      maxigp2_awlock => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWLOCK,
      maxigp2_awprot(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWPROT(2 downto 0),
      maxigp2_awqos(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWQOS(3 downto 0),
      maxigp2_awready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWREADY,
      maxigp2_awsize(2 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWSIZE(2 downto 0),
      maxigp2_awuser(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWUSER(15 downto 0),
      maxigp2_awvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_AWVALID,
      maxigp2_bid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BID(15 downto 0),
      maxigp2_bready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BREADY,
      maxigp2_bresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BRESP(1 downto 0),
      maxigp2_bvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_BVALID,
      maxigp2_rdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RDATA(31 downto 0),
      maxigp2_rid(15 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RID(15 downto 0),
      maxigp2_rlast => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RLAST,
      maxigp2_rready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RREADY,
      maxigp2_rresp(1 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RRESP(1 downto 0),
      maxigp2_rvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_RVALID,
      maxigp2_wdata(31 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WDATA(31 downto 0),
      maxigp2_wlast => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WLAST,
      maxigp2_wready => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WREADY,
      maxigp2_wstrb(3 downto 0) => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WSTRB(3 downto 0),
      maxigp2_wvalid => zynq_ultra_ps_e_M_AXI_HPM0_LPD_WVALID,
      maxihpm0_lpd_aclk => zynq_ultra_ps_e_pl_clk0,
      pl_clk0 => zynq_ultra_ps_e_pl_clk0,
      pl_clk1 => zynq_ultra_ps_e_pl_clk1,
      pl_resetn0 => zynq_ultra_ps_e_pl_resetn0
    );
end STRUCTURE;
