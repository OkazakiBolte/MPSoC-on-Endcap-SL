set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design];

# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design];
# ----------------------------------------------------------------------------------

# It's rediculous not to use A115 (I2C_INT#) for reset of Si5345,
# but anyway I hope this works. -> It worked.
set_property -dict {PACKAGE_PIN AF10  IOSTANDARD LVCMOS18  } [get_ports {SIRST}];

# FirFly module reset
set_property -dict {PACKAGE_PIN AB13  IOSTANDARD LVCMOS18  } [get_ports {FIRRST}];

# FirFly module select
set_property -dict {PACKAGE_PIN W12   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[0]}];
set_property -dict {PACKAGE_PIN W11   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[1]}];
set_property -dict {PACKAGE_PIN AE15  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[2]}];
set_property -dict {PACKAGE_PIN AE14  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[3]}];
set_property -dict {PACKAGE_PIN AE13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[4]}];
set_property -dict {PACKAGE_PIN AF13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[5]}];
set_property -dict {PACKAGE_PIN AG13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[6]}];
set_property -dict {PACKAGE_PIN AH13  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[7]}];
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[8]}];
set_property -dict {PACKAGE_PIN AC11  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[9]}];
set_property -dict {PACKAGE_PIN AA11  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[10]}];
set_property -dict {PACKAGE_PIN AA10  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[11]}];
set_property -dict {PACKAGE_PIN Y9    IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[12]}];
set_property -dict {PACKAGE_PIN AA8   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[13]}];
set_property -dict {PACKAGE_PIN W10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[14]}];
set_property -dict {PACKAGE_PIN Y10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[15]}];
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[16]}];
set_property -dict {PACKAGE_PIN AD12  IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[17]}];
set_property -dict {PACKAGE_PIN E10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[18]}];
set_property -dict {PACKAGE_PIN D10   IOSTANDARD LVCMOS18  } [get_ports {FIRSEL[19]}];

# LED
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[0]}];
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[1]}];
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[2]}];

# PL_Gigabit_Ethernet
set_property SLEW FAST [get_ports {ETH1_RXD[0]}]
set_property SLEW FAST [get_ports {ETH1_RXD[1]}]
set_property SLEW FAST [get_ports {ETH1_RXD[2]}]
set_property SLEW FAST [get_ports {ETH1_RXD[3]}]
set_property SLEW FAST [get_ports {ETH1_RXCTL}]
set_property SLEW FAST [get_ports {ETH1_RXCLK}]
set_property SLEW FAST [get_ports {ETH1_TXD[0]}]
set_property SLEW FAST [get_ports {ETH1_TXD[1]}]
set_property SLEW FAST [get_ports {ETH1_TXD[2]}]
set_property SLEW FAST [get_ports {ETH1_TXD[3]}]
set_property SLEW FAST [get_ports {ETH1_TXCTL}]
set_property SLEW FAST [get_ports {ETH1_TXCLK}]
set_property -dict {PACKAGE_PIN A10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_MDC}]
set_property -dict {PACKAGE_PIN J11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[0]}]
set_property -dict {PACKAGE_PIN J10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[1]}]
set_property -dict {PACKAGE_PIN K13   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[2]}]
set_property -dict {PACKAGE_PIN K12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXD[3]}]
set_property -dict {PACKAGE_PIN G11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXCLK}]
set_property -dict {PACKAGE_PIN H11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[0]}]
set_property -dict {PACKAGE_PIN G10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[1]}]
set_property -dict {PACKAGE_PIN J12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[2]}]
set_property -dict {PACKAGE_PIN H12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXD[3]}]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXCLK}]
set_property -dict {PACKAGE_PIN B11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_MDIO}]
set_property -dict {PACKAGE_PIN C11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_INT_N}]
set_property -dict {PACKAGE_PIN B10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RESET_N}]
set_property -dict {PACKAGE_PIN F10   IOSTANDARD LVCMOS18  } [get_ports {ETH1_RXCTL}]
set_property -dict {PACKAGE_PIN F11   IOSTANDARD LVCMOS18  } [get_ports {ETH1_TXCTL}]