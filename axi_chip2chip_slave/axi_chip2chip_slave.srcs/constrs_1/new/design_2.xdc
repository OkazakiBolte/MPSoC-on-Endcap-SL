set_property -dict {PACKAGE_PIN AY35  IOSTANDARD LVDS} [get_ports sysclk15625_clk_p];
set_property -dict {PACKAGE_PIN AY36  IOSTANDARD LVDS} [get_ports sysclk15625_clk_n];

#set_property -dict {PACKAGE_PIN AV26  IOSTANDARD LVCMOS18} [get_ports reset_button];
set_property -dict {PACKAGE_PIN BC22  IOSTANDARD LVCMOS18} [get_ports {led[0]}];
set_property -dict {PACKAGE_PIN BB22  IOSTANDARD LVCMOS18} [get_ports {led[1]}];