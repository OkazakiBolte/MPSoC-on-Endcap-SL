set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/axi_chip2chip_slave/axi_chip2chip_slave.srcs/sources_1/bd/design_1/ip/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0_in_context.xdc rfile:../../../axi_chip2chip_slave.srcs/sources_1/bd/design_1/ip/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0/design_1_aurora_64b66b_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/aurora_64b66b_0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/axi_chip2chip_slave/axi_chip2chip_slave.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_2_1/design_1_clk_wiz_2_1/design_1_clk_wiz_2_1_in_context.xdc rfile:../../../axi_chip2chip_slave.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_2_1/design_1_clk_wiz_2_1/design_1_clk_wiz_2_1_in_context.xdc id:2 order:EARLY scoped_inst:design_1_i/clk_wiz} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/axi_chip2chip_slave/axi_chip2chip_slave.srcs/constrs_1/new/slave_part.xdc rfile:../../../axi_chip2chip_slave.srcs/constrs_1/new/slave_part.xdc id:3} [current_design]
current_instance design_1_i/aurora_64b66b_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.206 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.400 [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports gt_refclk1_p] -edges {1 2 3} -edge_shift {0.000 0.000 0.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports gt_refclk1_p] -edges {1 2 3} -edge_shift {0.000 -3.103 -6.206} [get_ports {}]
current_instance
current_instance design_1_i/clk_wiz
set_property src_info {type:SCOPED_XDC file:2 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 6.400 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1_p] -edges {1 2 3} -edge_shift {0.000 1.800 3.600} [get_ports {}]
current_instance
set_property src_info {type:XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H39 [get_ports GT_DIFF_REFCLK_clk_p];
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H40 [get_ports GT_DIFF_REFCLK_clk_n];
set_property src_info {type:XDC file:3 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E32 [get_ports {GT_SERIAL_Z2F_rxp[0]}];
set_property src_info {type:XDC file:3 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN D35 [get_ports {GT_SERIAL_Z2F_rxn[0]}];
set_property src_info {type:XDC file:3 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E37 [get_ports {GT_SERIAL_F2Z_txp[0]}];
set_property src_info {type:XDC file:3 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E38 [get_ports {GT_SERIAL_F2Z_txn[0]}];
set_property src_info {type:XDC file:3 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AY36 IOSTANDARD LVDS} [get_ports sysclk15625_clk_n];
set_property src_info {type:XDC file:3 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AY35 IOSTANDARD LVDS} [get_ports sysclk15625_clk_p];
set_property src_info {type:XDC file:3 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN BC22  IOSTANDARD LVCMOS18} [get_ports {heartbeat}]; # Debug LED
