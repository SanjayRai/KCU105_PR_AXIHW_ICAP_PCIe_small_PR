//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Sun Jun 26 22:14:12 2016
//Host        : centosMC running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper.bd
//Design      : PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper (
  input        clk_in_300Mhz_p,
  input        clk_in_300Mhz_n,
  input  [7:0] pci_express_x8_rxn,
  input  [7:0] pci_express_x8_rxp,
  output [7:0] pci_express_x8_txn,
  output [7:0] pci_express_x8_txp,
  input         sys_clk_p,
  input         sys_clk_n,
  input         sys_rst_n );

  wire [7:0]pci_express_x8_rxn;
  wire [7:0]pci_express_x8_rxp;
  wire [7:0]pci_express_x8_txn;
  wire [7:0]pci_express_x8_txp;
  wire sys_rst_n_c;
  wire sys_clk;
  wire sys_clk_gt;
  wire icap_clk;
  wire [7:0] LED_out;

  IBUF   sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));
  IBUFDS_GTE3 # (.REFCLK_HROW_CK_SEL(2'b00)) refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(sys_clk_p), .CEB(1'b0), .IB(sys_clk_n));

  clk_100Mhz_out U_clk_100Mhz_out
   (
   // Clock in ports
    .clk_in1_p(clk_in_300Mhz_p),    // input clk_in_300Mhz_p
    .clk_in1_n(clk_in_300Mhz_n),    // input clk_in_300Mhz_n
    // Clock out ports
    .clk_out_100Mhz(icap_clk),     // output clk_out_100Mhz
    // Status and control signals
    .resetn(sys_rst_n_c), // input resetn
    .locked());      // output locked


vio_x8 u_vio_x8 (
  .clk(icap_clk), // input wire clk
  .probe_in0(LED_out)  // input wire [7 : 0] probe_in0
);

  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i (
        .S_AXI_CTL_araddr(12'b0),
        .S_AXI_CTL_arready(),
        .S_AXI_CTL_arvalid(1'b0),
        .S_AXI_CTL_awaddr(12'b0),
        .S_AXI_CTL_awready(),
        .S_AXI_CTL_awvalid(1'b0),
        .S_AXI_CTL_bready(1'b0),
        .S_AXI_CTL_bresp(),
        .S_AXI_CTL_bvalid(),
        .S_AXI_CTL_rdata(),
        .S_AXI_CTL_rready(1'b0),
        .S_AXI_CTL_rresp(),
        .S_AXI_CTL_rvalid(),
        .S_AXI_CTL_wdata(32'b0),
        .S_AXI_CTL_wready(),
        .S_AXI_CTL_wstrb(4'b0),
        .S_AXI_CTL_wvalid(1'b0),
        .icap_clk(icap_clk),
        .intx_msi_request(1'b0),
        .msi_vector_num(5'b0),
        .pci_express_x8_rxn(pci_express_x8_rxn),
        .pci_express_x8_rxp(pci_express_x8_rxp),
        .pci_express_x8_txn(pci_express_x8_txn),
        .pci_express_x8_txp(pci_express_x8_txp),
        .pcie_perstn(sys_rst_n_c),
        .refclk(sys_clk),
        .sys_clk_gt(sys_clk_gt));

PR_module U_PR_module (
    .clk(icap_clk),
    .reset_n(sys_rst_n_c),
    .LED_out(LED_out));

endmodule
