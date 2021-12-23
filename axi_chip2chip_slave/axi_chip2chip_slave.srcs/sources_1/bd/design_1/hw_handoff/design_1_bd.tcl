
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# counter, heartbeat, pma_init_generator

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvu13p-flga2577-1-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set GT_DIFF_REFCLK1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 GT_DIFF_REFCLK1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $GT_DIFF_REFCLK1

  set GT_SERIAL_F2Z [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_TX_rtl:1.0 GT_SERIAL_F2Z ]

  set GT_SERIAL_Z2F [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_aurora:GT_Serial_Transceiver_Pins_RX_rtl:1.0 GT_SERIAL_Z2F ]

  set clk125_D [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clk125_D ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $clk125_D


  # Create ports
  set heartbeat [ create_bd_port -dir O -from 0 -to 0 heartbeat ]

  # Create instance: aurora_64b66b_0, and set properties
  set aurora_64b66b_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:aurora_64b66b:12.0 aurora_64b66b_0 ]
  set_property -dict [ list \
   CONFIG.CHANNEL_ENABLE {X0Y60} \
   CONFIG.C_AURORA_LANES {1} \
   CONFIG.C_GT_LOC_2 {X} \
   CONFIG.C_INIT_CLK {100} \
   CONFIG.C_LINE_RATE {8.25} \
   CONFIG.C_REFCLK_FREQUENCY {125} \
   CONFIG.C_REFCLK_SOURCE {MGTREFCLK1_of_Quad_X0Y15} \
   CONFIG.C_START_LANE {X0Y60} \
   CONFIG.C_START_QUAD {Quad_X0Y15} \
   CONFIG.C_UCOLUMN_USED {left} \
   CONFIG.SupportLevel {1} \
   CONFIG.drp_mode {Disabled} \
   CONFIG.interface_mode {Streaming} \
 ] $aurora_64b66b_0

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_chip2chip_0, and set properties
  set axi_chip2chip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_chip2chip:5.0 axi_chip2chip_0 ]
  set_property -dict [ list \
   CONFIG.C_AURORA_WIDTH {1} \
   CONFIG.C_INTERFACE_MODE {0} \
   CONFIG.C_INTERFACE_TYPE {2} \
   CONFIG.C_MASTER_FPGA {0} \
   CONFIG.C_NUM_OF_IO {20} \
 ] $axi_chip2chip_0

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {177.983} \
   CONFIG.CLKOUT1_PHASE_ERROR {222.305} \
   CONFIG.CLKOUT2_JITTER {98.954} \
   CONFIG.CLKOUT2_PHASE_ERROR {83.183} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {156.25} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLK_OUT1_PORT {clk100} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIM_IN_FREQ {125} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz

  # Create instance: counter_0, and set properties
  set block_name counter
  set block_cell_name counter_0
  if { [catch {set counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $counter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: heartbeat_0, and set properties
  set block_name heartbeat
  set block_cell_name heartbeat_0
  if { [catch {set heartbeat_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $heartbeat_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ila_1, and set properties
  set ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_1 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
   CONFIG.C_ADV_TRIGGER {true} \
   CONFIG.C_DATA_DEPTH {8192} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_MU_CNT {2} \
   CONFIG.C_PROBE0_WIDTH {6} \
 ] $ila_1

  # Create instance: ila_2, and set properties
  set ila_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_2 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
   CONFIG.C_ADV_TRIGGER {true} \
   CONFIG.C_DATA_DEPTH {8192} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_MU_CNT {2} \
   CONFIG.C_PROBE0_WIDTH {14} \
   CONFIG.C_PROBE10_MU_CNT {2} \
   CONFIG.C_PROBE11_MU_CNT {2} \
   CONFIG.C_PROBE12_MU_CNT {2} \
   CONFIG.C_PROBE1_MU_CNT {2} \
   CONFIG.C_PROBE2_MU_CNT {2} \
   CONFIG.C_PROBE3_MU_CNT {2} \
   CONFIG.C_PROBE4_MU_CNT {2} \
   CONFIG.C_PROBE5_MU_CNT {2} \
   CONFIG.C_PROBE6_MU_CNT {2} \
   CONFIG.C_PROBE7_MU_CNT {2} \
   CONFIG.C_PROBE8_MU_CNT {2} \
   CONFIG.C_PROBE9_MU_CNT {2} \
 ] $ila_2

  # Create instance: pma_init_generator_0, and set properties
  set block_name pma_init_generator
  set block_cell_name pma_init_generator_0
  if { [catch {set pma_init_generator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pma_init_generator_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {14} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net GT_DIFF_REFCLK1_1 [get_bd_intf_ports GT_DIFF_REFCLK1] [get_bd_intf_pins aurora_64b66b_0/GT_DIFF_REFCLK1]
  connect_bd_intf_net -intf_net GT_SERIAL_Z2F_1 [get_bd_intf_ports GT_SERIAL_Z2F] [get_bd_intf_pins aurora_64b66b_0/GT_SERIAL_RX]
  connect_bd_intf_net -intf_net aurora_64b66b_0_GT_SERIAL_TX [get_bd_intf_ports GT_SERIAL_F2Z] [get_bd_intf_pins aurora_64b66b_0/GT_SERIAL_TX]
  connect_bd_intf_net -intf_net aurora_64b66b_0_USER_DATA_M_AXIS_RX [get_bd_intf_pins aurora_64b66b_0/USER_DATA_M_AXIS_RX] [get_bd_intf_pins axi_chip2chip_0/AXIS_RX]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_chip2chip_0_AXIS_TX [get_bd_intf_pins aurora_64b66b_0/USER_DATA_S_AXIS_TX] [get_bd_intf_pins axi_chip2chip_0/AXIS_TX]
  connect_bd_intf_net -intf_net axi_chip2chip_0_m_axi [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_chip2chip_0/m_axi]
  connect_bd_intf_net -intf_net clk125_D_1 [get_bd_intf_ports clk125_D] [get_bd_intf_pins clk_wiz/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net aurora_64b66b_0_channel_up [get_bd_pins aurora_64b66b_0/channel_up] [get_bd_pins axi_chip2chip_0/axi_c2c_aurora_channel_up] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net aurora_64b66b_0_gt_powergood [get_bd_pins aurora_64b66b_0/gt_powergood] [get_bd_pins xlconcat_0/In7]
  connect_bd_net -net aurora_64b66b_0_gt_qplllock_quad1_out [get_bd_pins aurora_64b66b_0/gt_qplllock_quad1_out] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net aurora_64b66b_0_gt_qpllrefclklost_quad1_out [get_bd_pins aurora_64b66b_0/gt_qpllrefclklost_quad1_out] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net aurora_64b66b_0_gt_reset_out [get_bd_pins aurora_64b66b_0/gt_reset_out] [get_bd_pins xlconcat_0/In6]
  connect_bd_net -net aurora_64b66b_0_link_reset_out [get_bd_pins aurora_64b66b_0/link_reset_out] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net aurora_64b66b_0_mmcm_not_locked_out [get_bd_pins aurora_64b66b_0/mmcm_not_locked_out] [get_bd_pins axi_chip2chip_0/aurora_mmcm_not_locked] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net aurora_64b66b_0_sys_reset_out [get_bd_pins aurora_64b66b_0/sys_reset_out] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net aurora_64b66b_0_user_clk_out [get_bd_pins aurora_64b66b_0/user_clk_out] [get_bd_pins axi_chip2chip_0/axi_c2c_phy_clk]
  connect_bd_net -net axi_chip2chip_0_aurora_pma_init_out [get_bd_pins aurora_64b66b_0/pma_init] [get_bd_pins axi_chip2chip_0/aurora_pma_init_out] [get_bd_pins xlconcat_0/In10]
  connect_bd_net -net axi_chip2chip_0_aurora_reset_pb [get_bd_pins aurora_64b66b_0/reset_pb] [get_bd_pins axi_chip2chip_0/aurora_reset_pb] [get_bd_pins xlconcat_0/In8]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_config_error_out [get_bd_pins axi_chip2chip_0/axi_c2c_config_error_out] [get_bd_pins xlconcat_0/In11]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_link_status_out [get_bd_pins axi_chip2chip_0/axi_c2c_link_status_out] [get_bd_pins xlconcat_0/In12]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_multi_bit_error_out [get_bd_pins axi_chip2chip_0/axi_c2c_multi_bit_error_out] [get_bd_pins xlconcat_0/In13]
  connect_bd_net -net clk_wiz_2_clk_out1 [get_bd_pins aurora_64b66b_0/init_clk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_chip2chip_0/aurora_init_clk] [get_bd_pins axi_chip2chip_0/m_aclk] [get_bd_pins clk_wiz/clk100] [get_bd_pins counter_0/clk] [get_bd_pins heartbeat_0/clk100] [get_bd_pins ila_1/clk] [get_bd_pins ila_2/clk] [get_bd_pins pma_init_generator_0/aur_init_clk]
  connect_bd_net -net counter_0_dout [get_bd_pins counter_0/dout] [get_bd_pins ila_1/probe0]
  connect_bd_net -net heartbeat_0_dout [get_bd_ports heartbeat] [get_bd_pins heartbeat_0/dout]
  connect_bd_net -net pma_init_generator_0_pma_init_in [get_bd_pins axi_chip2chip_0/aurora_pma_init_in] [get_bd_pins pma_init_generator_0/pma_init_in] [get_bd_pins xlconcat_0/In9]
  connect_bd_net -net rst_clk_wiz_2_100M_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_chip2chip_0/m_aresetn] [get_bd_pins clk_wiz/locked] [get_bd_pins heartbeat_0/resetn] [get_bd_pins pma_init_generator_0/resetn]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins ila_2/probe0] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  assign_bd_address -offset 0x80040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_chip2chip_0/MAXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


