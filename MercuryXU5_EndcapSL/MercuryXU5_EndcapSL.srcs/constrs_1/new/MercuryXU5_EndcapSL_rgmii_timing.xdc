# ----------------------------------------------------------------------------------
#
# This is created based on "Mercuxy_XU5_rgmii_timing.xdc" in Mercury XU5 PE1
# reference design.
#
# ----------------------------------------------------------------------------------

# RGMII RX clock (2 ns shifted in PHY)
create_clock -name RGMII_RX_CLK -period 8.000 [get_ports {ETH1_RXCLK}] -waveform {2 6}
create_clock -name RGMII_RX_CLK_VIRT -period 8.000

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ETH1_RXCLK_IBUF_inst/O]

# RGMII TX clock (2 ns shifted by PLL)
set RGMII_TX_CLK  "clk_out1_design_1_clk_wiz_0_0"
create_generated_clock -name RGMII_TX_CLK_90 -source [get_pins design_1_i/clk_wiz_0/clk_out2] -multiply_by 1 [get_ports ETH1_TXCLK]

set_false_path -from [get_clocks $RGMII_TX_CLK] -to [get_clocks RGMII_RX_CLK]
set_false_path -from [get_clocks RGMII_RX_CLK] -to [get_clocks $RGMII_TX_CLK]

# RGMII RX timing
set_input_delay -clock {RGMII_RX_CLK_VIRT} -min -0.5 [get_ports {ETH1_RXD[0] ETH1_RXD[1] ETH1_RXD[2] ETH1_RXD[3] ETH1_RXCTL}] -add_delay
set_input_delay -clock {RGMII_RX_CLK_VIRT} -max 0.5 [get_ports {ETH1_RXD[0] ETH1_RXD[1] ETH1_RXD[2] ETH1_RXD[3] ETH1_RXCTL}] -add_delay
set_input_delay -clock {RGMII_RX_CLK_VIRT} -clock_fall -min -0.5 [get_ports {ETH1_RXD[0] ETH1_RXD[1] ETH1_RXD[2] ETH1_RXD[3] ETH1_RXCTL}] -add_delay
set_input_delay -clock {RGMII_RX_CLK_VIRT} -clock_fall -max 0.5 [get_ports {ETH1_RXD[0] ETH1_RXD[1] ETH1_RXD[2] ETH1_RXD[3] ETH1_RXCTL}] -add_delay

set_false_path -rise_from [get_clocks RGMII_RX_CLK_VIRT] -fall_to [get_clocks RGMII_RX_CLK] -setup
set_false_path -fall_from [get_clocks RGMII_RX_CLK_VIRT] -rise_to [get_clocks RGMII_RX_CLK] -setup
set_false_path -rise_from [get_clocks RGMII_RX_CLK_VIRT] -rise_to [get_clocks RGMII_RX_CLK] -hold
set_false_path -fall_from [get_clocks RGMII_RX_CLK_VIRT] -fall_to [get_clocks RGMII_RX_CLK] -hold

# RGMII TX timing
set_output_delay -clock {RGMII_TX_CLK_90} -min -1.0 [get_ports {ETH1_TXD[0] ETH1_TXD[1] ETH1_TXD[2] ETH1_TXD[3] ETH1_TXCTL}] -add_delay
set_output_delay -clock {RGMII_TX_CLK_90} -max 1.0 [get_ports {ETH1_TXD[0] ETH1_TXD[1] ETH1_TXD[2] ETH1_TXD[3] ETH1_TXCTL}] -add_delay
set_output_delay -clock {RGMII_TX_CLK_90} -clock_fall -min -1.0 [get_ports {ETH1_TXD[0] ETH1_TXD[1] ETH1_TXD[2] ETH1_TXD[3] ETH1_TXCTL}] -add_delay
set_output_delay -clock {RGMII_TX_CLK_90} -clock_fall -max 1.0 [get_ports {ETH1_TXD[0] ETH1_TXD[1] ETH1_TXD[2] ETH1_TXD[3] ETH1_TXCTL}] -add_delay

# set multicycle and false paths to ensure that correct edges are used for timing check
set_multicycle_path -fall_from [get_clocks $RGMII_TX_CLK] -fall_to [get_clocks RGMII_TX_CLK_90] -setup -start 0
set_multicycle_path -rise_from [get_clocks $RGMII_TX_CLK] -rise_to [get_clocks RGMII_TX_CLK_90] -setup -start 0
set_multicycle_path -rise_from [get_clocks $RGMII_TX_CLK] -fall_to [get_clocks RGMII_TX_CLK_90] -hold -start 0
set_multicycle_path -fall_from [get_clocks $RGMII_TX_CLK] -rise_to [get_clocks RGMII_TX_CLK_90] -hold -start 0

set_false_path -rise_from [get_clocks $RGMII_TX_CLK] -fall_to [get_clocks RGMII_TX_CLK_90] -setup
set_false_path -fall_from [get_clocks $RGMII_TX_CLK] -rise_to [get_clocks RGMII_TX_CLK_90] -setup
set_false_path -rise_from [get_clocks $RGMII_TX_CLK] -rise_to [get_clocks RGMII_TX_CLK_90] -hold
set_false_path -fall_from [get_clocks $RGMII_TX_CLK] -fall_to [get_clocks RGMII_TX_CLK_90] -hold

# false path for internal GMII RX
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxDv_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]

set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/Gmii_RxD_sync_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]

set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/Gmii_RxEr_sync_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]

# false path for internal GMII TX
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEn_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]

set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks Clk2_5] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells {i_gmii2rgmii/i_rgmii_gmii/Gmii_TxD_Reg_reg[*]}] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]

set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks Clk2_5] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks Clk2_5]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out3_design_1_clk_wiz_0_0]
set_false_path -from [get_clocks clk_out3_design_1_clk_wiz_0_0] -through [get_cells i_gmii2rgmii/i_rgmii_gmii/Gmii_TxEr_Reg_reg] -to [get_clocks clk_out1_design_1_clk_wiz_0_0]