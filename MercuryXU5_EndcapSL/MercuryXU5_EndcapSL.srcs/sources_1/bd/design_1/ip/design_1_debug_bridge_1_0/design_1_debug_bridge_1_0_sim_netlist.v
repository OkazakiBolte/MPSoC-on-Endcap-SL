// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Nov 30 20:55:50 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_1_0/design_1_debug_bridge_1_0_sim_netlist.v
// Design      : design_1_debug_bridge_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_debug_bridge_1_0,bd_0412,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bd_0412,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_debug_bridge_1_0
   (clk,
    S_BSCAN_bscanid_en,
    S_BSCAN_capture,
    S_BSCAN_drck,
    S_BSCAN_reset,
    S_BSCAN_runtest,
    S_BSCAN_sel,
    S_BSCAN_shift,
    S_BSCAN_tck,
    S_BSCAN_tdi,
    S_BSCAN_tdo,
    S_BSCAN_tms,
    S_BSCAN_update);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *) input S_BSCAN_bscanid_en;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *) input S_BSCAN_capture;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *) input S_BSCAN_drck;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *) input S_BSCAN_reset;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *) input S_BSCAN_runtest;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *) input S_BSCAN_sel;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *) input S_BSCAN_shift;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *) input S_BSCAN_tck;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *) input S_BSCAN_tdi;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *) output S_BSCAN_tdo;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *) input S_BSCAN_tms;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *) input S_BSCAN_update;

  wire S_BSCAN_bscanid_en;
  wire S_BSCAN_capture;
  wire S_BSCAN_drck;
  wire S_BSCAN_reset;
  wire S_BSCAN_runtest;
  wire S_BSCAN_sel;
  wire S_BSCAN_shift;
  wire S_BSCAN_tck;
  wire S_BSCAN_tdi;
  wire S_BSCAN_tdo;
  wire S_BSCAN_tms;
  wire S_BSCAN_update;
  wire clk;

  (* hw_handoff = "design_1_debug_bridge_1_0.hwdef" *) 
  design_1_debug_bridge_1_0_bd_0412 U0
       (.S_BSCAN_bscanid_en(S_BSCAN_bscanid_en),
        .S_BSCAN_capture(S_BSCAN_capture),
        .S_BSCAN_drck(S_BSCAN_drck),
        .S_BSCAN_reset(S_BSCAN_reset),
        .S_BSCAN_runtest(S_BSCAN_runtest),
        .S_BSCAN_sel(S_BSCAN_sel),
        .S_BSCAN_shift(S_BSCAN_shift),
        .S_BSCAN_tck(S_BSCAN_tck),
        .S_BSCAN_tdi(S_BSCAN_tdi),
        .S_BSCAN_tdo(S_BSCAN_tdo),
        .S_BSCAN_tms(S_BSCAN_tms),
        .S_BSCAN_update(S_BSCAN_update),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "bd_0412" *) (* hw_handoff = "design_1_debug_bridge_1_0.hwdef" *) 
module design_1_debug_bridge_1_0_bd_0412
   (S_BSCAN_bscanid_en,
    S_BSCAN_capture,
    S_BSCAN_drck,
    S_BSCAN_reset,
    S_BSCAN_runtest,
    S_BSCAN_sel,
    S_BSCAN_shift,
    S_BSCAN_tck,
    S_BSCAN_tdi,
    S_BSCAN_tdo,
    S_BSCAN_tms,
    S_BSCAN_update,
    clk);
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *) input S_BSCAN_bscanid_en;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *) input S_BSCAN_capture;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *) input S_BSCAN_drck;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *) input S_BSCAN_reset;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *) input S_BSCAN_runtest;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *) input S_BSCAN_sel;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *) input S_BSCAN_shift;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *) input S_BSCAN_tck;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *) input S_BSCAN_tdi;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *) output S_BSCAN_tdo;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *) input S_BSCAN_tms;
  (* x_interface_info = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *) input S_BSCAN_update;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;

  wire S_BSCAN_bscanid_en;
  wire S_BSCAN_capture;
  wire S_BSCAN_drck;
  wire S_BSCAN_reset;
  wire S_BSCAN_runtest;
  wire S_BSCAN_sel;
  wire S_BSCAN_shift;
  wire S_BSCAN_tck;
  wire S_BSCAN_tdi;
  wire S_BSCAN_tdo;
  wire S_BSCAN_tms;
  wire S_BSCAN_update;
  wire clk;
  wire lut_buffer_m_bscan_BSCANID_EN;
  wire lut_buffer_m_bscan_CAPTURE;
  wire lut_buffer_m_bscan_DRCK;
  wire lut_buffer_m_bscan_RESET;
  wire lut_buffer_m_bscan_RUNTEST;
  wire lut_buffer_m_bscan_SEL;
  wire lut_buffer_m_bscan_SHIFT;
  wire lut_buffer_m_bscan_TCK;
  wire lut_buffer_m_bscan_TDI;
  wire lut_buffer_m_bscan_TDO;
  wire lut_buffer_m_bscan_TMS;
  wire lut_buffer_m_bscan_UPDATE;

  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "lut_buffer_v2_0_0_lut_buffer,Vivado 2020.1" *) 
  design_1_debug_bridge_1_0_bd_0412_lut_buffer_0 lut_buffer
       (.bscanid_en_i(S_BSCAN_bscanid_en),
        .bscanid_en_o(lut_buffer_m_bscan_BSCANID_EN),
        .capture_i(S_BSCAN_capture),
        .capture_o(lut_buffer_m_bscan_CAPTURE),
        .drck_i(S_BSCAN_drck),
        .drck_o(lut_buffer_m_bscan_DRCK),
        .reset_i(S_BSCAN_reset),
        .reset_o(lut_buffer_m_bscan_RESET),
        .runtest_i(S_BSCAN_runtest),
        .runtest_o(lut_buffer_m_bscan_RUNTEST),
        .sel_i(S_BSCAN_sel),
        .sel_o(lut_buffer_m_bscan_SEL),
        .shift_i(S_BSCAN_shift),
        .shift_o(lut_buffer_m_bscan_SHIFT),
        .tck_i(S_BSCAN_tck),
        .tck_o(lut_buffer_m_bscan_TCK),
        .tdi_i(S_BSCAN_tdi),
        .tdi_o(lut_buffer_m_bscan_TDI),
        .tdo_i(lut_buffer_m_bscan_TDO),
        .tdo_o(S_BSCAN_tdo),
        .tms_i(S_BSCAN_tms),
        .tms_o(lut_buffer_m_bscan_TMS),
        .update_i(S_BSCAN_update),
        .update_o(lut_buffer_m_bscan_UPDATE));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "xsdbm_v3_0_0_xsdbm,Vivado 2020.1" *) 
  design_1_debug_bridge_1_0_bd_0412_xsdbm_0 xsdbm
       (.bscanid_en(lut_buffer_m_bscan_BSCANID_EN),
        .capture(lut_buffer_m_bscan_CAPTURE),
        .clk(clk),
        .drck(lut_buffer_m_bscan_DRCK),
        .reset(lut_buffer_m_bscan_RESET),
        .runtest(lut_buffer_m_bscan_RUNTEST),
        .sel(lut_buffer_m_bscan_SEL),
        .shift(lut_buffer_m_bscan_SHIFT),
        .tck(lut_buffer_m_bscan_TCK),
        .tdi(lut_buffer_m_bscan_TDI),
        .tdo(lut_buffer_m_bscan_TDO),
        .tms(lut_buffer_m_bscan_TMS),
        .update(lut_buffer_m_bscan_UPDATE));
endmodule

(* ORIG_REF_NAME = "bd_0412_lut_buffer_0" *) 
module design_1_debug_bridge_1_0_bd_0412_lut_buffer_0
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  input tdi_i;
  input tms_i;
  input tck_i;
  input drck_i;
  input sel_i;
  input shift_i;
  input update_i;
  input capture_i;
  input runtest_i;
  input reset_i;
  input bscanid_en_i;
  output tdo_o;
  output tdi_o;
  output tms_o;
  output tck_o;
  output drck_o;
  output sel_o;
  output shift_o;
  output update_o;
  output capture_o;
  output runtest_o;
  output reset_o;
  output bscanid_en_o;
  input tdo_i;


endmodule

(* ORIG_REF_NAME = "bd_0412_xsdbm_0" *) 
module design_1_debug_bridge_1_0_bd_0412_xsdbm_0
   (update,
    capture,
    reset,
    runtest,
    tck,
    tms,
    tdi,
    sel,
    shift,
    drck,
    tdo,
    bscanid_en,
    clk);
  input update;
  input capture;
  input reset;
  input runtest;
  input tck;
  input tms;
  input tdi;
  input sel;
  input shift;
  input drck;
  output tdo;
  input bscanid_en;
  input clk;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
