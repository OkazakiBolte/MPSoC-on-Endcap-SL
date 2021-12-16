
################################################################
# This is a generated script based on design: design_2
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
# source design_2_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# counter, heartbeat

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
set design_name design_2

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
  set clk125_D [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clk125_D ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $clk125_D


  # Create ports
  set CFGPROG [ create_bd_port -dir I CFGPROG ]
  set heartbeat [ create_bd_port -dir O -from 0 -to 0 heartbeat ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {177.983} \
   CONFIG.CLKOUT1_PHASE_ERROR {222.305} \
   CONFIG.CLK_OUT1_PORT {clk100} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.PRIM_IN_FREQ {125} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

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
    set_property -dict [ list \
   CONFIG.OUTPUT_WIDTH {1} \
 ] $heartbeat_0

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
   CONFIG.C_ADV_TRIGGER {true} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_MU_CNT {2} \
   CONFIG.C_PROBE0_WIDTH {6} \
   CONFIG.C_PROBE10_MU_CNT {2} \
   CONFIG.C_PROBE11_MU_CNT {2} \
   CONFIG.C_PROBE12_MU_CNT {2} \
   CONFIG.C_PROBE13_MU_CNT {2} \
   CONFIG.C_PROBE14_MU_CNT {2} \
   CONFIG.C_PROBE15_MU_CNT {2} \
   CONFIG.C_PROBE16_MU_CNT {2} \
   CONFIG.C_PROBE17_MU_CNT {2} \
   CONFIG.C_PROBE18_MU_CNT {2} \
   CONFIG.C_PROBE19_MU_CNT {2} \
   CONFIG.C_PROBE1_MU_CNT {2} \
   CONFIG.C_PROBE20_MU_CNT {2} \
   CONFIG.C_PROBE21_MU_CNT {2} \
   CONFIG.C_PROBE22_MU_CNT {2} \
   CONFIG.C_PROBE23_MU_CNT {2} \
   CONFIG.C_PROBE24_MU_CNT {2} \
   CONFIG.C_PROBE25_MU_CNT {2} \
   CONFIG.C_PROBE26_MU_CNT {2} \
   CONFIG.C_PROBE27_MU_CNT {2} \
   CONFIG.C_PROBE28_MU_CNT {2} \
   CONFIG.C_PROBE29_MU_CNT {2} \
   CONFIG.C_PROBE2_MU_CNT {2} \
   CONFIG.C_PROBE30_MU_CNT {2} \
   CONFIG.C_PROBE31_MU_CNT {2} \
   CONFIG.C_PROBE32_MU_CNT {2} \
   CONFIG.C_PROBE33_MU_CNT {2} \
   CONFIG.C_PROBE34_MU_CNT {2} \
   CONFIG.C_PROBE35_MU_CNT {2} \
   CONFIG.C_PROBE36_MU_CNT {2} \
   CONFIG.C_PROBE37_MU_CNT {2} \
   CONFIG.C_PROBE38_MU_CNT {2} \
   CONFIG.C_PROBE39_MU_CNT {2} \
   CONFIG.C_PROBE3_MU_CNT {2} \
   CONFIG.C_PROBE40_MU_CNT {2} \
   CONFIG.C_PROBE41_MU_CNT {2} \
   CONFIG.C_PROBE42_MU_CNT {2} \
   CONFIG.C_PROBE43_MU_CNT {2} \
   CONFIG.C_PROBE4_MU_CNT {2} \
   CONFIG.C_PROBE5_MU_CNT {2} \
   CONFIG.C_PROBE6_MU_CNT {2} \
   CONFIG.C_PROBE7_MU_CNT {2} \
   CONFIG.C_PROBE8_MU_CNT {2} \
   CONFIG.C_PROBE9_MU_CNT {2} \
 ] $ila_0

  # Create instance: ila_1, and set properties
  set ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_1 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
 ] $ila_1

  # Create interface connections
  connect_bd_intf_net -intf_net clk125_D_1 [get_bd_intf_ports clk125_D] [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net CFGPROG_1 [get_bd_ports CFGPROG] [get_bd_pins ila_1/probe0]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk100] [get_bd_pins counter_0/clk] [get_bd_pins heartbeat_0/clk100] [get_bd_pins ila_0/clk] [get_bd_pins ila_1/clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins heartbeat_0/resetn]
  connect_bd_net -net counter_0_dout [get_bd_pins counter_0/dout] [get_bd_pins ila_0/probe0]
  connect_bd_net -net heartbeat_0_dout [get_bd_ports heartbeat] [get_bd_pins heartbeat_0/dout]

  # Create address segments


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


