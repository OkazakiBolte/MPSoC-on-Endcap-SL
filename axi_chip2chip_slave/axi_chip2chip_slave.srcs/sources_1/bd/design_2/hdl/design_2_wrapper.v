//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Dec 14 21:31:49 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (clk125_D_clk_n,
    clk125_D_clk_p,
    heartbeat);
  input clk125_D_clk_n;
  input clk125_D_clk_p;
  output [0:0]heartbeat;

  wire clk125_D_clk_n;
  wire clk125_D_clk_p;
  wire [0:0]heartbeat;

  design_2 design_2_i
       (.clk125_D_clk_n(clk125_D_clk_n),
        .clk125_D_clk_p(clk125_D_clk_p),
        .heartbeat(heartbeat));
endmodule
