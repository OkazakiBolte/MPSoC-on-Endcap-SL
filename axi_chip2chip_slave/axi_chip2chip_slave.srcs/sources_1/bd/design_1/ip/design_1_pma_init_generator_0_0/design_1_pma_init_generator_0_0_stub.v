// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Dec 16 14:59:01 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/okazaki/projects/mpsoc-on-endcap-sl/axi_chip2chip_slave/axi_chip2chip_slave.srcs/sources_1/bd/design_1/ip/design_1_pma_init_generator_0_0/design_1_pma_init_generator_0_0_stub.v
// Design      : design_1_pma_init_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu13p-flga2577-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pma_init_generator,Vivado 2020.1" *)
module design_1_pma_init_generator_0_0(aur_init_clk, resetn, pma_init_in)
/* synthesis syn_black_box black_box_pad_pin="aur_init_clk,resetn,pma_init_in" */;
  input aur_init_clk;
  input resetn;
  output pma_init_in;
endmodule
