//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Thu Dec 16 20:18:40 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GT_DIFF_REFCLK1_clk_n,
    GT_DIFF_REFCLK1_clk_p,
    GT_SERIAL_F2Z_txn,
    GT_SERIAL_F2Z_txp,
    GT_SERIAL_Z2F_rxn,
    GT_SERIAL_Z2F_rxp,
    clk125_D_clk_n,
    clk125_D_clk_p,
    heartbeat);
  input GT_DIFF_REFCLK1_clk_n;
  input GT_DIFF_REFCLK1_clk_p;
  output [0:0]GT_SERIAL_F2Z_txn;
  output [0:0]GT_SERIAL_F2Z_txp;
  input [0:0]GT_SERIAL_Z2F_rxn;
  input [0:0]GT_SERIAL_Z2F_rxp;
  input clk125_D_clk_n;
  input clk125_D_clk_p;
  output [0:0]heartbeat;

  wire GT_DIFF_REFCLK1_clk_n;
  wire GT_DIFF_REFCLK1_clk_p;
  wire [0:0]GT_SERIAL_F2Z_txn;
  wire [0:0]GT_SERIAL_F2Z_txp;
  wire [0:0]GT_SERIAL_Z2F_rxn;
  wire [0:0]GT_SERIAL_Z2F_rxp;
  wire clk125_D_clk_n;
  wire clk125_D_clk_p;
  wire [0:0]heartbeat;

  design_1 design_1_i
       (.GT_DIFF_REFCLK1_clk_n(GT_DIFF_REFCLK1_clk_n),
        .GT_DIFF_REFCLK1_clk_p(GT_DIFF_REFCLK1_clk_p),
        .GT_SERIAL_F2Z_txn(GT_SERIAL_F2Z_txn),
        .GT_SERIAL_F2Z_txp(GT_SERIAL_F2Z_txp),
        .GT_SERIAL_Z2F_rxn(GT_SERIAL_Z2F_rxn),
        .GT_SERIAL_Z2F_rxp(GT_SERIAL_Z2F_rxp),
        .clk125_D_clk_n(clk125_D_clk_n),
        .clk125_D_clk_p(clk125_D_clk_p),
        .heartbeat(heartbeat));
endmodule
