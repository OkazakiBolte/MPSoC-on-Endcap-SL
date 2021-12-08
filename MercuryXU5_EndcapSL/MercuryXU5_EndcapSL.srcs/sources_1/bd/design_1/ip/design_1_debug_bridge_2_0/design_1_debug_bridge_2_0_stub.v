// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Dec  8 14:27:30 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_2_0/design_1_debug_bridge_2_0_stub.v
// Design      : design_1_debug_bridge_2_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_04e2,Vivado 2020.1" *)
module design_1_debug_bridge_2_0(s_axi_aclk, s_axi_aresetn, tap_tdi, tap_tdo, 
  tap_tms, tap_tck, S_AXI_araddr, S_AXI_arprot, S_AXI_arready, S_AXI_arvalid, S_AXI_awaddr, 
  S_AXI_awprot, S_AXI_awready, S_AXI_awvalid, S_AXI_bready, S_AXI_bresp, S_AXI_bvalid, 
  S_AXI_rdata, S_AXI_rready, S_AXI_rresp, S_AXI_rvalid, S_AXI_wdata, S_AXI_wready, S_AXI_wstrb, 
  S_AXI_wvalid)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,tap_tdi,tap_tdo,tap_tms,tap_tck,S_AXI_araddr[4:0],S_AXI_arprot[2:0],S_AXI_arready,S_AXI_arvalid,S_AXI_awaddr[4:0],S_AXI_awprot[2:0],S_AXI_awready,S_AXI_awvalid,S_AXI_bready,S_AXI_bresp[1:0],S_AXI_bvalid,S_AXI_rdata[31:0],S_AXI_rready,S_AXI_rresp[1:0],S_AXI_rvalid,S_AXI_wdata[31:0],S_AXI_wready,S_AXI_wstrb[3:0],S_AXI_wvalid" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  output tap_tdi;
  input tap_tdo;
  output tap_tms;
  output tap_tck;
  input [4:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [4:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
endmodule
