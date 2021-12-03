set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_2_0/bd_0/ip/ip_0/bd_04e2_axi_jtag_0/bd_04e2_axi_jtag_0_in_context.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_2_0/bd_0/ip/ip_0/bd_04e2_axi_jtag_0/bd_04e2_axi_jtag_0_in_context.xdc id:1 order:EARLY scoped_inst:U0/axi_jtag} [current_design]
current_instance U0/axi_jtag
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports s_axi_aclk] -edges {1 2 3} -edge_shift {0.000 17.500 35.000} [get_ports {}]
