create_clock -name sys_clk -period 10 [get_ports sys_clk_p]

set_false_path -through [get_pins -hier -filter {NAME =~ PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_pcie3_0/inst/pcie3_ip_i/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/PCIE_3_1_inst/CFGMAX*}]
set_false_path -through [get_nets PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_pcie3_0/inst/inst/cfg*]

set_false_path -from [get_ports sys_rst_n]

set_property ODT RTT_48 [get_ports "clk_in_300Mhz_n"]
set_property PACKAGE_PIN AK16 [get_ports "clk_in_300Mhz_n"]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports "clk_in_300Mhz_n"]
set_property PACKAGE_PIN AK17 [get_ports "clk_in_300Mhz_p"]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports "clk_in_300Mhz_p"]
set_property ODT RTT_48 [get_ports "clk_in_300Mhz_p"]	
###############################################################################
# User Physical Constraints
###############################################################################

###############################################################################
# Pinout and Related I/O Constraints
###############################################################################
##### SYS RESET###########
set_property LOC [get_package_pins -filter {PIN_FUNC == IO_T3U_N12_PERSTN0_65}] [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports sys_rst_n]

set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

##### REFCLK_IBUF###########
set_property LOC AB6 [get_cells refclk_ibuf]
# ##### LED's ###########
# set_property PACKAGE_PIN AP8 [get_ports led_0]   
# # sys_reset
# set_property PACKAGE_PIN H23 [get_ports led_1]   
# # user_reset
# set_property PACKAGE_PIN P20 [get_ports led_2]   
# # user_link_up 
# set_property PACKAGE_PIN P21 [get_ports led_3]   
# # Clock Up/Heart Beat(HB)

# set_property IOSTANDARD LVCMOS18 [get_ports led_0]
# set_property IOSTANDARD LVCMOS18 [get_ports led_1]
# set_property IOSTANDARD LVCMOS18 [get_ports led_2]
# set_property IOSTANDARD LVCMOS18 [get_ports led_3]
###############################################################################
# Flash Programming Settings: Uncomment as required by your design
# Items below between < > must be updated with correct values to work properly.
###############################################################################
# BPI Flash Programming
#set_property CONFIG_MODE BPI16 [current_design]
#set_property BITSTREAM.CONFIG.BPI_SYNC_MODE <disable | Type1 | Type2> [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 9 [current_design]
#set_property CONFIG_VOLTAGE <voltage> [current_design]
#set_property CFGBVS GND [current_design]
# Example PROM Generation command that should be executed from the Tcl Console
#write_cfgmem -format mcs -interface bpix16 -size 128 -loadbit "up 0x0 <inputBitfile.bit>" <outputBitfile.bit>

# SPI Flash Programming
#set_property CONFIG_MODE SPIx4 [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 \[current_design\]"
#set_property CONFIG_VOLTAGE <voltage> [current_design]
#set_property CFGBVS <GND | VCC> [current_design]
# Example PROM Generation command that should be executed from the Tcl Console
#write_cfgmem -format mcs -interface spix4 -size 128 -loadbit "up 0x0 <inputBitfile.bit>" <outputBitfile.bit>

create_pblock pblock_U_PR_module
add_cells_to_pblock [get_pblocks pblock_U_PR_module] [get_cells -quiet [list U_PR_module]]
resize_pblock [get_pblocks pblock_U_PR_module] -add {CLOCKREGION_X2Y2:CLOCKREGION_X2Y2}
set_property HD.RECONFIGURABLE 1 [get_cells U_PR_module]

