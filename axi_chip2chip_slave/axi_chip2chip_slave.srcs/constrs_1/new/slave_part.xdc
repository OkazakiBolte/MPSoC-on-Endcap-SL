set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design];

# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design];
# ----------------------------------------------------------------------------------

# GT reference clock for Aurora
set_property PACKAGE_PIN H39 [get_ports GT_DIFF_REFCLK1_clk_p];
set_property PACKAGE_PIN H40 [get_ports GT_DIFF_REFCLK1_clk_n];

# GT serial lines between ZynqMP and the main FPGA
set_property PACKAGE_PIN E32 [get_ports {GT_SERIAL_Z2F_rxp[0]}];
set_property PACKAGE_PIN D35 [get_ports {GT_SERIAL_Z2F_rxn[0]}];

set_property PACKAGE_PIN E37 [get_ports {GT_SERIAL_F2Z_txp[0]}];
set_property PACKAGE_PIN E38 [get_ports {GT_SERIAL_F2Z_txn[0]}];

set_property -dict {PACKAGE_PIN AY36 IOSTANDARD LVDS} [get_ports clk125_D_clk_n];
set_property -dict {PACKAGE_PIN AY35 IOSTANDARD LVDS} [get_ports clk125_D_clk_p];

## JTAG 4 lines between MPSoC and XCVU13P
#set_property -dict {PACKAGE_PIN AE14  IOSTANDARD LVCMOS18} [get_ports zynq_jtag_tms];
#set_property -dict {PACKAGE_PIN AF13  IOSTANDARD LVCMOS18} [get_ports zynq_jtag_tck];
#set_property -dict {PACKAGE_PIN AG14  IOSTANDARD LVCMOS18} [get_ports zynq_jtag_tdo];
#set_property -dict {PACKAGE_PIN AH13  IOSTANDARD LVCMOS18} [get_ports zynq_jtag_tdi];

set_property -dict {PACKAGE_PIN BC22  IOSTANDARD LVCMOS18} [get_ports {heartbeat}]; # Debug LED