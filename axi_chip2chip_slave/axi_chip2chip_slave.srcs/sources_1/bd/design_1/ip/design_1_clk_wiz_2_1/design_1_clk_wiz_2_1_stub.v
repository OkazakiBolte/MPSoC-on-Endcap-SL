// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec 13 20:01:42 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/okazaki/projects/mpsoc-on-endcap-sl/axi_chip2chip_slave/axi_chip2chip_slave.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_2_1/design_1_clk_wiz_2_1_stub.v
// Design      : design_1_clk_wiz_2_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu13p-flga2577-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_2_1(clk100, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk100,locked,clk_in1_p,clk_in1_n" */;
  output clk100;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
