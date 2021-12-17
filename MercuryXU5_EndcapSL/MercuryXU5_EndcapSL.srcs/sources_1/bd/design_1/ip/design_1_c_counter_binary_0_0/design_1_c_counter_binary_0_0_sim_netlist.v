// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Dec 17 12:23:32 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "zynquplus" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
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
KKbPYYPB1tp+QiKKwA6K4w5znrbD13ZGDEArzvzevz+hA2TVZNPo+Aq/B3JV9CA4e2eW5LXNh/7C
WmaJuLpiXoxXUxQql08FX73GkhZisowgobCSYwJOsRdv5GSER9epYMmH8DwdnKixDSPaY3Z7ySuT
irDIaK4kHp+8sz5sIQKSIihvypIvVis/dmERMoNZ5sLiPtZ0BRx+j8fjYWy0ZJWf2Of4ih7E37RM
BllgK2rrYBL+j3GRm5sPAvmlXUxOyBrNK4N5x8YLnDwmeuPt9Hev7y88jsjmmMlNBH7npwe4hoW/
Hnl/mXrDEj3NiIIdl7oKQ4wONWZJFUg87Go3Kg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TOTisdhUzfzw8K10BT9WYcR9/5qVoUOmKm4WMqioCCov23gKrYPiJz4/36raLBtonMWeu/Bedp1b
DvlJ+fE6wNHlAcHqKzzPGxP8uYTnS4weEDpr8Tlnzjc2NBaPR5ZG3MOVKdN1XGuGEK9sdTc7t2Hi
mdZEDNeztsjQaHqY/Rucdo7gxShMmYb+GKEWDuIeZ2ra3ml/9DRWQWifDzXc7gCKiiX1nXWZ3iqf
w+vbbgrXL+IsCEY+jHWj7rkRrg0v2ryWNZLqhDkecw3s0dqWWv2oiys/qhk/WUQoDPeFPw8uJvcm
4EZNZQ08/o8crhVe9avu0SBBc7X1hS677at8Hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5904)
`pragma protect data_block
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
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
