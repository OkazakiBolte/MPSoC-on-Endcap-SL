set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design];

# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design];
# ----------------------------------------------------------------------------------

# ---- Below constraints can be used on only on Endcal SL but also on Mercury PE1 ----
# LED
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED[0]}];
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED[1]}];
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED[2]}];

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
# --------

# ---- Below constraints are specific to Endcap SL ----
# Si5345 & Si5344 reset
set_property -dict {PACKAGE_PIN A2  IOSTANDARD LVCMOS18  } [get_ports {SIRST}];
set_property -dict {PACKAGE_PIN A3  IOSTANDARD LVCMOS18  } [get_ports {SI44RST}];

set_property -dict {PACKAGE_PIN A5  IOSTANDARD LVCMOS18} [get_ports {Si5345_INSEL[0]}]; # B103
set_property -dict {PACKAGE_PIN C6  IOSTANDARD LVCMOS18} [get_ports {Si5345_INSEL[1]}]; # B107

#set_property -dict {PACKAGE_PIN B6  IOSTANDARD LVCMOS18} [get_ports {CFGPROG}]; # B109
set_property -dict {PACKAGE_PIN A7  IOSTANDARD LVCMOS18} [get_ports {CFGINIT}]; # B111
set_property -dict {PACKAGE_PIN A6  IOSTANDARD LVCMOS18} [get_ports {CFGDONE}]; # B113

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

# JTAG 4 lines to debug and program XCVU13P through Xilinx Virtual Cable (XVC)
set_property -dict {PACKAGE_PIN C1    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTMS}]
set_property -dict {PACKAGE_PIN B1    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTCK}]
set_property -dict {PACKAGE_PIN G5    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTDI}]
set_property -dict {PACKAGE_PIN F5    IOSTANDARD LVCMOS18  } [get_ports {ZYNQTDO}]

# GT reference clock for Aurora
set_property PACKAGE_PIN V6 [get_ports GT_DIFF_REFCLK1_clk_p]; # B10
set_property PACKAGE_PIN V5 [get_ports GT_DIFF_REFCLK1_clk_n]; # B12

# GT serial lines between ZynqMP and the main FPGA
set_property PACKAGE_PIN W4 [get_ports {GT_SERIAL_Z2F_txp[0]}]; # B45
set_property PACKAGE_PIN W3 [get_ports {GT_SERIAL_Z2F_txn[0]}]; # B47

# set_property PACKAGE_PIN U4 [get_ports {GT_SERIAL_Z2F_txp[1]}]; # B51
# set_property PACKAGE_PIN U3 [get_ports {GT_SERIAL_Z2F_txn[1]}]; # B53

set_property PACKAGE_PIN Y2 [get_ports {GT_SERIAL_F2Z_rxp[0]}]; # B48
set_property PACKAGE_PIN Y1 [get_ports {GT_SERIAL_F2Z_rxn[0]}]; # B50

# set_property PACKAGE_PIN V2 [get_ports {GT_SERIAL_F2Z_rxp[1]}]; # B54
# set_property PACKAGE_PIN V1 [get_ports {GT_SERIAL_F2Z_rxn[1]}]; # B56