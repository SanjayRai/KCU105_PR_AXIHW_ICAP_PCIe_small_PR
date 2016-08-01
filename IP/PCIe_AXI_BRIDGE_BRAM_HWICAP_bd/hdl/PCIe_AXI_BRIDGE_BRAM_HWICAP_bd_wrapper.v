//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Tue Jun 28 15:22:11 2016
//Host        : centosMC running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper.bd
//Design      : PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_wrapper
   (S_AXI_CTL_araddr,
    S_AXI_CTL_arready,
    S_AXI_CTL_arvalid,
    S_AXI_CTL_awaddr,
    S_AXI_CTL_awready,
    S_AXI_CTL_awvalid,
    S_AXI_CTL_bready,
    S_AXI_CTL_bresp,
    S_AXI_CTL_bvalid,
    S_AXI_CTL_rdata,
    S_AXI_CTL_rready,
    S_AXI_CTL_rresp,
    S_AXI_CTL_rvalid,
    S_AXI_CTL_wdata,
    S_AXI_CTL_wready,
    S_AXI_CTL_wstrb,
    S_AXI_CTL_wvalid,
    icap_clk,
    intx_msi_request,
    msi_vector_num,
    pci_express_x8_rxn,
    pci_express_x8_rxp,
    pci_express_x8_txn,
    pci_express_x8_txp,
    pcie_perstn,
    refclk,
    sys_clk_gt);
  input [11:0]S_AXI_CTL_araddr;
  output S_AXI_CTL_arready;
  input S_AXI_CTL_arvalid;
  input [11:0]S_AXI_CTL_awaddr;
  output S_AXI_CTL_awready;
  input S_AXI_CTL_awvalid;
  input S_AXI_CTL_bready;
  output [1:0]S_AXI_CTL_bresp;
  output S_AXI_CTL_bvalid;
  output [31:0]S_AXI_CTL_rdata;
  input S_AXI_CTL_rready;
  output [1:0]S_AXI_CTL_rresp;
  output S_AXI_CTL_rvalid;
  input [31:0]S_AXI_CTL_wdata;
  output S_AXI_CTL_wready;
  input [3:0]S_AXI_CTL_wstrb;
  input S_AXI_CTL_wvalid;
  input icap_clk;
  input intx_msi_request;
  input [4:0]msi_vector_num;
  input [7:0]pci_express_x8_rxn;
  input [7:0]pci_express_x8_rxp;
  output [7:0]pci_express_x8_txn;
  output [7:0]pci_express_x8_txp;
  input pcie_perstn;
  input refclk;
  input sys_clk_gt;

  wire [11:0]S_AXI_CTL_araddr;
  wire S_AXI_CTL_arready;
  wire S_AXI_CTL_arvalid;
  wire [11:0]S_AXI_CTL_awaddr;
  wire S_AXI_CTL_awready;
  wire S_AXI_CTL_awvalid;
  wire S_AXI_CTL_bready;
  wire [1:0]S_AXI_CTL_bresp;
  wire S_AXI_CTL_bvalid;
  wire [31:0]S_AXI_CTL_rdata;
  wire S_AXI_CTL_rready;
  wire [1:0]S_AXI_CTL_rresp;
  wire S_AXI_CTL_rvalid;
  wire [31:0]S_AXI_CTL_wdata;
  wire S_AXI_CTL_wready;
  wire [3:0]S_AXI_CTL_wstrb;
  wire S_AXI_CTL_wvalid;
  wire icap_clk;
  wire intx_msi_request;
  wire [4:0]msi_vector_num;
  wire [7:0]pci_express_x8_rxn;
  wire [7:0]pci_express_x8_rxp;
  wire [7:0]pci_express_x8_txn;
  wire [7:0]pci_express_x8_txp;
  wire pcie_perstn;
  wire refclk;
  wire sys_clk_gt;

  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_i
       (.S_AXI_CTL_araddr(S_AXI_CTL_araddr),
        .S_AXI_CTL_arready(S_AXI_CTL_arready),
        .S_AXI_CTL_arvalid(S_AXI_CTL_arvalid),
        .S_AXI_CTL_awaddr(S_AXI_CTL_awaddr),
        .S_AXI_CTL_awready(S_AXI_CTL_awready),
        .S_AXI_CTL_awvalid(S_AXI_CTL_awvalid),
        .S_AXI_CTL_bready(S_AXI_CTL_bready),
        .S_AXI_CTL_bresp(S_AXI_CTL_bresp),
        .S_AXI_CTL_bvalid(S_AXI_CTL_bvalid),
        .S_AXI_CTL_rdata(S_AXI_CTL_rdata),
        .S_AXI_CTL_rready(S_AXI_CTL_rready),
        .S_AXI_CTL_rresp(S_AXI_CTL_rresp),
        .S_AXI_CTL_rvalid(S_AXI_CTL_rvalid),
        .S_AXI_CTL_wdata(S_AXI_CTL_wdata),
        .S_AXI_CTL_wready(S_AXI_CTL_wready),
        .S_AXI_CTL_wstrb(S_AXI_CTL_wstrb),
        .S_AXI_CTL_wvalid(S_AXI_CTL_wvalid),
        .icap_clk(icap_clk),
        .intx_msi_request(intx_msi_request),
        .msi_vector_num(msi_vector_num),
        .pci_express_x8_rxn(pci_express_x8_rxn),
        .pci_express_x8_rxp(pci_express_x8_rxp),
        .pci_express_x8_txn(pci_express_x8_txn),
        .pci_express_x8_txp(pci_express_x8_txp),
        .pcie_perstn(pcie_perstn),
        .refclk(refclk),
        .sys_clk_gt(sys_clk_gt));
endmodule
