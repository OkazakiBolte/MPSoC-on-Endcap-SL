set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/zynq_ultra_ps_e} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_in_context.xdc id:2 order:EARLY scoped_inst:design_1_i/axi_bram_ctrl_0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc id:3 order:EARLY scoped_inst:design_1_i/clk_wiz_0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/design_1_debug_bridge_0_0/design_1_debug_bridge_0_0_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/design_1_debug_bridge_0_0/design_1_debug_bridge_0_0_in_context.xdc id:4 order:EARLY scoped_inst:design_1_i/debug_bridge_PL} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0_in_context.xdc id:5 order:EARLY scoped_inst:design_1_i/aurora_64b66b_0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/imports/src/Mercury_XU5_rgmii_loc.tcl rfile:../../../MercuryXU5_EndcapSL.srcs/constrs_1/imports/src/Mercury_XU5_rgmii_loc.tcl id:6 unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL.xdc id:7} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL_rgmii_timing.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL_rgmii_timing.xdc id:8} [current_design]
current_instance design_1_i/zynq_ultra_ps_e
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 480.004 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance design_1_i/axi_bram_ctrl_0
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance design_1_i/clk_wiz_0
set_property src_info {type:SCOPED_XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 40.000 80.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 10.000 20.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -6.000 -12.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:3 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 -6.000 -12.000} [get_ports {}]
current_instance
current_instance design_1_i/debug_bridge_PL
set_property src_info {type:SCOPED_XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 5.000 [get_ports {}]
current_instance
current_instance design_1_i/aurora_64b66b_0
set_property src_info {type:SCOPED_XDC file:5 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:5 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 7.758 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:5 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 3.879 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:5 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports gt_refclk1_p] -edges {1 2 3} -edge_shift {0.000 0.000 0.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:5 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports gt_refclk1_p] -edges {1 2 3} -edge_shift {0.000 -3.879 -7.758} [get_ports {}]
current_instance
set_property src_info {type:XDC file:6 line:30 export:INPUT save:NONE read:READ} [current_design]
set_property BEL BUFCE [get_cells i_gmii2rgmii/i_rgmii_rxclk_buf]
set_property src_info {type:XDC file:6 line:31 export:INPUT save:NONE read:READ} [current_design]
set_property LOC BUFGCE_HDIO_X0Y3 [get_cells i_gmii2rgmii/i_rgmii_rxclk_buf]
set_property src_info {type:XDC file:7 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED[0]}];
set_property src_info {type:XDC file:7 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED[1]}];
set_property src_info {type:XDC file:7 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED[2]}];
set_property src_info {type:XDC file:7 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_MDC}]
set_property src_info {type:XDC file:7 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[0]}]
set_property src_info {type:XDC file:7 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[1]}]
set_property src_info {type:XDC file:7 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K13   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[2]}]
set_property src_info {type:XDC file:7 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[3]}]
set_property src_info {type:XDC file:7 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXCLK}]
set_property src_info {type:XDC file:7 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[0]}]
set_property src_info {type:XDC file:7 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[1]}]
set_property src_info {type:XDC file:7 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[2]}]
set_property src_info {type:XDC file:7 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[3]}]
set_property src_info {type:XDC file:7 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXCLK}]
set_property src_info {type:XDC file:7 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_MDIO}]
set_property src_info {type:XDC file:7 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_INT_N}]
set_property src_info {type:XDC file:7 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RESET_N}]
set_property src_info {type:XDC file:7 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXCTL}]
set_property src_info {type:XDC file:7 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXCTL}]
set_property src_info {type:XDC file:7 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A2  IOSTANDARD LVCMOS18  } [get_ports {SIRST}];
set_property src_info {type:XDC file:7 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A3  IOSTANDARD LVCMOS18  } [get_ports {SI44RST}];
set_property src_info {type:XDC file:7 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A5  IOSTANDARD LVCMOS18} [get_ports {Si5345_INSEL_tri_o[0]}]; # B103
set_property src_info {type:XDC file:7 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS18} [get_ports {Si5345_INSEL_tri_o[1]}]; # B107
set_property src_info {type:XDC file:7 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A7  IOSTANDARD LVCMOS18} [get_ports {CFGINIT}]; # B111
set_property src_info {type:XDC file:7 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A6  IOSTANDARD LVCMOS18} [get_ports {CFGDONE}]; # B113
set_property src_info {type:XDC file:7 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB13  IOSTANDARD LVCMOS18  } [get_ports {FIRRST}];
set_property src_info {type:XDC file:7 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W12   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[0]}];
set_property src_info {type:XDC file:7 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W11   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[1]}];
set_property src_info {type:XDC file:7 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AE15  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[2]}];
set_property src_info {type:XDC file:7 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AE14  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[3]}];
set_property src_info {type:XDC file:7 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AE13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[4]}];
set_property src_info {type:XDC file:7 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AF13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[5]}];
set_property src_info {type:XDC file:7 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AG13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[6]}];
set_property src_info {type:XDC file:7 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AH13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[7]}];
set_property src_info {type:XDC file:7 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[8]}];
set_property src_info {type:XDC file:7 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AC11  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[9]}];
set_property src_info {type:XDC file:7 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA11  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[10]}];
set_property src_info {type:XDC file:7 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA10  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[11]}];
set_property src_info {type:XDC file:7 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y9    IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[12]}];
set_property src_info {type:XDC file:7 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA8   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[13]}];
set_property src_info {type:XDC file:7 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[14]}];
set_property src_info {type:XDC file:7 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[15]}];
set_property src_info {type:XDC file:7 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[16]}];
set_property src_info {type:XDC file:7 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AD12  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[17]}];
set_property src_info {type:XDC file:7 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[18]}];
set_property src_info {type:XDC file:7 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[19]}];
set_property src_info {type:XDC file:7 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C1    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTMS}]
set_property src_info {type:XDC file:7 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B1    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTCK}]
set_property src_info {type:XDC file:7 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G5    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTDI}]
set_property src_info {type:XDC file:7 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F5    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTDO}]
set_property src_info {type:XDC file:7 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V6 [get_ports GT_DIFF_REFCLK1_clk_p]; # B10
set_property src_info {type:XDC file:7 line:92 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V5 [get_ports GT_DIFF_REFCLK1_clk_n]; # B12
set_property src_info {type:XDC file:7 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W4 [get_ports {GT_SERIAL_Z2F_txp[0]}]; # B45
set_property src_info {type:XDC file:7 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W3 [get_ports {GT_SERIAL_Z2F_txn[0]}]; # B47
set_property src_info {type:XDC file:7 line:101 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y2 [get_ports {GT_SERIAL_F2Z_rxp[0]}]; # B48
set_property src_info {type:XDC file:7 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y1 [get_ports {GT_SERIAL_F2Z_rxn[0]}]; # B50
set_property src_info {type:XDC file:8 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ETH1_RXCLK_IBUF_inst/O]
set_property src_info {type:XDC file:8 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -to [get_clocks RGMII_RX_CLK]
set_property src_info {type:XDC file:8 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks RGMII_RX_CLK] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks RGMII_RX_CLK_VIRT] -rise_to [get_clocks RGMII_RX_CLK] -hold
set_property src_info {type:XDC file:8 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks RGMII_RX_CLK_VIRT] -fall_to [get_clocks RGMII_RX_CLK] -hold
set_property src_info {type:XDC file:8 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -fall_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -fall_to [get_clocks RGMII_TX_CLK_90] -setup -start 0
set_property src_info {type:XDC file:8 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -rise_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -rise_to [get_clocks RGMII_TX_CLK_90] -setup -start 0
set_property src_info {type:XDC file:8 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -rise_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -fall_to [get_clocks RGMII_TX_CLK_90] -hold -start 0
set_property src_info {type:XDC file:8 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -fall_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -rise_to [get_clocks RGMII_TX_CLK_90] -hold -start 0
set_property src_info {type:XDC file:8 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -fall_to [get_clocks RGMII_TX_CLK_90] -setup
set_property src_info {type:XDC file:8 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -rise_to [get_clocks RGMII_TX_CLK_90] -setup
set_property src_info {type:XDC file:8 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -rise_to [get_clocks RGMII_TX_CLK_90] -hold
set_property src_info {type:XDC file:8 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks clk_out1_design_1_clk_wiz_0_0] -fall_to [get_clocks RGMII_TX_CLK_90] -hold
set_property src_info {type:XDC file:8 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks Clk2_5]
set_property src_info {type:XDC file:8 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_property src_info {type:XDC file:8 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
