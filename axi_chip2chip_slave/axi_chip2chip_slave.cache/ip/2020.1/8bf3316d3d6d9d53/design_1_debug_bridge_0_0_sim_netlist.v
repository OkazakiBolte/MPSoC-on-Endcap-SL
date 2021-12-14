// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec 13 16:36:05 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_debug_bridge_0_0_sim_netlist.v
// Design      : design_1_debug_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu13p-flga2577-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_1_debug_bridge_0_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c443
   (jtag_tck,
    jtag_tdi,
    jtag_tdo,
    jtag_tms);
  input jtag_tck;
  input jtag_tdi;
  output jtag_tdo;
  input jtag_tms;

  wire jtag_tck;
  wire jtag_tdi;
  wire jtag_tdo;
  wire jtag_tms;
  wire NLW_bsip_capture_UNCONNECTED;
  wire NLW_bsip_drck_UNCONNECTED;
  wire NLW_bsip_reset_UNCONNECTED;
  wire NLW_bsip_runtest_UNCONNECTED;
  wire NLW_bsip_sel_UNCONNECTED;
  wire NLW_bsip_shift_UNCONNECTED;
  wire NLW_bsip_tck_UNCONNECTED;
  wire NLW_bsip_tdi_UNCONNECTED;
  wire NLW_bsip_tms_UNCONNECTED;
  wire NLW_bsip_update_UNCONNECTED;

  (* X_CORE_INFO = "bsip_v1_1_0_bsip,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c443_bsip_0 bsip
       (.capture(NLW_bsip_capture_UNCONNECTED),
        .drck(NLW_bsip_drck_UNCONNECTED),
        .reset(NLW_bsip_reset_UNCONNECTED),
        .runtest(NLW_bsip_runtest_UNCONNECTED),
        .sel(NLW_bsip_sel_UNCONNECTED),
        .shift(NLW_bsip_shift_UNCONNECTED),
        .tap_tck(jtag_tck),
        .tap_tdi(jtag_tdi),
        .tap_tdo(jtag_tdo),
        .tap_tms(jtag_tms),
        .tck(NLW_bsip_tck_UNCONNECTED),
        .tdi(NLW_bsip_tdi_UNCONNECTED),
        .tdo(1'b0),
        .tms(NLW_bsip_tms_UNCONNECTED),
        .update(NLW_bsip_update_UNCONNECTED));
endmodule

(* X_CORE_INFO = "bsip_v1_1_0_bsip,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c443_bsip_0
   (drck,
    reset,
    sel,
    shift,
    tdi,
    update,
    capture,
    runtest,
    tck,
    tms,
    tap_tdo,
    tdo,
    tap_tdi,
    tap_tms,
    tap_tck);
  output drck;
  output reset;
  output sel;
  output shift;
  output tdi;
  output update;
  output capture;
  output runtest;
  output tck;
  output tms;
  output tap_tdo;
  input tdo;
  input tap_tdi;
  input tap_tms;
  input tap_tck;


endmodule

(* CHECK_LICENSE_TYPE = "design_1_debug_bridge_0_0,bd_c443,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_c443,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (jtag_tdi,
    jtag_tdo,
    jtag_tms,
    jtag_tck);
  input jtag_tdi;
  output jtag_tdo;
  input jtag_tms;
  input jtag_tck;

  wire jtag_tck;
  wire jtag_tdi;
  wire jtag_tdo;
  wire jtag_tms;

  (* HW_HANDOFF = "design_1_debug_bridge_0_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_c443 inst
       (.jtag_tck(jtag_tck),
        .jtag_tdi(jtag_tdi),
        .jtag_tdo(jtag_tdo),
        .jtag_tms(jtag_tms));
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
