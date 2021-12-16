// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "aurora_64b66b_v12_0_2, Coregen v14.3_ip3, Number of lanes = 1, Line rate is double8.25Gbps, Reference Clock is double125.0MHz, Interface is Streaming, Flow Control is None and is operating in DUPLEX configuration" *)
module design_1_aurora_64b66b_0_0(s_axi_tx_tdata, s_axi_tx_tvalid, 
  s_axi_tx_tready, m_axi_rx_tdata, m_axi_rx_tvalid, rxp, rxn, txp, txn, gt_refclk1_p, gt_refclk1_n, 
  gt_refclk1_out, hard_err, soft_err, channel_up, lane_up, user_clk_out, mmcm_not_locked_out, 
  sync_clk_out, reset_pb, gt_rxcdrovrden_in, power_down, loopback, pma_init, gt_pll_lock, 
  init_clk, link_reset_out, gt_powergood, gt_qpllclk_quad1_out, gt_qpllrefclk_quad1_out, 
  gt_qplllock_quad1_out, gt_qpllrefclklost_quad1_out, sys_reset_out, gt_reset_out, 
  tx_out_clk);
  input [0:63]s_axi_tx_tdata;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  output [0:63]m_axi_rx_tdata;
  output m_axi_rx_tvalid;
  input [0:0]rxp;
  input [0:0]rxn;
  output [0:0]txp;
  output [0:0]txn;
  input gt_refclk1_p;
  input gt_refclk1_n;
  output gt_refclk1_out;
  output hard_err;
  output soft_err;
  output channel_up;
  output [0:0]lane_up;
  output user_clk_out;
  output mmcm_not_locked_out;
  output sync_clk_out;
  input reset_pb;
  input gt_rxcdrovrden_in;
  input power_down;
  input [2:0]loopback;
  input pma_init;
  output gt_pll_lock;
  input init_clk;
  output link_reset_out;
  output [0:0]gt_powergood;
  output gt_qpllclk_quad1_out;
  output gt_qpllrefclk_quad1_out;
  output gt_qplllock_quad1_out;
  output gt_qpllrefclklost_quad1_out;
  output sys_reset_out;
  output gt_reset_out;
  output tx_out_clk;
endmodule
