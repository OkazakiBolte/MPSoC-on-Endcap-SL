// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Nov 30 20:53:33 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_4/bd_c443_bs_mux_0_stub.v
// Design      : bd_c443_bs_mux_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bs_mux_v1_0_0_bs_mux,Vivado 2020.1" *)
module bd_c443_bs_mux_0(mux_ctrl_update, mux_ctrl_capture, 
  mux_ctrl_reset, mux_ctrl_runtest, mux_ctrl_tck, mux_ctrl_tms, mux_ctrl_tdi, mux_ctrl_sel, 
  mux_ctrl_shift, mux_ctrl_drck, mux_ctrl_bscanid_en, mux_ctrl_tdo, prim_update, 
  prim_capture, prim_reset, prim_runtest, prim_tck, prim_tms, prim_tdi, prim_sel, prim_shift, 
  prim_drck, prim_bscanid_en, prim_tdo, soft_update, soft_capture, soft_reset, soft_runtest, 
  soft_tck, soft_tms, soft_tdi, soft_sel, soft_shift, soft_drck, soft_bscanid_en, soft_tdo, update, 
  capture, reset, runtest, tck, tms, tdi, sel, shift, drck, bscanid_en, tdo, mux)
/* synthesis syn_black_box black_box_pad_pin="mux_ctrl_update,mux_ctrl_capture,mux_ctrl_reset,mux_ctrl_runtest,mux_ctrl_tck,mux_ctrl_tms,mux_ctrl_tdi,mux_ctrl_sel,mux_ctrl_shift,mux_ctrl_drck,mux_ctrl_bscanid_en,mux_ctrl_tdo,prim_update,prim_capture,prim_reset,prim_runtest,prim_tck,prim_tms,prim_tdi,prim_sel,prim_shift,prim_drck,prim_bscanid_en,prim_tdo,soft_update,soft_capture,soft_reset,soft_runtest,soft_tck,soft_tms,soft_tdi,soft_sel,soft_shift,soft_drck,soft_bscanid_en,soft_tdo,update,capture,reset,runtest,tck,tms,tdi,sel,shift,drck,bscanid_en,tdo,mux" */;
  input mux_ctrl_update;
  input mux_ctrl_capture;
  input mux_ctrl_reset;
  input mux_ctrl_runtest;
  input mux_ctrl_tck;
  input mux_ctrl_tms;
  input mux_ctrl_tdi;
  input mux_ctrl_sel;
  input mux_ctrl_shift;
  input mux_ctrl_drck;
  input mux_ctrl_bscanid_en;
  output mux_ctrl_tdo;
  input prim_update;
  input prim_capture;
  input prim_reset;
  input prim_runtest;
  input prim_tck;
  input prim_tms;
  input prim_tdi;
  input prim_sel;
  input prim_shift;
  input prim_drck;
  input prim_bscanid_en;
  output prim_tdo;
  input soft_update;
  input soft_capture;
  input soft_reset;
  input soft_runtest;
  input soft_tck;
  input soft_tms;
  input soft_tdi;
  input soft_sel;
  input soft_shift;
  input soft_drck;
  input soft_bscanid_en;
  output soft_tdo;
  output update;
  output capture;
  output reset;
  output runtest;
  output tck;
  output tms;
  output tdi;
  output sel;
  output shift;
  output drck;
  output bscanid_en;
  input tdo;
  output mux;
endmodule
