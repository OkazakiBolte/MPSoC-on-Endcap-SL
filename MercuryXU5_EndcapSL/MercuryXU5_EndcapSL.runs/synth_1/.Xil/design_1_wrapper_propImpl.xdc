set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1/design_1_zynq_ultra_ps_e_1_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/zynq_ultra_ps_e} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1/design_1_axi_bram_ctrl_0_1_in_context.xdc id:2 order:EARLY scoped_inst:design_1_i/axi_bram_ctrl_0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL.xdc id:3} [current_design]
current_instance design_1_i/zynq_ultra_ps_e
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
current_instance design_1_i/axi_bram_ctrl_0
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[0]}];
set_property src_info {type:XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[1]}];
set_property src_info {type:XDC file:3 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[2]}];
