# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 
set_property board_part xilinx.com:kcu105:part0:1.1 [current_project]


add_files -fileset sources_1 -norecurse {
../IP/clk_100Mhz_out/clk_100Mhz_out.xci
../IP/vio_x8/vio_x8.xci
../IP/PCIe_AXI_BRIDGE_BRAM_HWICAP_bd/PCIe_AXI_BRIDGE_BRAM_HWICAP_bd.bd
}

