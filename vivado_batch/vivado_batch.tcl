# Created : 9:31:38, Tue Jun 21, 2016 : Sanjay Rai

source ../device_type.tcl

proc create_icap_dbg {} {
create_debug_core u_ila_o_ICAP_prim ila
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_o_ICAP_prim]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_o_ICAP_prim]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_o_ICAP_prim]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_o_ICAP_prim]
set_property C_INPUT_PIPE_STAGES 4 [get_debug_cores u_ila_o_ICAP_prim]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_o_ICAP_prim]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_o_ICAP_prim]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_o_ICAP_prim]
startgroup 
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_o_ICAP_prim ]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_o_ICAP_prim ]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_o_ICAP_prim ]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_o_ICAP_prim ]
endgroup
set_property port_width 1 [get_debug_ports u_ila_o_ICAP_prim/clk]
connect_debug_port u_ila_o_ICAP_prim/clk [get_nets [list U_clk_100Mhz_out/inst/clk_out_100Mhz ]]
set_property port_width 32 [get_debug_ports u_ila_o_ICAP_prim/probe0]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_o_ICAP_prim/probe0]
connect_debug_port u_ila_o_ICAP_prim/probe0 [get_nets [list {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[31]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[30]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[29]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[28]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[27]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[26]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[25]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[24]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[23]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[22]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[21]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[20]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[19]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[18]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[17]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[16]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[15]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[14]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[13]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[12]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[11]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[10]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[9]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[8]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[7]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[6]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[5]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[4]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[3]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[2]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[1]} {PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[0]} ]]
create_debug_port u_ila_o_ICAP_prim probe
set_property port_width 1 [get_debug_ports u_ila_o_ICAP_prim/probe1]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_o_ICAP_prim/probe1]
connect_debug_port u_ila_o_ICAP_prim/probe1 [get_nets [list PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_ce ]]
create_debug_port u_ila_o_ICAP_prim probe
set_property port_width 1 [get_debug_ports u_ila_o_ICAP_prim/probe2]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_o_ICAP_prim/probe2]
connect_debug_port u_ila_o_ICAP_prim/probe2 [get_nets [list PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_we ]]
}







set TOP_module PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper

create_project -in_memory -part [DEVICE_TYPE] 

set_property board_part xilinx.com:kcu105:part0:1.1 [current_project]

read_ip {
 ../IP/vio_x8/vio_x8.xci
 ../IP/clk_100Mhz_out/clk_100Mhz_out.xci
}
read_bd {
../IP/PCIe_AXI_BRIDGE_BRAM_HWICAP_bd/PCIe_AXI_BRIDGE_BRAM_HWICAP_bd.bd
}

read_verilog {
../src/PR_modules/src/PR_module.v
../src/PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper.v
}

read_xdc {
../src/xdc/PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper.xdc
}

synth_design -top $TOP_module -part [DEVICE_TYPE] 
opt_design -verbose -directive Explore

set_property mark_debug true [get_nets [list PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_ce]]
set_property mark_debug true [get_nets [list PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_datain[*]]]
set_property mark_debug true [get_nets [list PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i/axi_hwicap_0/U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/icap_we]]

create_icap_dbg
implement_debug_core
write_checkpoint -force $TOP_module.post_synth_opt.dcp
if (1) {
place_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place_phys_opt.dcp
set_property HD.NO_ROUTE_CONTAINMENT 1 [get_nets -of_objects [get_pins U_clk_100Mhz_out/inst/clkout1_buf/O]]
route_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route_phys_opt.dcp
write_debug_probes ./$TOP_module.ltx
report_timing_summary -file $TOP_module.timing_summary.rpt
report_drc -file $TOP_module.drc.rpt
set_property config_mode SPIx4 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]
write_bitstream -bin_file $TOP_module.bit      
}
