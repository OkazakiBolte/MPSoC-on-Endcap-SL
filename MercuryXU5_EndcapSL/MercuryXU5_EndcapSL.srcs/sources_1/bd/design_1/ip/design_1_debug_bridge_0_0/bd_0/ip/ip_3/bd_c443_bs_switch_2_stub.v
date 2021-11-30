// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Nov 30 20:53:33 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_3/bd_c443_bs_switch_2_stub.v
// Design      : bd_c443_bs_switch_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bs_switch_v1_0_0_bs_switch,Vivado 2020.1" *)
module bd_c443_bs_switch_2(drck_0, reset_0, sel_0, capture_0, shift_0, 
  update_0, tdi_0, runtest_0, tck_0, tms_0, bscanid_en_0, tdo_0, drck_1, reset_1, sel_1, capture_1, 
  shift_1, update_1, tdi_1, runtest_1, tck_1, tms_1, bscanid_en_1, tdo_1)
/* synthesis syn_black_box black_box_pad_pin="drck_0,reset_0,sel_0,capture_0,shift_0,update_0,tdi_0,runtest_0,tck_0,tms_0,bscanid_en_0,tdo_0,drck_1,reset_1,sel_1,capture_1,shift_1,update_1,tdi_1,runtest_1,tck_1,tms_1,bscanid_en_1,tdo_1" */;
  output drck_0;
  output reset_0;
  output sel_0;
  output capture_0;
  output shift_0;
  output update_0;
  output tdi_0;
  output runtest_0;
  output tck_0;
  output tms_0;
  output bscanid_en_0;
  input tdo_0;
  output drck_1;
  output reset_1;
  output sel_1;
  output capture_1;
  output shift_1;
  output update_1;
  output tdi_1;
  output runtest_1;
  output tck_1;
  output tms_1;
  output bscanid_en_1;
  input tdo_1;
endmodule
