// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec 17 12:23:31 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_1_pl_clk0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 6} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 6}" *) output [5:0]Q;

  wire CLK;
  wire [5:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "6" *) 
(* C_XDEVICEFAMILY = "zynquplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [5:0]L;
  output THRESH0;
  output [5:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [5:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "6" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
feKgm8ORfHFEmhggMB5SH/6vN8ZdqCM2OILH4vz4toWBh1snu7knWqUGqdUuvNEfSYZdgzpbalmB
vOVohkM58QAqn7bDv1kJNKxxMH1zXadN3otf20FgadA5z69V/1d0wQFji1MHDX/TwHAh5l2dgWSm
stbUnI/2s9ZVZURcYE493SHLH0bKACG3XsEX2uiiIa/cWlhB0Ssm18RjYiBReZOrpTnN484aLlWq
hXD3i2g49Zy0fs986slH63XOa1jaKgBzYlOha5feonwK3mWjXuzO13YiwV+1yLjYLORGxB1mn0ne
VMeTeX8d+phZipZWITAXmIqofeaAWy4bHXSFqQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hlXT5/RCNl1PQmTaeY/r0UwEZo/MaXSd99POFea7YJMfDltI3uJngb+jSd7UmF+GuHMAJfhglDhw
DkcD5ft6aVBBtAIrDoVMnmDYPALyrPjwvT50XCxIUfYf8tT3paIH1IS8uUV1I9HEEyf6pX+Y1cY3
Ns1Cig1S/KWNKCBnYRciLXla4E11/ltU4FLfHrtjxQKhb+8oJ/c9JUtEEPAt3y0hnCIlb3UZUK+Z
Lns1jez1QRT6HEFHoDiOUImdb8T72+cYoxKBoSIMg0zcMLnkntmiU0FsyxlNSqpUY4oPqNA2uoqP
XXjX5UtgZFpq2vYnRoIYDLsRND7GdMvEW4YKjg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
7V4xMhpGD5XrfY+uBDJgNyK0wn0U7JjdDIex6g==
`pragma protect end_protected
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
