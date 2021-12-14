// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Dec 13 19:06:04 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_counter_0_0_sim_netlist.v
// Design      : design_2_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu13p-flga2577-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (\c_reg[0]_0 ,
    \c_reg[1]_0 ,
    \c_reg[2]_0 ,
    dout,
    clk);
  output \c_reg[0]_0 ;
  output \c_reg[1]_0 ;
  output \c_reg[2]_0 ;
  output [2:0]dout;
  input clk;

  wire \c[2]_i_1_n_0 ;
  wire \c[5]_i_1_n_0 ;
  wire \c_reg[0]_0 ;
  wire \c_reg[1]_0 ;
  wire \c_reg[2]_0 ;
  wire clk;
  wire [5:0]data0;
  wire [2:0]dout;

  LUT1 #(
    .INIT(2'h1)) 
    \c[0]_i_1 
       (.I0(\c_reg[0]_0 ),
        .O(data0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c[1]_i_1 
       (.I0(\c_reg[0]_0 ),
        .I1(\c_reg[1]_0 ),
        .O(data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \c[2]_i_1 
       (.I0(\c_reg[0]_0 ),
        .I1(\c_reg[1]_0 ),
        .I2(\c_reg[2]_0 ),
        .O(\c[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \c[3]_i_1 
       (.I0(\c_reg[1]_0 ),
        .I1(\c_reg[0]_0 ),
        .I2(\c_reg[2]_0 ),
        .I3(dout[0]),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \c[4]_i_1 
       (.I0(\c_reg[2]_0 ),
        .I1(\c_reg[0]_0 ),
        .I2(\c_reg[1]_0 ),
        .I3(dout[0]),
        .I4(dout[1]),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c[5]_i_1 
       (.I0(dout[2]),
        .I1(dout[1]),
        .I2(\c_reg[1]_0 ),
        .I3(\c_reg[0]_0 ),
        .I4(dout[0]),
        .I5(\c_reg[2]_0 ),
        .O(\c[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \c[5]_i_2 
       (.I0(dout[0]),
        .I1(\c_reg[1]_0 ),
        .I2(\c_reg[0]_0 ),
        .I3(\c_reg[2]_0 ),
        .I4(dout[1]),
        .I5(dout[2]),
        .O(data0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[0]),
        .Q(\c_reg[0]_0 ),
        .R(\c[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\c_reg[1]_0 ),
        .R(\c[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\c[2]_i_1_n_0 ),
        .Q(\c_reg[2]_0 ),
        .R(\c[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(dout[0]),
        .R(\c[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(dout[1]),
        .R(\c[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(dout[2]),
        .R(\c[5]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_counter_0_0,counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "counter,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    dout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_2_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  output [5:0]dout;

  wire clk;
  wire [5:0]dout;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter inst
       (.\c_reg[0]_0 (dout[0]),
        .\c_reg[1]_0 (dout[1]),
        .\c_reg[2]_0 (dout[2]),
        .clk(clk),
        .dout(dout[5:3]));
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
