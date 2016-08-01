
################################################################
# This is a generated script based on design: PCIe_AXI_BRIDGE_BRAM_HWICAP_bd
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
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name PCIe_AXI_BRIDGE_BRAM_HWICAP_bd

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  set str_bd_folder /home/sanjayr/projects/Vivado_PR/KCU105_PR_AXIHW_ICAP_PCIe/temp_app/IP
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set S_AXI_CTL [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTL ]
  set_property -dict [ list \
CONFIG.ADDR_WIDTH {12} \
CONFIG.ARUSER_WIDTH {0} \
CONFIG.AWUSER_WIDTH {0} \
CONFIG.BUSER_WIDTH {0} \
CONFIG.DATA_WIDTH {32} \
CONFIG.FREQ_HZ {250000000} \
CONFIG.HAS_BRESP {1} \
CONFIG.HAS_BURST {0} \
CONFIG.HAS_CACHE {0} \
CONFIG.HAS_LOCK {0} \
CONFIG.HAS_PROT {0} \
CONFIG.HAS_QOS {0} \
CONFIG.HAS_REGION {0} \
CONFIG.HAS_RRESP {1} \
CONFIG.HAS_WSTRB {1} \
CONFIG.ID_WIDTH {0} \
CONFIG.MAX_BURST_LENGTH {1} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.PROTOCOL {AXI4LITE} \
CONFIG.READ_WRITE_MODE {READ_WRITE} \
CONFIG.RUSER_WIDTH {0} \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.WUSER_WIDTH {0} \
 ] $S_AXI_CTL
  set pci_express_x8 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pci_express_x8 ]

  # Create ports
  set icap_clk [ create_bd_port -dir I -type clk icap_clk ]
  set_property -dict [ list \
CONFIG.CLK_DOMAIN {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_axi_pcie3_0_0_axi_aclk} \
CONFIG.FREQ_HZ {100000000} \
 ] $icap_clk
  set intx_msi_request [ create_bd_port -dir I intx_msi_request ]
  set msi_vector_num [ create_bd_port -dir I -from 4 -to 0 msi_vector_num ]
  set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $pcie_perstn
  set refclk [ create_bd_port -dir I -type clk refclk ]
  set sys_clk_gt [ create_bd_port -dir I -type clk sys_clk_gt ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]

  # Create instance: axi_hwicap_0, and set properties
  set axi_hwicap_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_hwicap:3.0 axi_hwicap_0 ]

  # Create instance: axi_pcie3_0, and set properties
  set axi_pcie3_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_pcie3:2.1 axi_pcie3_0 ]
  set_property -dict [ list \
CONFIG.PCIE_BOARD_INTERFACE {pci_express_x8} \
CONFIG.SYS_RST_N_BOARD_INTERFACE {pcie_perstn} \
CONFIG.axi_data_width {256_bit} \
CONFIG.axibar_0 {0x0000000000000000} \
CONFIG.axibar_1 {0x0000000000000000} \
CONFIG.axibar_highaddr_0 {0x000000000000FFFF} \
CONFIG.axibar_highaddr_1 {0x0000000000000000} \
CONFIG.axibar_num {1} \
CONFIG.axisten_freq {250} \
CONFIG.coreclk_freq {500} \
CONFIG.en_axi_slave_if {false} \
CONFIG.pf0_bar0_size {64} \
CONFIG.pf0_device_id {8038} \
CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
CONFIG.plltype {QPLL1} \
 ] $axi_pcie3_0

  # Create instance: axi_pcie3_0_axi_periph, and set properties
  set axi_pcie3_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_pcie3_0_axi_periph ]
  set_property -dict [ list \
CONFIG.M00_HAS_REGSLICE {3} \
CONFIG.M01_HAS_REGSLICE {3} \
CONFIG.NUM_MI {2} \
CONFIG.S00_HAS_REGSLICE {3} \
 ] $axi_pcie3_0_axi_periph

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.use_bram_block.VALUE_SRC {DEFAULT} \
 ] $blk_mem_gen_0

  # Create instance: ila_BRAM, and set properties
  set ila_BRAM [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_BRAM ]
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE {AXI} \
 ] $ila_BRAM

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE.VALUE_SRC {DEFAULT} \
 ] $ila_BRAM

  # Create instance: ila_ICAPHW, and set properties
  set ila_ICAPHW [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 ila_ICAPHW ]
  set_property -dict [ list \
CONFIG.ALL_PROBE_SAME_MU_CNT {4} \
CONFIG.C_ADV_TRIGGER {true} \
CONFIG.C_DATA_DEPTH {32768} \
CONFIG.C_EN_STRG_QUAL {1} \
CONFIG.C_INPUT_PIPE_STAGES {4} \
CONFIG.C_MONITOR_TYPE {AXI} \
CONFIG.C_PROBE0_MU_CNT {4} \
CONFIG.C_PROBE10_MU_CNT {4} \
CONFIG.C_PROBE11_MU_CNT {4} \
CONFIG.C_PROBE12_MU_CNT {4} \
CONFIG.C_PROBE13_MU_CNT {4} \
CONFIG.C_PROBE14_MU_CNT {4} \
CONFIG.C_PROBE15_MU_CNT {4} \
CONFIG.C_PROBE16_MU_CNT {4} \
CONFIG.C_PROBE17_MU_CNT {4} \
CONFIG.C_PROBE18_MU_CNT {4} \
CONFIG.C_PROBE1_MU_CNT {4} \
CONFIG.C_PROBE2_MU_CNT {4} \
CONFIG.C_PROBE3_MU_CNT {4} \
CONFIG.C_PROBE4_MU_CNT {4} \
CONFIG.C_PROBE5_MU_CNT {4} \
CONFIG.C_PROBE6_MU_CNT {4} \
CONFIG.C_PROBE7_MU_CNT {4} \
CONFIG.C_PROBE8_MU_CNT {4} \
CONFIG.C_PROBE9_MU_CNT {4} \
 ] $ila_ICAPHW

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_MONITOR_TYPE.VALUE_SRC {DEFAULT} \
 ] $ila_ICAPHW

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_CTL_1 [get_bd_intf_ports S_AXI_CTL] [get_bd_intf_pins axi_pcie3_0/S_AXI_CTL]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_pcie3_0_M_AXI [get_bd_intf_pins axi_pcie3_0/M_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M00_AXI [get_bd_intf_pins axi_hwicap_0/S_AXI_LITE] [get_bd_intf_pins axi_pcie3_0_axi_periph/M00_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_pcie3_0_axi_periph_M00_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M00_AXI] [get_bd_intf_pins ila_ICAPHW/SLOT_0_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_axi_periph_M01_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M01_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets axi_pcie3_0_axi_periph_M01_AXI] [get_bd_intf_pins axi_pcie3_0_axi_periph/M01_AXI] [get_bd_intf_pins ila_BRAM/SLOT_0_AXI]
  connect_bd_intf_net -intf_net axi_pcie3_0_pcie_7x_mgt [get_bd_intf_ports pci_express_x8] [get_bd_intf_pins axi_pcie3_0/pcie_7x_mgt]

  # Create port connections
  connect_bd_net -net axi_pcie3_0_axi_aclk [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_hwicap_0/s_axi_aclk] [get_bd_pins axi_pcie3_0/axi_aclk] [get_bd_pins axi_pcie3_0/axi_ctl_aclk] [get_bd_pins axi_pcie3_0_axi_periph/ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M00_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/M01_ACLK] [get_bd_pins axi_pcie3_0_axi_periph/S00_ACLK] [get_bd_pins ila_BRAM/clk] [get_bd_pins ila_ICAPHW/clk]
  connect_bd_net -net axi_pcie3_0_axi_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_hwicap_0/s_axi_aresetn] [get_bd_pins axi_pcie3_0/axi_aresetn] [get_bd_pins axi_pcie3_0_axi_periph/ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M00_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/M01_ARESETN] [get_bd_pins axi_pcie3_0_axi_periph/S00_ARESETN]
  connect_bd_net -net icap_clk_1 [get_bd_ports icap_clk] [get_bd_pins axi_hwicap_0/icap_clk]
  connect_bd_net -net intx_msi_request_1 [get_bd_ports intx_msi_request] [get_bd_pins axi_pcie3_0/intx_msi_request]
  connect_bd_net -net msi_vector_num_1 [get_bd_ports msi_vector_num] [get_bd_pins axi_pcie3_0/msi_vector_num]
  connect_bd_net -net pcie_perstn_1 [get_bd_ports pcie_perstn] [get_bd_pins axi_pcie3_0/sys_rst_n]
  connect_bd_net -net refclk_1 [get_bd_ports refclk] [get_bd_pins axi_pcie3_0/refclk]
  connect_bd_net -net sys_clk_gt_1 [get_bd_ports sys_clk_gt] [get_bd_pins axi_pcie3_0/sys_clk_gt]

  # Create address segments
  create_bd_addr_seg -range 0x00008000 -offset 0x00008000 [get_bd_addr_spaces axi_pcie3_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces axi_pcie3_0/M_AXI] [get_bd_addr_segs axi_hwicap_0/S_AXI_LITE/Reg] SEG_axi_hwicap_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces S_AXI_CTL] [get_bd_addr_segs axi_pcie3_0/S_AXI_CTL/CTL0] SEG_axi_pcie3_0_CTL0

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port pci_express_x8 -pg 1 -y 390 -defaultsOSRD
preplace port icap_clk -pg 1 -y 280 -defaultsOSRD
preplace port sys_clk_gt -pg 1 -y 480 -defaultsOSRD
preplace port refclk -pg 1 -y 540 -defaultsOSRD
preplace port pcie_perstn -pg 1 -y 440 -defaultsOSRD
preplace port intx_msi_request -pg 1 -y 500 -defaultsOSRD
preplace port S_AXI_CTL -pg 1 -y 420 -defaultsOSRD
preplace portBus msi_vector_num -pg 1 -y 520 -defaultsOSRD
preplace inst ila_BRAM -pg 1 -lvl 3 -y 50 -defaultsOSRD -resize 120 80
preplace inst axi_pcie3_0 -pg 1 -lvl 1 -y 480 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 4 -y 160 -defaultsOSRD
preplace inst ila_ICAPHW -pg 1 -lvl 3 -y 450 -defaultsOSRD
preplace inst axi_pcie3_0_axi_periph -pg 1 -lvl 2 -y 530 -defaultsOSRD
preplace inst axi_hwicap_0 -pg 1 -lvl 3 -y 300 -defaultsOSRD
preplace inst axi_bram_ctrl_0 -pg 1 -lvl 3 -y 160 -defaultsOSRD
preplace netloc icap_clk_1 1 0 3 NJ 280 NJ 280 NJ
preplace netloc S_AXI_CTL_1 1 0 1 NJ
preplace netloc axi_pcie3_0_axi_aresetn 1 1 2 390 340 710
preplace netloc axi_bram_ctrl_0_BRAM_PORTA 1 3 1 N
preplace netloc axi_bram_ctrl_0_BRAM_PORTB 1 3 1 N
preplace netloc refclk_1 1 0 1 NJ
preplace netloc axi_pcie3_0_axi_periph_M00_AXI 1 2 1 690
preplace netloc axi_pcie3_0_M_AXI 1 1 1 380
preplace netloc intx_msi_request_1 1 0 1 NJ
preplace netloc msi_vector_num_1 1 0 1 NJ
preplace netloc pcie_perstn_1 1 0 1 NJ
preplace netloc axi_pcie3_0_pcie_7x_mgt 1 1 4 NJ 390 NJ 390 NJ 390 NJ
preplace netloc axi_pcie3_0_axi_aclk 1 0 3 20 640 400 380 700
preplace netloc sys_clk_gt_1 1 0 1 NJ
preplace netloc axi_pcie3_0_axi_periph_M01_AXI 1 2 1 680
levelinfo -pg 1 0 200 540 840 1080 1200 -top 0 -bot 670
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


