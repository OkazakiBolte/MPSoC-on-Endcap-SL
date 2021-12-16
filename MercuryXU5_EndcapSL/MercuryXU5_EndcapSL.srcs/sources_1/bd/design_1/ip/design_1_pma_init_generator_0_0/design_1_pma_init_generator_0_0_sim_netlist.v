// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Dec 16 14:10:05 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_pma_init_generator_0_0/design_1_pma_init_generator_0_0_sim_netlist.v
// Design      : design_1_pma_init_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pma_init_generator_0_0,pma_init_generator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pma_init_generator,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_pma_init_generator_0_0
   (aur_init_clk,
    periph_reset,
    pma_init_in);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aur_init_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aur_init_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0" *) input aur_init_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 periph_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME periph_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input periph_reset;
  output pma_init_in;

  wire aur_init_clk;
  wire periph_reset;
  wire pma_init_in;

  design_1_pma_init_generator_0_0_pma_init_generator U0
       (.aur_init_clk(aur_init_clk),
        .periph_reset(periph_reset),
        .pma_init_in(pma_init_in));
endmodule

(* ORIG_REF_NAME = "pma_init_generator" *) 
module design_1_pma_init_generator_0_0_pma_init_generator
   (pma_init_in,
    periph_reset,
    aur_init_clk);
  output pma_init_in;
  input periph_reset;
  input aur_init_clk;

  wire aur_init_clk;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire [15:4]counter_reg;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [15:0]p_0_in;
  wire periph_reset;
  wire pma_init_in;
  wire pma_init_in_i_1_n_0;
  wire pma_init_in_i_2_n_0;
  wire pma_init_in_i_3_n_0;
  wire pma_init_in_i_4_n_0;
  wire [7:6]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_counter0_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry
       (.CI(\counter_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S({counter_reg[8:4],\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0_carry__0_CO_UNCONNECTED[7:6],counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__0_O_UNCONNECTED[7],p_0_in[15:9]}),
        .S({1'b0,counter_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  FDRE \counter_reg[0] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(periph_reset));
  FDRE \counter_reg[10] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[10]),
        .Q(counter_reg[10]),
        .R(periph_reset));
  FDRE \counter_reg[11] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[11]),
        .Q(counter_reg[11]),
        .R(periph_reset));
  FDRE \counter_reg[12] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[12]),
        .Q(counter_reg[12]),
        .R(periph_reset));
  FDRE \counter_reg[13] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[13]),
        .Q(counter_reg[13]),
        .R(periph_reset));
  FDRE \counter_reg[14] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[14]),
        .Q(counter_reg[14]),
        .R(periph_reset));
  FDRE \counter_reg[15] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[15]),
        .Q(counter_reg[15]),
        .R(periph_reset));
  FDRE \counter_reg[1] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(periph_reset));
  FDRE \counter_reg[2] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(periph_reset));
  FDRE \counter_reg[3] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(periph_reset));
  FDRE \counter_reg[4] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[4]),
        .Q(counter_reg[4]),
        .R(periph_reset));
  FDRE \counter_reg[5] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[5]),
        .Q(counter_reg[5]),
        .R(periph_reset));
  FDRE \counter_reg[6] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[6]),
        .Q(counter_reg[6]),
        .R(periph_reset));
  FDRE \counter_reg[7] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[7]),
        .Q(counter_reg[7]),
        .R(periph_reset));
  FDRE \counter_reg[8] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[8]),
        .Q(counter_reg[8]),
        .R(periph_reset));
  FDRE \counter_reg[9] 
       (.C(aur_init_clk),
        .CE(pma_init_in),
        .D(p_0_in[9]),
        .Q(counter_reg[9]),
        .R(periph_reset));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    pma_init_in_i_1
       (.I0(pma_init_in_i_2_n_0),
        .I1(pma_init_in_i_3_n_0),
        .I2(pma_init_in_i_4_n_0),
        .I3(pma_init_in),
        .I4(periph_reset),
        .O(pma_init_in_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pma_init_in_i_2
       (.I0(counter_reg[6]),
        .I1(counter_reg[5]),
        .I2(counter_reg[8]),
        .I3(counter_reg[7]),
        .O(pma_init_in_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pma_init_in_i_3
       (.I0(counter_reg[14]),
        .I1(counter_reg[13]),
        .I2(counter_reg[4]),
        .I3(counter_reg[15]),
        .O(pma_init_in_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pma_init_in_i_4
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[12]),
        .I3(counter_reg[11]),
        .O(pma_init_in_i_4_n_0));
  FDRE pma_init_in_reg
       (.C(aur_init_clk),
        .CE(1'b1),
        .D(pma_init_in_i_1_n_0),
        .Q(pma_init_in),
        .R(1'b0));
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
