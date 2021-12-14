//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Dec 13 20:50:32 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GT_DIFF_REFCLK_clk_n,
    GT_DIFF_REFCLK_clk_p,
    GT_SERIAL_F2Z_txn,
    GT_SERIAL_F2Z_txp,
    GT_SERIAL_Z2F_rxn,
    GT_SERIAL_Z2F_rxp,
    heartbeat,
    sysclk15625_clk_n,
    sysclk15625_clk_p);
  input GT_DIFF_REFCLK_clk_n;
  input GT_DIFF_REFCLK_clk_p;
  output [0:0]GT_SERIAL_F2Z_txn;
  output [0:0]GT_SERIAL_F2Z_txp;
  input [0:0]GT_SERIAL_Z2F_rxn;
  input [0:0]GT_SERIAL_Z2F_rxp;
  output [0:0]heartbeat;
  input sysclk15625_clk_n;
  input sysclk15625_clk_p;

  wire GT_DIFF_REFCLK_clk_n;
  wire GT_DIFF_REFCLK_clk_p;
  wire [0:0]GT_SERIAL_F2Z_txn;
  wire [0:0]GT_SERIAL_F2Z_txp;
  wire [0:0]GT_SERIAL_Z2F_rxn;
  wire [0:0]GT_SERIAL_Z2F_rxp;
  wire [0:0]heartbeat;
  wire sysclk15625_clk_n;
  wire sysclk15625_clk_p;

  design_1 design_1_i
       (.GT_DIFF_REFCLK_clk_n(GT_DIFF_REFCLK_clk_n),
        .GT_DIFF_REFCLK_clk_p(GT_DIFF_REFCLK_clk_p),
        .GT_SERIAL_F2Z_txn(GT_SERIAL_F2Z_txn),
        .GT_SERIAL_F2Z_txp(GT_SERIAL_F2Z_txp),
        .GT_SERIAL_Z2F_rxn(GT_SERIAL_Z2F_rxn),
        .GT_SERIAL_Z2F_rxp(GT_SERIAL_Z2F_rxp),
        .heartbeat(heartbeat),
        .sysclk15625_clk_n(sysclk15625_clk_n),
        .sysclk15625_clk_p(sysclk15625_clk_p));
endmodule
