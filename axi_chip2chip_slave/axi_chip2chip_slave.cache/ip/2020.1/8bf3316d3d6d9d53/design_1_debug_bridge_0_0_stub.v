// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec 13 16:36:05 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_debug_bridge_0_0_stub.v
// Design      : design_1_debug_bridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu13p-flga2577-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_c443,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(jtag_tdi, jtag_tdo, jtag_tms, jtag_tck)
/* synthesis syn_black_box black_box_pad_pin="jtag_tdi,jtag_tdo,jtag_tms,jtag_tck" */;
  input jtag_tdi;
  output jtag_tdo;
  input jtag_tms;
  input jtag_tck;
endmodule
