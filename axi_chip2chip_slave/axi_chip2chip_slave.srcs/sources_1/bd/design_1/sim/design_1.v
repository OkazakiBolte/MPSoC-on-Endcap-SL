//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri Dec 24 01:06:29 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_bram_cntlr_cnt=2,da_clkrst_cnt=11,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (GT_DIFF_REFCLK1_clk_n,
    GT_DIFF_REFCLK1_clk_p,
    GT_SERIAL_F2Z_txn,
    GT_SERIAL_F2Z_txp,
    GT_SERIAL_Z2F_rxn,
    GT_SERIAL_Z2F_rxp,
    clk125_D_clk_n,
    clk125_D_clk_p,
    heartbeat);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_DIFF_REFCLK1, CAN_DEBUG false, FREQ_HZ 125000000" *) input GT_DIFF_REFCLK1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK1 CLK_P" *) input GT_DIFF_REFCLK1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_F2Z TXN" *) output [0:0]GT_SERIAL_F2Z_txn;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_F2Z TXP" *) output [0:0]GT_SERIAL_F2Z_txp;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX:1.0 GT_SERIAL_Z2F RXN" *) input [0:0]GT_SERIAL_Z2F_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX:1.0 GT_SERIAL_Z2F RXP" *) input [0:0]GT_SERIAL_Z2F_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk125_D CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk125_D, CAN_DEBUG false, FREQ_HZ 125000000" *) input clk125_D_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk125_D CLK_P" *) input clk125_D_clk_p;
  output [0:0]heartbeat;

  wire GT_DIFF_REFCLK1_1_CLK_N;
  wire GT_DIFF_REFCLK1_1_CLK_P;
  wire [0:0]GT_SERIAL_Z2F_1_RXN;
  wire [0:0]GT_SERIAL_Z2F_1_RXP;
  wire [0:0]aurora_64b66b_0_GT_SERIAL_TX_TXN;
  wire [0:0]aurora_64b66b_0_GT_SERIAL_TX_TXP;
  wire [0:63]aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA;
  wire aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID;
  wire aurora_64b66b_0_channel_up;
  wire [0:0]aurora_64b66b_0_gt_powergood;
  wire aurora_64b66b_0_gt_qplllock_quad1_out;
  wire aurora_64b66b_0_gt_qpllrefclklost_quad1_out;
  wire aurora_64b66b_0_gt_reset_out;
  wire aurora_64b66b_0_link_reset_out;
  wire aurora_64b66b_0_mmcm_not_locked_out;
  wire aurora_64b66b_0_sys_reset_out;
  wire aurora_64b66b_0_user_clk_out;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [63:0]axi_chip2chip_0_AXIS_TX_TDATA;
  wire axi_chip2chip_0_AXIS_TX_TREADY;
  wire axi_chip2chip_0_AXIS_TX_TVALID;
  wire axi_chip2chip_0_aurora_pma_init_out;
  wire axi_chip2chip_0_aurora_reset_pb;
  wire axi_chip2chip_0_axi_c2c_config_error_out;
  wire axi_chip2chip_0_axi_c2c_link_status_out;
  wire axi_chip2chip_0_axi_c2c_multi_bit_error_out;
  wire [31:0]axi_chip2chip_0_m_axi_ARADDR;
  wire [1:0]axi_chip2chip_0_m_axi_ARBURST;
  wire [5:0]axi_chip2chip_0_m_axi_ARID;
  wire [7:0]axi_chip2chip_0_m_axi_ARLEN;
  wire axi_chip2chip_0_m_axi_ARREADY;
  wire [2:0]axi_chip2chip_0_m_axi_ARSIZE;
  wire axi_chip2chip_0_m_axi_ARVALID;
  wire [31:0]axi_chip2chip_0_m_axi_AWADDR;
  wire [1:0]axi_chip2chip_0_m_axi_AWBURST;
  wire [5:0]axi_chip2chip_0_m_axi_AWID;
  wire [7:0]axi_chip2chip_0_m_axi_AWLEN;
  wire axi_chip2chip_0_m_axi_AWREADY;
  wire [2:0]axi_chip2chip_0_m_axi_AWSIZE;
  wire axi_chip2chip_0_m_axi_AWVALID;
  wire [5:0]axi_chip2chip_0_m_axi_BID;
  wire axi_chip2chip_0_m_axi_BREADY;
  wire [1:0]axi_chip2chip_0_m_axi_BRESP;
  wire axi_chip2chip_0_m_axi_BVALID;
  wire [31:0]axi_chip2chip_0_m_axi_RDATA;
  wire [5:0]axi_chip2chip_0_m_axi_RID;
  wire axi_chip2chip_0_m_axi_RLAST;
  wire axi_chip2chip_0_m_axi_RREADY;
  wire [1:0]axi_chip2chip_0_m_axi_RRESP;
  wire axi_chip2chip_0_m_axi_RVALID;
  wire [31:0]axi_chip2chip_0_m_axi_WDATA;
  wire axi_chip2chip_0_m_axi_WLAST;
  wire axi_chip2chip_0_m_axi_WREADY;
  wire [3:0]axi_chip2chip_0_m_axi_WSTRB;
  wire axi_chip2chip_0_m_axi_WVALID;
  wire clk125_D_1_CLK_N;
  wire clk125_D_1_CLK_P;
  wire clk_wiz_2_clk_out1;
  wire [5:0]counter_0_dout;
  wire [0:0]heartbeat_0_dout;
  wire pma_init_generator_0_pma_init_in;
  wire rst_clk_wiz_2_100M_peripheral_aresetn;
  wire [13:0]xlconcat_0_dout;

  assign GT_DIFF_REFCLK1_1_CLK_N = GT_DIFF_REFCLK1_clk_n;
  assign GT_DIFF_REFCLK1_1_CLK_P = GT_DIFF_REFCLK1_clk_p;
  assign GT_SERIAL_F2Z_txn[0] = aurora_64b66b_0_GT_SERIAL_TX_TXN;
  assign GT_SERIAL_F2Z_txp[0] = aurora_64b66b_0_GT_SERIAL_TX_TXP;
  assign GT_SERIAL_Z2F_1_RXN = GT_SERIAL_Z2F_rxn[0];
  assign GT_SERIAL_Z2F_1_RXP = GT_SERIAL_Z2F_rxp[0];
  assign clk125_D_1_CLK_N = clk125_D_clk_n;
  assign clk125_D_1_CLK_P = clk125_D_clk_p;
  assign heartbeat[0] = heartbeat_0_dout;
  design_1_aurora_64b66b_0_0 aurora_64b66b_0
       (.channel_up(aurora_64b66b_0_channel_up),
        .gt_powergood(aurora_64b66b_0_gt_powergood),
        .gt_qplllock_quad1_out(aurora_64b66b_0_gt_qplllock_quad1_out),
        .gt_qpllrefclklost_quad1_out(aurora_64b66b_0_gt_qpllrefclklost_quad1_out),
        .gt_refclk1_n(GT_DIFF_REFCLK1_1_CLK_N),
        .gt_refclk1_p(GT_DIFF_REFCLK1_1_CLK_P),
        .gt_reset_out(aurora_64b66b_0_gt_reset_out),
        .gt_rxcdrovrden_in(1'b0),
        .init_clk(clk_wiz_2_clk_out1),
        .link_reset_out(aurora_64b66b_0_link_reset_out),
        .loopback({1'b0,1'b0,1'b0}),
        .m_axi_rx_tdata(aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA),
        .m_axi_rx_tvalid(aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID),
        .mmcm_not_locked_out(aurora_64b66b_0_mmcm_not_locked_out),
        .pma_init(axi_chip2chip_0_aurora_pma_init_out),
        .power_down(1'b0),
        .reset_pb(axi_chip2chip_0_aurora_reset_pb),
        .rxn(GT_SERIAL_Z2F_1_RXN),
        .rxp(GT_SERIAL_Z2F_1_RXP),
        .s_axi_tx_tdata({axi_chip2chip_0_AXIS_TX_TDATA[63],axi_chip2chip_0_AXIS_TX_TDATA[62],axi_chip2chip_0_AXIS_TX_TDATA[61],axi_chip2chip_0_AXIS_TX_TDATA[60],axi_chip2chip_0_AXIS_TX_TDATA[59],axi_chip2chip_0_AXIS_TX_TDATA[58],axi_chip2chip_0_AXIS_TX_TDATA[57],axi_chip2chip_0_AXIS_TX_TDATA[56],axi_chip2chip_0_AXIS_TX_TDATA[55],axi_chip2chip_0_AXIS_TX_TDATA[54],axi_chip2chip_0_AXIS_TX_TDATA[53],axi_chip2chip_0_AXIS_TX_TDATA[52],axi_chip2chip_0_AXIS_TX_TDATA[51],axi_chip2chip_0_AXIS_TX_TDATA[50],axi_chip2chip_0_AXIS_TX_TDATA[49],axi_chip2chip_0_AXIS_TX_TDATA[48],axi_chip2chip_0_AXIS_TX_TDATA[47],axi_chip2chip_0_AXIS_TX_TDATA[46],axi_chip2chip_0_AXIS_TX_TDATA[45],axi_chip2chip_0_AXIS_TX_TDATA[44],axi_chip2chip_0_AXIS_TX_TDATA[43],axi_chip2chip_0_AXIS_TX_TDATA[42],axi_chip2chip_0_AXIS_TX_TDATA[41],axi_chip2chip_0_AXIS_TX_TDATA[40],axi_chip2chip_0_AXIS_TX_TDATA[39],axi_chip2chip_0_AXIS_TX_TDATA[38],axi_chip2chip_0_AXIS_TX_TDATA[37],axi_chip2chip_0_AXIS_TX_TDATA[36],axi_chip2chip_0_AXIS_TX_TDATA[35],axi_chip2chip_0_AXIS_TX_TDATA[34],axi_chip2chip_0_AXIS_TX_TDATA[33],axi_chip2chip_0_AXIS_TX_TDATA[32],axi_chip2chip_0_AXIS_TX_TDATA[31],axi_chip2chip_0_AXIS_TX_TDATA[30],axi_chip2chip_0_AXIS_TX_TDATA[29],axi_chip2chip_0_AXIS_TX_TDATA[28],axi_chip2chip_0_AXIS_TX_TDATA[27],axi_chip2chip_0_AXIS_TX_TDATA[26],axi_chip2chip_0_AXIS_TX_TDATA[25],axi_chip2chip_0_AXIS_TX_TDATA[24],axi_chip2chip_0_AXIS_TX_TDATA[23],axi_chip2chip_0_AXIS_TX_TDATA[22],axi_chip2chip_0_AXIS_TX_TDATA[21],axi_chip2chip_0_AXIS_TX_TDATA[20],axi_chip2chip_0_AXIS_TX_TDATA[19],axi_chip2chip_0_AXIS_TX_TDATA[18],axi_chip2chip_0_AXIS_TX_TDATA[17],axi_chip2chip_0_AXIS_TX_TDATA[16],axi_chip2chip_0_AXIS_TX_TDATA[15],axi_chip2chip_0_AXIS_TX_TDATA[14],axi_chip2chip_0_AXIS_TX_TDATA[13],axi_chip2chip_0_AXIS_TX_TDATA[12],axi_chip2chip_0_AXIS_TX_TDATA[11],axi_chip2chip_0_AXIS_TX_TDATA[10],axi_chip2chip_0_AXIS_TX_TDATA[9],axi_chip2chip_0_AXIS_TX_TDATA[8],axi_chip2chip_0_AXIS_TX_TDATA[7],axi_chip2chip_0_AXIS_TX_TDATA[6],axi_chip2chip_0_AXIS_TX_TDATA[5],axi_chip2chip_0_AXIS_TX_TDATA[4],axi_chip2chip_0_AXIS_TX_TDATA[3],axi_chip2chip_0_AXIS_TX_TDATA[2],axi_chip2chip_0_AXIS_TX_TDATA[1],axi_chip2chip_0_AXIS_TX_TDATA[0]}),
        .s_axi_tx_tready(axi_chip2chip_0_AXIS_TX_TREADY),
        .s_axi_tx_tvalid(axi_chip2chip_0_AXIS_TX_TVALID),
        .sys_reset_out(aurora_64b66b_0_sys_reset_out),
        .txn(aurora_64b66b_0_GT_SERIAL_TX_TXN),
        .txp(aurora_64b66b_0_GT_SERIAL_TX_TXP),
        .user_clk_out(aurora_64b66b_0_user_clk_out));
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(clk_wiz_2_clk_out1),
        .s_axi_araddr(axi_chip2chip_0_m_axi_ARADDR[15:0]),
        .s_axi_arburst(axi_chip2chip_0_m_axi_ARBURST),
        .s_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_aresetn(rst_clk_wiz_2_100M_peripheral_aresetn),
        .s_axi_arid(axi_chip2chip_0_m_axi_ARID),
        .s_axi_arlen(axi_chip2chip_0_m_axi_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(axi_chip2chip_0_m_axi_ARREADY),
        .s_axi_arsize(axi_chip2chip_0_m_axi_ARSIZE),
        .s_axi_arvalid(axi_chip2chip_0_m_axi_ARVALID),
        .s_axi_awaddr(axi_chip2chip_0_m_axi_AWADDR[15:0]),
        .s_axi_awburst(axi_chip2chip_0_m_axi_AWBURST),
        .s_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid(axi_chip2chip_0_m_axi_AWID),
        .s_axi_awlen(axi_chip2chip_0_m_axi_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_chip2chip_0_m_axi_AWREADY),
        .s_axi_awsize(axi_chip2chip_0_m_axi_AWSIZE),
        .s_axi_awvalid(axi_chip2chip_0_m_axi_AWVALID),
        .s_axi_bid(axi_chip2chip_0_m_axi_BID),
        .s_axi_bready(axi_chip2chip_0_m_axi_BREADY),
        .s_axi_bresp(axi_chip2chip_0_m_axi_BRESP),
        .s_axi_bvalid(axi_chip2chip_0_m_axi_BVALID),
        .s_axi_rdata(axi_chip2chip_0_m_axi_RDATA),
        .s_axi_rid(axi_chip2chip_0_m_axi_RID),
        .s_axi_rlast(axi_chip2chip_0_m_axi_RLAST),
        .s_axi_rready(axi_chip2chip_0_m_axi_RREADY),
        .s_axi_rresp(axi_chip2chip_0_m_axi_RRESP),
        .s_axi_rvalid(axi_chip2chip_0_m_axi_RVALID),
        .s_axi_wdata(axi_chip2chip_0_m_axi_WDATA),
        .s_axi_wlast(axi_chip2chip_0_m_axi_WLAST),
        .s_axi_wready(axi_chip2chip_0_m_axi_WREADY),
        .s_axi_wstrb(axi_chip2chip_0_m_axi_WSTRB),
        .s_axi_wvalid(axi_chip2chip_0_m_axi_WVALID));
  design_1_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  design_1_axi_chip2chip_0_0 axi_chip2chip_0
       (.aurora_init_clk(clk_wiz_2_clk_out1),
        .aurora_mmcm_not_locked(aurora_64b66b_0_mmcm_not_locked_out),
        .aurora_pma_init_in(pma_init_generator_0_pma_init_in),
        .aurora_pma_init_out(axi_chip2chip_0_aurora_pma_init_out),
        .aurora_reset_pb(axi_chip2chip_0_aurora_reset_pb),
        .axi_c2c_aurora_channel_up(aurora_64b66b_0_channel_up),
        .axi_c2c_aurora_rx_tdata({aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[0],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[1],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[2],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[3],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[4],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[5],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[6],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[7],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[8],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[9],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[10],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[11],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[12],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[13],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[14],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[15],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[16],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[17],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[18],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[19],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[20],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[21],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[22],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[23],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[24],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[25],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[26],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[27],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[28],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[29],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[30],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[31],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[32],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[33],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[34],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[35],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[36],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[37],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[38],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[39],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[40],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[41],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[42],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[43],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[44],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[45],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[46],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[47],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[48],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[49],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[50],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[51],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[52],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[53],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[54],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[55],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[56],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[57],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[58],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[59],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[60],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[61],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[62],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[63]}),
        .axi_c2c_aurora_rx_tvalid(aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID),
        .axi_c2c_aurora_tx_tdata(axi_chip2chip_0_AXIS_TX_TDATA),
        .axi_c2c_aurora_tx_tready(axi_chip2chip_0_AXIS_TX_TREADY),
        .axi_c2c_aurora_tx_tvalid(axi_chip2chip_0_AXIS_TX_TVALID),
        .axi_c2c_config_error_out(axi_chip2chip_0_axi_c2c_config_error_out),
        .axi_c2c_link_status_out(axi_chip2chip_0_axi_c2c_link_status_out),
        .axi_c2c_multi_bit_error_out(axi_chip2chip_0_axi_c2c_multi_bit_error_out),
        .axi_c2c_phy_clk(aurora_64b66b_0_user_clk_out),
        .axi_c2c_s2m_intr_in({1'b0,1'b0,1'b0,1'b0}),
        .m_aclk(clk_wiz_2_clk_out1),
        .m_aresetn(rst_clk_wiz_2_100M_peripheral_aresetn),
        .m_axi_araddr(axi_chip2chip_0_m_axi_ARADDR),
        .m_axi_arburst(axi_chip2chip_0_m_axi_ARBURST),
        .m_axi_arid(axi_chip2chip_0_m_axi_ARID),
        .m_axi_arlen(axi_chip2chip_0_m_axi_ARLEN),
        .m_axi_arready(axi_chip2chip_0_m_axi_ARREADY),
        .m_axi_arsize(axi_chip2chip_0_m_axi_ARSIZE),
        .m_axi_arvalid(axi_chip2chip_0_m_axi_ARVALID),
        .m_axi_awaddr(axi_chip2chip_0_m_axi_AWADDR),
        .m_axi_awburst(axi_chip2chip_0_m_axi_AWBURST),
        .m_axi_awid(axi_chip2chip_0_m_axi_AWID),
        .m_axi_awlen(axi_chip2chip_0_m_axi_AWLEN),
        .m_axi_awready(axi_chip2chip_0_m_axi_AWREADY),
        .m_axi_awsize(axi_chip2chip_0_m_axi_AWSIZE),
        .m_axi_awvalid(axi_chip2chip_0_m_axi_AWVALID),
        .m_axi_bid(axi_chip2chip_0_m_axi_BID),
        .m_axi_bready(axi_chip2chip_0_m_axi_BREADY),
        .m_axi_bresp(axi_chip2chip_0_m_axi_BRESP),
        .m_axi_bvalid(axi_chip2chip_0_m_axi_BVALID),
        .m_axi_rdata(axi_chip2chip_0_m_axi_RDATA),
        .m_axi_rid(axi_chip2chip_0_m_axi_RID),
        .m_axi_rlast(axi_chip2chip_0_m_axi_RLAST),
        .m_axi_rready(axi_chip2chip_0_m_axi_RREADY),
        .m_axi_rresp(axi_chip2chip_0_m_axi_RRESP),
        .m_axi_rvalid(axi_chip2chip_0_m_axi_RVALID),
        .m_axi_wdata(axi_chip2chip_0_m_axi_WDATA),
        .m_axi_wlast(axi_chip2chip_0_m_axi_WLAST),
        .m_axi_wready(axi_chip2chip_0_m_axi_WREADY),
        .m_axi_wstrb(axi_chip2chip_0_m_axi_WSTRB),
        .m_axi_wvalid(axi_chip2chip_0_m_axi_WVALID));
  design_1_clk_wiz_2_1 clk_wiz
       (.clk100(clk_wiz_2_clk_out1),
        .clk_in1_n(clk125_D_1_CLK_N),
        .clk_in1_p(clk125_D_1_CLK_P),
        .locked(rst_clk_wiz_2_100M_peripheral_aresetn));
  design_1_counter_0_0 counter_0
       (.clk(clk_wiz_2_clk_out1),
        .dout(counter_0_dout));
  design_1_heartbeat_0_0 heartbeat_0
       (.clk100(clk_wiz_2_clk_out1),
        .dout(heartbeat_0_dout),
        .resetn(rst_clk_wiz_2_100M_peripheral_aresetn));
  design_1_ila_1_0 ila_1
       (.clk(clk_wiz_2_clk_out1),
        .probe0(counter_0_dout));
  design_1_ila_2_0 ila_2
       (.clk(clk_wiz_2_clk_out1),
        .probe0(xlconcat_0_dout));
  design_1_pma_init_generator_0_0 pma_init_generator_0
       (.aur_init_clk(clk_wiz_2_clk_out1),
        .pma_init_in(pma_init_generator_0_pma_init_in),
        .resetn(rst_clk_wiz_2_100M_peripheral_aresetn));
  design_1_xlconcat_0_4 xlconcat_0
       (.In0(aurora_64b66b_0_channel_up),
        .In1(aurora_64b66b_0_mmcm_not_locked_out),
        .In10(axi_chip2chip_0_aurora_pma_init_out),
        .In11(axi_chip2chip_0_axi_c2c_config_error_out),
        .In12(axi_chip2chip_0_axi_c2c_link_status_out),
        .In13(axi_chip2chip_0_axi_c2c_multi_bit_error_out),
        .In2(aurora_64b66b_0_gt_qplllock_quad1_out),
        .In3(aurora_64b66b_0_gt_qpllrefclklost_quad1_out),
        .In4(aurora_64b66b_0_link_reset_out),
        .In5(aurora_64b66b_0_sys_reset_out),
        .In6(aurora_64b66b_0_gt_reset_out),
        .In7(aurora_64b66b_0_gt_powergood),
        .In8(axi_chip2chip_0_aurora_reset_pb),
        .In9(pma_init_generator_0_pma_init_in),
        .dout(xlconcat_0_dout));
endmodule
