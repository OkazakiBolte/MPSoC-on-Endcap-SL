// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec 24 01:03:48 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pma_init_generator_0_0_sim_netlist.v
// Design      : design_1_pma_init_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pma_init_generator_0_0,pma_init_generator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pma_init_generator,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (init_clk,
    resetn,
    gpio_reset,
    pma_init_in);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 init_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME init_clk, ASSOCIATED_RESET resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0" *) input init_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 gpio_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME gpio_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input gpio_reset;
  output pma_init_in;

  wire gpio_reset;
  wire init_clk;
  wire pma_init_in;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pma_init_generator U0
       (.gpio_reset(gpio_reset),
        .init_clk(init_clk),
        .pma_init_in(pma_init_in),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pma_init_generator
   (pma_init_in,
    init_clk,
    gpio_reset,
    resetn);
  output pma_init_in;
  input init_clk;
  input gpio_reset;
  input resetn;

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
  wire \counter[15]_i_1_n_0 ;
  wire [15:4]counter_reg;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire gpio_reset;
  wire init_clk;
  wire [15:0]p_0_in;
  wire pma_init_in;
  wire pma_init_in_i_1_n_0;
  wire pma_init_in_i_2_n_0;
  wire pma_init_in_i_3_n_0;
  wire pma_init_in_i_4_n_0;
  wire resetn;
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
  LUT2 #(
    .INIT(4'hB)) 
    \counter[15]_i_1 
       (.I0(gpio_reset),
        .I1(resetn),
        .O(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[10] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[10]),
        .Q(counter_reg[10]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[11]),
        .Q(counter_reg[11]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[12] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[12]),
        .Q(counter_reg[12]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[13] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[13]),
        .Q(counter_reg[13]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[14] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[14]),
        .Q(counter_reg[14]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[15] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[15]),
        .Q(counter_reg[15]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[4]),
        .Q(counter_reg[4]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[5] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[5]),
        .Q(counter_reg[5]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[6]),
        .Q(counter_reg[6]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[7]),
        .Q(counter_reg[7]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[8]),
        .Q(counter_reg[8]),
        .R(\counter[15]_i_1_n_0 ));
  FDRE \counter_reg[9] 
       (.C(init_clk),
        .CE(pma_init_in),
        .D(p_0_in[9]),
        .Q(counter_reg[9]),
        .R(\counter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0100FFFF)) 
    pma_init_in_i_1
       (.I0(pma_init_in_i_2_n_0),
        .I1(pma_init_in_i_3_n_0),
        .I2(pma_init_in_i_4_n_0),
        .I3(pma_init_in),
        .I4(resetn),
        .I5(gpio_reset),
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
       (.C(init_clk),
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
