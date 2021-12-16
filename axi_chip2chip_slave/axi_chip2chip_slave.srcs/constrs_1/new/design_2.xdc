set_property -dict {PACKAGE_PIN AY35  IOSTANDARD LVDS} [get_ports clk125_D_clk_p];
set_property -dict {PACKAGE_PIN AY36  IOSTANDARD LVDS} [get_ports clk125_D_clk_n];

#set_property -dict {PACKAGE_PIN AV26  IOSTANDARD LVCMOS18} [get_ports reset_button];
set_property -dict {PACKAGE_PIN BC22  IOSTANDARD LVCMOS18} [get_ports {heartbeat}];
#set_property -dict {PACKAGE_PIN BB22  IOSTANDARD LVCMOS18} [get_ports {led[1]}];

#set_property -dict {PACKAGE_PIN {AK14}  IOSTANDARD LVCMOS18} [get_ports {CFGPROG}];