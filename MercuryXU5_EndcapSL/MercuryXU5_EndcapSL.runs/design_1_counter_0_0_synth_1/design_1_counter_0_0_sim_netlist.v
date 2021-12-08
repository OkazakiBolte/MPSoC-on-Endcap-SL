// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Dec  8 18:14:12 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_counter_0_0_sim_netlist.v
// Design      : design_1_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (Q,
    clk,
    resetn);
  output [5:0]Q;
  input clk;
  input resetn;

  wire [5:0]Q;
  wire [5:1]c;
  wire \c[0]_i_1_n_0 ;
  wire \c[5]_i_2_n_0 ;
  wire clk;
  wire resetn;

  LUT1 #(
    .INIT(2'h1)) 
    \c[0]_i_1 
       (.I0(Q[0]),
        .O(\c[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(c[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \c[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(c[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \c[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(c[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \c[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(c[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \c[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(c[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \c[5]_i_2 
       (.I0(resetn),
        .O(\c[5]_i_2_n_0 ));
  FDCE \c_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c[5]_i_2_n_0 ),
        .D(\c[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \c_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c[5]_i_2_n_0 ),
        .D(c[1]),
        .Q(Q[1]));
  FDCE \c_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c[5]_i_2_n_0 ),
        .D(c[2]),
        .Q(Q[2]));
  FDCE \c_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c[5]_i_2_n_0 ),
        .D(c[3]),
        .Q(Q[3]));
  FDCE \c_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c[5]_i_2_n_0 ),
        .D(c[4]),
        .Q(Q[4]));
  FDCE \c_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\c[5]_i_2_n_0 ),
        .D(c[5]),
        .Q(Q[5]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_counter_0_0,counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "counter,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    dout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output [5:0]dout;

  wire clk;
  wire [5:0]dout;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter U0
       (.Q(dout),
        .clk(clk),
        .resetn(resetn));
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
