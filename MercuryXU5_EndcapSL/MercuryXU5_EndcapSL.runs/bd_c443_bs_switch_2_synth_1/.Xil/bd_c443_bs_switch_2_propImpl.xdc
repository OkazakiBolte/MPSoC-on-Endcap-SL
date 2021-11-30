set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_3/constraints/bs_switch.xdc rfile:../../../MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_debug_bridge_0_0/bd_0/ip/ip_3/constraints/bs_switch.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -type METHODOLOGY -id TIMING-14 -tags "1025927" -user "bs_switch" -desc "CDC is handled through handshake process" -scope -objects [get_cells -hierarchical -filter {NAME =~ "*BSCAN_SWITCH.*EXT_BSCAN.bscan_switch/m_bscan_drck[*]_INST*"}]
