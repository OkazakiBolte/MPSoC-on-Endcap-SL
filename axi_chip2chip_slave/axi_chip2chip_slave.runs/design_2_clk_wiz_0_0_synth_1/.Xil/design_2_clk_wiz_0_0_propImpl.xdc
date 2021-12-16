set_property SRC_FILE_INFO {cfile:/home/okazaki/projects/mpsoc-on-endcap-sl/axi_chip2chip_slave/axi_chip2chip_slave.srcs/sources_1/bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0.xdc rfile:../../../axi_chip2chip_slave.srcs/sources_1/bd/design_2/ip/design_2_clk_wiz_0_0/design_2_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.08
