//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Dec 13 19:38:04 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=11,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (GT_DIFF_REFCLK_clk_n,
    GT_DIFF_REFCLK_clk_p,
    GT_SERIAL_F2Z_txn,
    GT_SERIAL_F2Z_txp,
    GT_SERIAL_Z2F_rxn,
    GT_SERIAL_Z2F_rxp,
    heartbeat,
    sysclk15625_clk_n,
    sysclk15625_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GT_DIFF_REFCLK, CAN_DEBUG false, FREQ_HZ 156250000" *) input GT_DIFF_REFCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 GT_DIFF_REFCLK CLK_P" *) input GT_DIFF_REFCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_F2Z TXN" *) output [0:0]GT_SERIAL_F2Z_txn;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX:1.0 GT_SERIAL_F2Z TXP" *) output [0:0]GT_SERIAL_F2Z_txp;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX:1.0 GT_SERIAL_Z2F RXN" *) input [0:0]GT_SERIAL_Z2F_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX:1.0 GT_SERIAL_Z2F RXP" *) input [0:0]GT_SERIAL_Z2F_rxp;
  output [0:0]heartbeat;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk15625 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sysclk15625, CAN_DEBUG false, FREQ_HZ 156250000" *) input sysclk15625_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sysclk15625 CLK_P" *) input sysclk15625_clk_p;

  wire GT_DIFF_REFCLK_1_CLK_N;
  wire GT_DIFF_REFCLK_1_CLK_P;
  wire [0:0]GT_SERIAL_Z2F_1_RXN;
  wire [0:0]GT_SERIAL_Z2F_1_RXP;
  wire [0:0]aurora_64b66b_0_GT_SERIAL_TX_TXN;
  wire [0:0]aurora_64b66b_0_GT_SERIAL_TX_TXP;
  wire [0:63]aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA;
  wire aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID;
  wire aurora_64b66b_0_channel_up;
  wire aurora_64b66b_0_gt_reset_out;
  wire aurora_64b66b_0_mmcm_not_locked_out;
  wire aurora_64b66b_0_user_clk_out;
  wire [63:0]axi_chip2chip_0_AXIS_TX_TDATA;
  wire axi_chip2chip_0_AXIS_TX_TREADY;
  wire axi_chip2chip_0_AXIS_TX_TVALID;
  wire axi_chip2chip_0_aurora_reset_pb;
  wire [31:0]axi_chip2chip_0_m_axi_ARADDR;
  wire [1:0]axi_chip2chip_0_m_axi_ARBURST;
  wire [5:0]axi_chip2chip_0_m_axi_ARID;
  wire [7:0]axi_chip2chip_0_m_axi_ARLEN;
  wire [2:0]axi_chip2chip_0_m_axi_ARSIZE;
  wire axi_chip2chip_0_m_axi_ARVALID;
  wire [31:0]axi_chip2chip_0_m_axi_AWADDR;
  wire [1:0]axi_chip2chip_0_m_axi_AWBURST;
  wire [5:0]axi_chip2chip_0_m_axi_AWID;
  wire [7:0]axi_chip2chip_0_m_axi_AWLEN;
  wire [2:0]axi_chip2chip_0_m_axi_AWSIZE;
  wire axi_chip2chip_0_m_axi_AWVALID;
  wire axi_chip2chip_0_m_axi_BREADY;
  wire axi_chip2chip_0_m_axi_RREADY;
  wire [31:0]axi_chip2chip_0_m_axi_WDATA;
  wire axi_chip2chip_0_m_axi_WLAST;
  wire [3:0]axi_chip2chip_0_m_axi_WSTRB;
  wire [3:0]axi_chip2chip_0_m_axi_WUSER;
  wire axi_chip2chip_0_m_axi_WVALID;
  wire clk_wiz_2_clk_out1;
  wire clk_wiz_2_locked;
  wire [5:0]counter_0_dout;
  wire [0:0]heartbeat_0_dout;
  wire [0:0]rst_clk_wiz_2_100M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_2_100M_peripheral_reset;
  wire sysclk15625_1_CLK_N;
  wire sysclk15625_1_CLK_P;

  assign GT_DIFF_REFCLK_1_CLK_N = GT_DIFF_REFCLK_clk_n;
  assign GT_DIFF_REFCLK_1_CLK_P = GT_DIFF_REFCLK_clk_p;
  assign GT_SERIAL_F2Z_txn[0] = aurora_64b66b_0_GT_SERIAL_TX_TXN;
  assign GT_SERIAL_F2Z_txp[0] = aurora_64b66b_0_GT_SERIAL_TX_TXP;
  assign GT_SERIAL_Z2F_1_RXN = GT_SERIAL_Z2F_rxn[0];
  assign GT_SERIAL_Z2F_1_RXP = GT_SERIAL_Z2F_rxp[0];
  assign heartbeat[0] = heartbeat_0_dout;
  assign sysclk15625_1_CLK_N = sysclk15625_clk_n;
  assign sysclk15625_1_CLK_P = sysclk15625_clk_p;
  design_1_aurora_64b66b_0_0 aurora_64b66b_0
       (.channel_up(aurora_64b66b_0_channel_up),
        .gt_refclk1_n(GT_DIFF_REFCLK_1_CLK_N),
        .gt_refclk1_p(GT_DIFF_REFCLK_1_CLK_P),
        .gt_reset_out(aurora_64b66b_0_gt_reset_out),
        .gt_rxcdrovrden_in(1'b0),
        .init_clk(clk_wiz_2_clk_out1),
        .loopback({1'b0,1'b0,1'b0}),
        .m_axi_rx_tdata(aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA),
        .m_axi_rx_tvalid(aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID),
        .mmcm_not_locked_out(aurora_64b66b_0_mmcm_not_locked_out),
        .pma_init(1'b0),
        .power_down(1'b0),
        .reset_pb(axi_chip2chip_0_aurora_reset_pb),
        .rxn(GT_SERIAL_Z2F_1_RXN),
        .rxp(GT_SERIAL_Z2F_1_RXP),
        .s_axi_tx_tdata({axi_chip2chip_0_AXIS_TX_TDATA[63],axi_chip2chip_0_AXIS_TX_TDATA[62],axi_chip2chip_0_AXIS_TX_TDATA[61],axi_chip2chip_0_AXIS_TX_TDATA[60],axi_chip2chip_0_AXIS_TX_TDATA[59],axi_chip2chip_0_AXIS_TX_TDATA[58],axi_chip2chip_0_AXIS_TX_TDATA[57],axi_chip2chip_0_AXIS_TX_TDATA[56],axi_chip2chip_0_AXIS_TX_TDATA[55],axi_chip2chip_0_AXIS_TX_TDATA[54],axi_chip2chip_0_AXIS_TX_TDATA[53],axi_chip2chip_0_AXIS_TX_TDATA[52],axi_chip2chip_0_AXIS_TX_TDATA[51],axi_chip2chip_0_AXIS_TX_TDATA[50],axi_chip2chip_0_AXIS_TX_TDATA[49],axi_chip2chip_0_AXIS_TX_TDATA[48],axi_chip2chip_0_AXIS_TX_TDATA[47],axi_chip2chip_0_AXIS_TX_TDATA[46],axi_chip2chip_0_AXIS_TX_TDATA[45],axi_chip2chip_0_AXIS_TX_TDATA[44],axi_chip2chip_0_AXIS_TX_TDATA[43],axi_chip2chip_0_AXIS_TX_TDATA[42],axi_chip2chip_0_AXIS_TX_TDATA[41],axi_chip2chip_0_AXIS_TX_TDATA[40],axi_chip2chip_0_AXIS_TX_TDATA[39],axi_chip2chip_0_AXIS_TX_TDATA[38],axi_chip2chip_0_AXIS_TX_TDATA[37],axi_chip2chip_0_AXIS_TX_TDATA[36],axi_chip2chip_0_AXIS_TX_TDATA[35],axi_chip2chip_0_AXIS_TX_TDATA[34],axi_chip2chip_0_AXIS_TX_TDATA[33],axi_chip2chip_0_AXIS_TX_TDATA[32],axi_chip2chip_0_AXIS_TX_TDATA[31],axi_chip2chip_0_AXIS_TX_TDATA[30],axi_chip2chip_0_AXIS_TX_TDATA[29],axi_chip2chip_0_AXIS_TX_TDATA[28],axi_chip2chip_0_AXIS_TX_TDATA[27],axi_chip2chip_0_AXIS_TX_TDATA[26],axi_chip2chip_0_AXIS_TX_TDATA[25],axi_chip2chip_0_AXIS_TX_TDATA[24],axi_chip2chip_0_AXIS_TX_TDATA[23],axi_chip2chip_0_AXIS_TX_TDATA[22],axi_chip2chip_0_AXIS_TX_TDATA[21],axi_chip2chip_0_AXIS_TX_TDATA[20],axi_chip2chip_0_AXIS_TX_TDATA[19],axi_chip2chip_0_AXIS_TX_TDATA[18],axi_chip2chip_0_AXIS_TX_TDATA[17],axi_chip2chip_0_AXIS_TX_TDATA[16],axi_chip2chip_0_AXIS_TX_TDATA[15],axi_chip2chip_0_AXIS_TX_TDATA[14],axi_chip2chip_0_AXIS_TX_TDATA[13],axi_chip2chip_0_AXIS_TX_TDATA[12],axi_chip2chip_0_AXIS_TX_TDATA[11],axi_chip2chip_0_AXIS_TX_TDATA[10],axi_chip2chip_0_AXIS_TX_TDATA[9],axi_chip2chip_0_AXIS_TX_TDATA[8],axi_chip2chip_0_AXIS_TX_TDATA[7],axi_chip2chip_0_AXIS_TX_TDATA[6],axi_chip2chip_0_AXIS_TX_TDATA[5],axi_chip2chip_0_AXIS_TX_TDATA[4],axi_chip2chip_0_AXIS_TX_TDATA[3],axi_chip2chip_0_AXIS_TX_TDATA[2],axi_chip2chip_0_AXIS_TX_TDATA[1],axi_chip2chip_0_AXIS_TX_TDATA[0]}),
        .s_axi_tx_tready(axi_chip2chip_0_AXIS_TX_TREADY),
        .s_axi_tx_tvalid(axi_chip2chip_0_AXIS_TX_TVALID),
        .txn(aurora_64b66b_0_GT_SERIAL_TX_TXN),
        .txp(aurora_64b66b_0_GT_SERIAL_TX_TXP),
        .user_clk_out(aurora_64b66b_0_user_clk_out));
  design_1_axi_chip2chip_0_0 axi_chip2chip_0
       (.aurora_init_clk(clk_wiz_2_clk_out1),
        .aurora_mmcm_not_locked(aurora_64b66b_0_mmcm_not_locked_out),
        .aurora_pma_init_in(1'b0),
        .aurora_reset_pb(axi_chip2chip_0_aurora_reset_pb),
        .axi_c2c_aurora_channel_up(aurora_64b66b_0_channel_up),
        .axi_c2c_aurora_rx_tdata({aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[0],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[1],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[2],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[3],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[4],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[5],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[6],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[7],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[8],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[9],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[10],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[11],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[12],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[13],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[14],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[15],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[16],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[17],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[18],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[19],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[20],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[21],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[22],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[23],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[24],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[25],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[26],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[27],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[28],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[29],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[30],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[31],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[32],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[33],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[34],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[35],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[36],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[37],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[38],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[39],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[40],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[41],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[42],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[43],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[44],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[45],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[46],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[47],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[48],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[49],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[50],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[51],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[52],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[53],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[54],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[55],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[56],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[57],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[58],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[59],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[60],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[61],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[62],aurora_64b66b_0_USER_DATA_M_AXIS_RX_TDATA[63]}),
        .axi_c2c_aurora_rx_tvalid(aurora_64b66b_0_USER_DATA_M_AXIS_RX_TVALID),
        .axi_c2c_aurora_tx_tdata(axi_chip2chip_0_AXIS_TX_TDATA),
        .axi_c2c_aurora_tx_tready(axi_chip2chip_0_AXIS_TX_TREADY),
        .axi_c2c_aurora_tx_tvalid(axi_chip2chip_0_AXIS_TX_TVALID),
        .axi_c2c_phy_clk(aurora_64b66b_0_user_clk_out),
        .axi_c2c_s2m_intr_in({1'b0,1'b0,1'b0,1'b0}),
        .m_aclk(clk_wiz_2_clk_out1),
        .m_aresetn(rst_clk_wiz_2_100M_peripheral_aresetn),
        .m_axi_araddr(axi_chip2chip_0_m_axi_ARADDR),
        .m_axi_arburst(axi_chip2chip_0_m_axi_ARBURST),
        .m_axi_arid(axi_chip2chip_0_m_axi_ARID),
        .m_axi_arlen(axi_chip2chip_0_m_axi_ARLEN),
        .m_axi_arready(1'b0),
        .m_axi_arsize(axi_chip2chip_0_m_axi_ARSIZE),
        .m_axi_arvalid(axi_chip2chip_0_m_axi_ARVALID),
        .m_axi_awaddr(axi_chip2chip_0_m_axi_AWADDR),
        .m_axi_awburst(axi_chip2chip_0_m_axi_AWBURST),
        .m_axi_awid(axi_chip2chip_0_m_axi_AWID),
        .m_axi_awlen(axi_chip2chip_0_m_axi_AWLEN),
        .m_axi_awready(1'b0),
        .m_axi_awsize(axi_chip2chip_0_m_axi_AWSIZE),
        .m_axi_awvalid(axi_chip2chip_0_m_axi_AWVALID),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(axi_chip2chip_0_m_axi_BREADY),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(axi_chip2chip_0_m_axi_RREADY),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(axi_chip2chip_0_m_axi_WDATA),
        .m_axi_wlast(axi_chip2chip_0_m_axi_WLAST),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(axi_chip2chip_0_m_axi_WSTRB),
        .m_axi_wuser(axi_chip2chip_0_m_axi_WUSER),
        .m_axi_wvalid(axi_chip2chip_0_m_axi_WVALID));
  design_1_clk_wiz_2_1 clk_wiz
       (.clk100(clk_wiz_2_clk_out1),
        .clk_in1_n(sysclk15625_1_CLK_N),
        .clk_in1_p(sysclk15625_1_CLK_P),
        .locked(clk_wiz_2_locked),
        .reset(rst_clk_wiz_2_100M_peripheral_reset));
  design_1_counter_0_0 counter_0
       (.clk(clk_wiz_2_clk_out1),
        .dout(counter_0_dout));
  design_1_heartbeat_0_0 heartbeat_0
       (.clk100(clk_wiz_2_clk_out1),
        .dout(heartbeat_0_dout),
        .resetn(rst_clk_wiz_2_100M_peripheral_aresetn));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_2_clk_out1),
        .probe0(1'b0),
        .probe1(axi_chip2chip_0_m_axi_AWADDR),
        .probe10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe11(axi_chip2chip_0_m_axi_AWVALID),
        .probe12(1'b0),
        .probe13({1'b0,1'b0}),
        .probe14(axi_chip2chip_0_m_axi_WDATA),
        .probe15(axi_chip2chip_0_m_axi_WSTRB),
        .probe16(1'b0),
        .probe17({1'b0,1'b0,1'b0}),
        .probe18({1'b0,1'b0,1'b0}),
        .probe19(axi_chip2chip_0_m_axi_AWID),
        .probe2({1'b0,1'b0}),
        .probe20({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe21(axi_chip2chip_0_m_axi_AWLEN),
        .probe22(1'b0),
        .probe23(axi_chip2chip_0_m_axi_AWSIZE),
        .probe24(axi_chip2chip_0_m_axi_AWBURST),
        .probe25(axi_chip2chip_0_m_axi_ARID),
        .probe26(1'b0),
        .probe27(axi_chip2chip_0_m_axi_ARLEN),
        .probe28(axi_chip2chip_0_m_axi_ARSIZE),
        .probe29(axi_chip2chip_0_m_axi_ARBURST),
        .probe3(1'b0),
        .probe30(1'b0),
        .probe31({1'b0,1'b0,1'b1,1'b1}),
        .probe32({1'b0,1'b0,1'b1,1'b1}),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(1'b0),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe39(1'b0),
        .probe4(axi_chip2chip_0_m_axi_BREADY),
        .probe40(1'b0),
        .probe41(1'b0),
        .probe42(axi_chip2chip_0_m_axi_WLAST),
        .probe43(axi_chip2chip_0_m_axi_WUSER),
        .probe5(axi_chip2chip_0_m_axi_ARADDR),
        .probe6(axi_chip2chip_0_m_axi_RREADY),
        .probe7(axi_chip2chip_0_m_axi_WVALID),
        .probe8(axi_chip2chip_0_m_axi_ARVALID),
        .probe9(1'b0));
  design_1_ila_1_0 ila_1
       (.clk(clk_wiz_2_clk_out1),
        .probe0(counter_0_dout));
  design_1_rst_clk_wiz_2_100M_0 rst_clk_wiz_2_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_2_locked),
        .ext_reset_in(aurora_64b66b_0_gt_reset_out),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_2_100M_peripheral_aresetn),
        .peripheral_reset(rst_clk_wiz_2_100M_peripheral_reset),
        .slowest_sync_clk(clk_wiz_2_clk_out1));
endmodule
