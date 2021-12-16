//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Dec 14 21:31:48 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (clk125_D_clk_n,
    clk125_D_clk_p,
    heartbeat);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk125_D CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk125_D, CAN_DEBUG false, FREQ_HZ 125000000" *) input clk125_D_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk125_D CLK_P" *) input clk125_D_clk_p;
  output [0:0]heartbeat;

  wire clk125_D_1_CLK_N;
  wire clk125_D_1_CLK_P;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [5:0]counter_0_dout;
  wire [0:0]heartbeat_0_dout;

  assign clk125_D_1_CLK_N = clk125_D_clk_n;
  assign clk125_D_1_CLK_P = clk125_D_clk_p;
  assign heartbeat[0] = heartbeat_0_dout;
  design_2_clk_wiz_0_0 clk_wiz_0
       (.clk100(clk_wiz_0_clk_out1),
        .clk_in1_n(clk125_D_1_CLK_N),
        .clk_in1_p(clk125_D_1_CLK_P),
        .locked(clk_wiz_0_locked));
  design_2_counter_0_0 counter_0
       (.clk(clk_wiz_0_clk_out1),
        .dout(counter_0_dout));
  design_2_heartbeat_0_0 heartbeat_0
       (.clk100(clk_wiz_0_clk_out1),
        .dout(heartbeat_0_dout),
        .resetn(clk_wiz_0_locked));
  design_2_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(counter_0_dout));
endmodule
