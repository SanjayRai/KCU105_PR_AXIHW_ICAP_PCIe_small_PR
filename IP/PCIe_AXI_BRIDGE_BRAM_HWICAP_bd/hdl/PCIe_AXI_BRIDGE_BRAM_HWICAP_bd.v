//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Tue Jun 28 15:22:11 2016
//Host        : centosMC running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target PCIe_AXI_BRIDGE_BRAM_HWICAP_bd.bd
//Design      : PCIe_AXI_BRIDGE_BRAM_HWICAP_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PCIe_AXI_BRIDGE_BRAM_HWICAP_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PCIe_AXI_BRIDGE_BRAM_HWICAP_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=2,da_bram_cntlr_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "PCIe_AXI_BRIDGE_BRAM_HWICAP_bd.hwdef" *) 
module PCIe_AXI_BRIDGE_BRAM_HWICAP_bd
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

  wire [11:0]S_AXI_CTL_1_ARADDR;
  wire S_AXI_CTL_1_ARREADY;
  wire S_AXI_CTL_1_ARVALID;
  wire [11:0]S_AXI_CTL_1_AWADDR;
  wire S_AXI_CTL_1_AWREADY;
  wire S_AXI_CTL_1_AWVALID;
  wire S_AXI_CTL_1_BREADY;
  wire [1:0]S_AXI_CTL_1_BRESP;
  wire S_AXI_CTL_1_BVALID;
  wire [31:0]S_AXI_CTL_1_RDATA;
  wire S_AXI_CTL_1_RREADY;
  wire [1:0]S_AXI_CTL_1_RRESP;
  wire S_AXI_CTL_1_RVALID;
  wire [31:0]S_AXI_CTL_1_WDATA;
  wire S_AXI_CTL_1_WREADY;
  wire [3:0]S_AXI_CTL_1_WSTRB;
  wire S_AXI_CTL_1_WVALID;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [31:0]axi_pcie3_0_M_AXI_ARADDR;
  wire [1:0]axi_pcie3_0_M_AXI_ARBURST;
  wire [3:0]axi_pcie3_0_M_AXI_ARCACHE;
  wire [2:0]axi_pcie3_0_M_AXI_ARID;
  wire [7:0]axi_pcie3_0_M_AXI_ARLEN;
  wire axi_pcie3_0_M_AXI_ARLOCK;
  wire [2:0]axi_pcie3_0_M_AXI_ARPROT;
  wire [0:0]axi_pcie3_0_M_AXI_ARREADY;
  wire [2:0]axi_pcie3_0_M_AXI_ARSIZE;
  wire axi_pcie3_0_M_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_M_AXI_AWADDR;
  wire [1:0]axi_pcie3_0_M_AXI_AWBURST;
  wire [3:0]axi_pcie3_0_M_AXI_AWCACHE;
  wire [2:0]axi_pcie3_0_M_AXI_AWID;
  wire [7:0]axi_pcie3_0_M_AXI_AWLEN;
  wire axi_pcie3_0_M_AXI_AWLOCK;
  wire [2:0]axi_pcie3_0_M_AXI_AWPROT;
  wire [0:0]axi_pcie3_0_M_AXI_AWREADY;
  wire [2:0]axi_pcie3_0_M_AXI_AWSIZE;
  wire axi_pcie3_0_M_AXI_AWVALID;
  wire [2:0]axi_pcie3_0_M_AXI_BID;
  wire axi_pcie3_0_M_AXI_BREADY;
  wire [1:0]axi_pcie3_0_M_AXI_BRESP;
  wire [0:0]axi_pcie3_0_M_AXI_BVALID;
  wire [255:0]axi_pcie3_0_M_AXI_RDATA;
  wire [2:0]axi_pcie3_0_M_AXI_RID;
  wire [0:0]axi_pcie3_0_M_AXI_RLAST;
  wire axi_pcie3_0_M_AXI_RREADY;
  wire [1:0]axi_pcie3_0_M_AXI_RRESP;
  wire [31:0]axi_pcie3_0_M_AXI_RUSER;
  wire [0:0]axi_pcie3_0_M_AXI_RVALID;
  wire [255:0]axi_pcie3_0_M_AXI_WDATA;
  wire axi_pcie3_0_M_AXI_WLAST;
  wire [0:0]axi_pcie3_0_M_AXI_WREADY;
  wire [31:0]axi_pcie3_0_M_AXI_WSTRB;
  wire [31:0]axi_pcie3_0_M_AXI_WUSER;
  wire axi_pcie3_0_M_AXI_WVALID;
  wire axi_pcie3_0_axi_aclk;
  wire axi_pcie3_0_axi_aresetn;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_ARADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_AWADDR;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWREADY;
  wire axi_pcie3_0_axi_periph_M00_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M00_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M00_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M00_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M00_AXI_WVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M01_AXI_ARADDR;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_ARBURST;
  wire [3:0]axi_pcie3_0_axi_periph_M01_AXI_ARCACHE;
  wire [7:0]axi_pcie3_0_axi_periph_M01_AXI_ARLEN;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_ARLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_ARPROT;
  wire axi_pcie3_0_axi_periph_M01_AXI_ARREADY;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_ARSIZE;
  wire axi_pcie3_0_axi_periph_M01_AXI_ARVALID;
  wire [14:0]axi_pcie3_0_axi_periph_M01_AXI_AWADDR;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_AWBURST;
  wire [3:0]axi_pcie3_0_axi_periph_M01_AXI_AWCACHE;
  wire [7:0]axi_pcie3_0_axi_periph_M01_AXI_AWLEN;
  wire [0:0]axi_pcie3_0_axi_periph_M01_AXI_AWLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_AWPROT;
  wire axi_pcie3_0_axi_periph_M01_AXI_AWREADY;
  wire [2:0]axi_pcie3_0_axi_periph_M01_AXI_AWSIZE;
  wire axi_pcie3_0_axi_periph_M01_AXI_AWVALID;
  wire axi_pcie3_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_BRESP;
  wire axi_pcie3_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_RDATA;
  wire axi_pcie3_0_axi_periph_M01_AXI_RLAST;
  wire axi_pcie3_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_M01_AXI_RRESP;
  wire axi_pcie3_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_pcie3_0_axi_periph_M01_AXI_WDATA;
  wire axi_pcie3_0_axi_periph_M01_AXI_WLAST;
  wire axi_pcie3_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_pcie3_0_axi_periph_M01_AXI_WSTRB;
  wire axi_pcie3_0_axi_periph_M01_AXI_WVALID;
  wire [7:0]axi_pcie3_0_pcie_7x_mgt_rxn;
  wire [7:0]axi_pcie3_0_pcie_7x_mgt_rxp;
  wire [7:0]axi_pcie3_0_pcie_7x_mgt_txn;
  wire [7:0]axi_pcie3_0_pcie_7x_mgt_txp;
  wire icap_clk_1;
  wire intx_msi_request_1;
  wire [4:0]msi_vector_num_1;
  wire pcie_perstn_1;
  wire refclk_1;
  wire sys_clk_gt_1;

  assign S_AXI_CTL_1_ARADDR = S_AXI_CTL_araddr[11:0];
  assign S_AXI_CTL_1_ARVALID = S_AXI_CTL_arvalid;
  assign S_AXI_CTL_1_AWADDR = S_AXI_CTL_awaddr[11:0];
  assign S_AXI_CTL_1_AWVALID = S_AXI_CTL_awvalid;
  assign S_AXI_CTL_1_BREADY = S_AXI_CTL_bready;
  assign S_AXI_CTL_1_RREADY = S_AXI_CTL_rready;
  assign S_AXI_CTL_1_WDATA = S_AXI_CTL_wdata[31:0];
  assign S_AXI_CTL_1_WSTRB = S_AXI_CTL_wstrb[3:0];
  assign S_AXI_CTL_1_WVALID = S_AXI_CTL_wvalid;
  assign S_AXI_CTL_arready = S_AXI_CTL_1_ARREADY;
  assign S_AXI_CTL_awready = S_AXI_CTL_1_AWREADY;
  assign S_AXI_CTL_bresp[1:0] = S_AXI_CTL_1_BRESP;
  assign S_AXI_CTL_bvalid = S_AXI_CTL_1_BVALID;
  assign S_AXI_CTL_rdata[31:0] = S_AXI_CTL_1_RDATA;
  assign S_AXI_CTL_rresp[1:0] = S_AXI_CTL_1_RRESP;
  assign S_AXI_CTL_rvalid = S_AXI_CTL_1_RVALID;
  assign S_AXI_CTL_wready = S_AXI_CTL_1_WREADY;
  assign axi_pcie3_0_pcie_7x_mgt_rxn = pci_express_x8_rxn[7:0];
  assign axi_pcie3_0_pcie_7x_mgt_rxp = pci_express_x8_rxp[7:0];
  assign icap_clk_1 = icap_clk;
  assign intx_msi_request_1 = intx_msi_request;
  assign msi_vector_num_1 = msi_vector_num[4:0];
  assign pci_express_x8_txn[7:0] = axi_pcie3_0_pcie_7x_mgt_txn;
  assign pci_express_x8_txp[7:0] = axi_pcie3_0_pcie_7x_mgt_txp;
  assign pcie_perstn_1 = pcie_perstn;
  assign refclk_1 = refclk;
  assign sys_clk_gt_1 = sys_clk_gt;
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(axi_pcie3_0_axi_aclk),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .s_axi_arburst(axi_pcie3_0_axi_periph_M01_AXI_ARBURST),
        .s_axi_arcache(axi_pcie3_0_axi_periph_M01_AXI_ARCACHE),
        .s_axi_aresetn(axi_pcie3_0_axi_aresetn),
        .s_axi_arlen(axi_pcie3_0_axi_periph_M01_AXI_ARLEN),
        .s_axi_arlock(axi_pcie3_0_axi_periph_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .s_axi_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arsize(axi_pcie3_0_axi_periph_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .s_axi_awburst(axi_pcie3_0_axi_periph_M01_AXI_AWBURST),
        .s_axi_awcache(axi_pcie3_0_axi_periph_M01_AXI_AWCACHE),
        .s_axi_awlen(axi_pcie3_0_axi_periph_M01_AXI_AWLEN),
        .s_axi_awlock(axi_pcie3_0_axi_periph_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .s_axi_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awsize(axi_pcie3_0_axi_periph_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rlast(axi_pcie3_0_axi_periph_M01_AXI_RLAST),
        .s_axi_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wlast(axi_pcie3_0_axi_periph_M01_AXI_WLAST),
        .s_axi_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_axi_hwicap_0_0 axi_hwicap_0
       (.eos_in(1'b1),
        .icap_clk(icap_clk_1),
        .s_axi_aclk(axi_pcie3_0_axi_aclk),
        .s_axi_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(axi_pcie3_0_axi_aresetn),
        .s_axi_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_axi_pcie3_0_0 axi_pcie3_0
       (.axi_aclk(axi_pcie3_0_axi_aclk),
        .axi_aresetn(axi_pcie3_0_axi_aresetn),
        .axi_ctl_aclk(axi_pcie3_0_axi_aclk),
        .intx_msi_request(intx_msi_request_1),
        .m_axi_araddr(axi_pcie3_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_pcie3_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_pcie3_0_M_AXI_ARCACHE),
        .m_axi_arid(axi_pcie3_0_M_AXI_ARID),
        .m_axi_arlen(axi_pcie3_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_pcie3_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_pcie3_0_M_AXI_ARPROT),
        .m_axi_arready(axi_pcie3_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_pcie3_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_pcie3_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_pcie3_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_pcie3_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_pcie3_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_pcie3_0_M_AXI_AWID),
        .m_axi_awlen(axi_pcie3_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_pcie3_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_pcie3_0_M_AXI_AWPROT),
        .m_axi_awready(axi_pcie3_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_pcie3_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_pcie3_0_M_AXI_AWVALID),
        .m_axi_bid(axi_pcie3_0_M_AXI_BID),
        .m_axi_bready(axi_pcie3_0_M_AXI_BREADY),
        .m_axi_bresp(axi_pcie3_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_pcie3_0_M_AXI_BVALID),
        .m_axi_rdata(axi_pcie3_0_M_AXI_RDATA),
        .m_axi_rid(axi_pcie3_0_M_AXI_RID),
        .m_axi_rlast(axi_pcie3_0_M_AXI_RLAST),
        .m_axi_rready(axi_pcie3_0_M_AXI_RREADY),
        .m_axi_rresp(axi_pcie3_0_M_AXI_RRESP),
        .m_axi_ruser(axi_pcie3_0_M_AXI_RUSER),
        .m_axi_rvalid(axi_pcie3_0_M_AXI_RVALID),
        .m_axi_wdata(axi_pcie3_0_M_AXI_WDATA),
        .m_axi_wlast(axi_pcie3_0_M_AXI_WLAST),
        .m_axi_wready(axi_pcie3_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_pcie3_0_M_AXI_WSTRB),
        .m_axi_wuser(axi_pcie3_0_M_AXI_WUSER),
        .m_axi_wvalid(axi_pcie3_0_M_AXI_WVALID),
        .msi_vector_num(msi_vector_num_1),
        .pci_exp_rxn(axi_pcie3_0_pcie_7x_mgt_rxn),
        .pci_exp_rxp(axi_pcie3_0_pcie_7x_mgt_rxp),
        .pci_exp_txn(axi_pcie3_0_pcie_7x_mgt_txn),
        .pci_exp_txp(axi_pcie3_0_pcie_7x_mgt_txp),
        .refclk(refclk_1),
        .s_axi_ctl_araddr(S_AXI_CTL_1_ARADDR),
        .s_axi_ctl_arready(S_AXI_CTL_1_ARREADY),
        .s_axi_ctl_arvalid(S_AXI_CTL_1_ARVALID),
        .s_axi_ctl_awaddr(S_AXI_CTL_1_AWADDR),
        .s_axi_ctl_awready(S_AXI_CTL_1_AWREADY),
        .s_axi_ctl_awvalid(S_AXI_CTL_1_AWVALID),
        .s_axi_ctl_bready(S_AXI_CTL_1_BREADY),
        .s_axi_ctl_bresp(S_AXI_CTL_1_BRESP),
        .s_axi_ctl_bvalid(S_AXI_CTL_1_BVALID),
        .s_axi_ctl_rdata(S_AXI_CTL_1_RDATA),
        .s_axi_ctl_rready(S_AXI_CTL_1_RREADY),
        .s_axi_ctl_rresp(S_AXI_CTL_1_RRESP),
        .s_axi_ctl_rvalid(S_AXI_CTL_1_RVALID),
        .s_axi_ctl_wdata(S_AXI_CTL_1_WDATA),
        .s_axi_ctl_wready(S_AXI_CTL_1_WREADY),
        .s_axi_ctl_wstrb(S_AXI_CTL_1_WSTRB),
        .s_axi_ctl_wvalid(S_AXI_CTL_1_WVALID),
        .sys_clk_gt(sys_clk_gt_1),
        .sys_rst_n(pcie_perstn_1));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_axi_pcie3_0_axi_periph_0 axi_pcie3_0_axi_periph
       (.ACLK(axi_pcie3_0_axi_aclk),
        .ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_ACLK(axi_pcie3_0_axi_aclk),
        .M00_ARESETN(axi_pcie3_0_axi_aresetn),
        .M00_AXI_araddr(axi_pcie3_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_pcie3_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pcie3_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(axi_pcie3_0_axi_aclk),
        .M01_ARESETN(axi_pcie3_0_axi_aresetn),
        .M01_AXI_araddr(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_pcie3_0_axi_periph_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_pcie3_0_axi_periph_M01_AXI_ARCACHE),
        .M01_AXI_arlen(axi_pcie3_0_axi_periph_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_pcie3_0_axi_periph_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_pcie3_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_pcie3_0_axi_periph_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_pcie3_0_axi_periph_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_pcie3_0_axi_periph_M01_AXI_AWCACHE),
        .M01_AXI_awlen(axi_pcie3_0_axi_periph_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_pcie3_0_axi_periph_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_pcie3_0_axi_periph_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rlast(axi_pcie3_0_axi_periph_M01_AXI_RLAST),
        .M01_AXI_rready(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_pcie3_0_axi_periph_M01_AXI_WLAST),
        .M01_AXI_wready(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .S00_ACLK(axi_pcie3_0_axi_aclk),
        .S00_ARESETN(axi_pcie3_0_axi_aresetn),
        .S00_AXI_araddr(axi_pcie3_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_pcie3_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_pcie3_0_M_AXI_ARCACHE),
        .S00_AXI_arid(axi_pcie3_0_M_AXI_ARID),
        .S00_AXI_arlen(axi_pcie3_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_pcie3_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_pcie3_0_M_AXI_ARPROT),
        .S00_AXI_arready(axi_pcie3_0_M_AXI_ARREADY),
        .S00_AXI_arsize(axi_pcie3_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_pcie3_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_pcie3_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_pcie3_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_pcie3_0_M_AXI_AWCACHE),
        .S00_AXI_awid(axi_pcie3_0_M_AXI_AWID),
        .S00_AXI_awlen(axi_pcie3_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_pcie3_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_pcie3_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi_pcie3_0_M_AXI_AWREADY),
        .S00_AXI_awsize(axi_pcie3_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_pcie3_0_M_AXI_AWVALID),
        .S00_AXI_bid(axi_pcie3_0_M_AXI_BID),
        .S00_AXI_bready(axi_pcie3_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_pcie3_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_pcie3_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_pcie3_0_M_AXI_RDATA),
        .S00_AXI_rid(axi_pcie3_0_M_AXI_RID),
        .S00_AXI_rlast(axi_pcie3_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_pcie3_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_pcie3_0_M_AXI_RRESP),
        .S00_AXI_ruser(axi_pcie3_0_M_AXI_RUSER),
        .S00_AXI_rvalid(axi_pcie3_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_pcie3_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_pcie3_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_pcie3_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_pcie3_0_M_AXI_WSTRB),
        .S00_AXI_wuser(axi_pcie3_0_M_AXI_WUSER),
        .S00_AXI_wvalid(axi_pcie3_0_M_AXI_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_ila_ICAPHW_0 ila_BRAM
       (.clk(axi_pcie3_0_axi_aclk),
        .probe0(axi_pcie3_0_axi_periph_M01_AXI_WREADY),
        .probe1(axi_pcie3_0_axi_periph_M01_AXI_AWADDR),
        .probe10(axi_pcie3_0_axi_periph_M01_AXI_RDATA),
        .probe11(axi_pcie3_0_axi_periph_M01_AXI_AWVALID),
        .probe12(axi_pcie3_0_axi_periph_M01_AXI_AWREADY),
        .probe13(axi_pcie3_0_axi_periph_M01_AXI_RRESP),
        .probe14(axi_pcie3_0_axi_periph_M01_AXI_WDATA),
        .probe15(axi_pcie3_0_axi_periph_M01_AXI_WSTRB),
        .probe16(axi_pcie3_0_axi_periph_M01_AXI_RVALID),
        .probe17(axi_pcie3_0_axi_periph_M01_AXI_ARPROT),
        .probe18(axi_pcie3_0_axi_periph_M01_AXI_AWPROT),
        .probe19(1'b0),
        .probe2(axi_pcie3_0_axi_periph_M01_AXI_BRESP),
        .probe20(1'b0),
        .probe21(axi_pcie3_0_axi_periph_M01_AXI_AWLEN),
        .probe22(1'b0),
        .probe23(axi_pcie3_0_axi_periph_M01_AXI_AWSIZE),
        .probe24(axi_pcie3_0_axi_periph_M01_AXI_AWBURST),
        .probe25(1'b0),
        .probe26(axi_pcie3_0_axi_periph_M01_AXI_AWLOCK),
        .probe27(axi_pcie3_0_axi_periph_M01_AXI_ARLEN),
        .probe28(axi_pcie3_0_axi_periph_M01_AXI_ARSIZE),
        .probe29(axi_pcie3_0_axi_periph_M01_AXI_ARBURST),
        .probe3(axi_pcie3_0_axi_periph_M01_AXI_BVALID),
        .probe30(axi_pcie3_0_axi_periph_M01_AXI_ARLOCK),
        .probe31(axi_pcie3_0_axi_periph_M01_AXI_ARCACHE),
        .probe32(axi_pcie3_0_axi_periph_M01_AXI_AWCACHE),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(1'b0),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38(1'b0),
        .probe39(1'b0),
        .probe4(axi_pcie3_0_axi_periph_M01_AXI_BREADY),
        .probe40(axi_pcie3_0_axi_periph_M01_AXI_RLAST),
        .probe41(1'b0),
        .probe42(axi_pcie3_0_axi_periph_M01_AXI_WLAST),
        .probe43(1'b0),
        .probe5(axi_pcie3_0_axi_periph_M01_AXI_ARADDR),
        .probe6(axi_pcie3_0_axi_periph_M01_AXI_RREADY),
        .probe7(axi_pcie3_0_axi_periph_M01_AXI_WVALID),
        .probe8(axi_pcie3_0_axi_periph_M01_AXI_ARVALID),
        .probe9(axi_pcie3_0_axi_periph_M01_AXI_ARREADY));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_ila_0_0 ila_ICAPHW
       (.clk(axi_pcie3_0_axi_aclk),
        .probe0(axi_pcie3_0_axi_periph_M00_AXI_WREADY),
        .probe1(axi_pcie3_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .probe10(axi_pcie3_0_axi_periph_M00_AXI_RDATA),
        .probe11(axi_pcie3_0_axi_periph_M00_AXI_AWVALID),
        .probe12(axi_pcie3_0_axi_periph_M00_AXI_AWREADY),
        .probe13(axi_pcie3_0_axi_periph_M00_AXI_RRESP),
        .probe14(axi_pcie3_0_axi_periph_M00_AXI_WDATA),
        .probe15(axi_pcie3_0_axi_periph_M00_AXI_WSTRB),
        .probe16(axi_pcie3_0_axi_periph_M00_AXI_RVALID),
        .probe17({1'b0,1'b0,1'b0}),
        .probe18({1'b0,1'b0,1'b0}),
        .probe2(axi_pcie3_0_axi_periph_M00_AXI_BRESP),
        .probe3(axi_pcie3_0_axi_periph_M00_AXI_BVALID),
        .probe4(axi_pcie3_0_axi_periph_M00_AXI_BREADY),
        .probe5(axi_pcie3_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .probe6(axi_pcie3_0_axi_periph_M00_AXI_RREADY),
        .probe7(axi_pcie3_0_axi_periph_M00_AXI_WVALID),
        .probe8(axi_pcie3_0_axi_periph_M00_AXI_ARVALID),
        .probe9(axi_pcie3_0_axi_periph_M00_AXI_ARREADY));
endmodule

module PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_axi_pcie3_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [14:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [14:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [2:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [255:0]S00_AXI_rdata;
  output [2:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [31:0]S00_AXI_ruser;
  output [0:0]S00_AXI_rvalid;
  input [255:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [31:0]S00_AXI_wstrb;
  input [31:0]S00_AXI_wuser;
  input [0:0]S00_AXI_wvalid;

  wire axi_pcie3_0_axi_periph_ACLK_net;
  wire axi_pcie3_0_axi_periph_ARESETN_net;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARSIZE;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWSIZE;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_BID;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  wire [255:0]axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  wire [2:0]axi_pcie3_0_axi_periph_to_s00_couplers_RID;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_RLAST;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_RUSER;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  wire [255:0]axi_pcie3_0_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_WLAST;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB;
  wire [31:0]axi_pcie3_0_axi_periph_to_s00_couplers_WUSER;
  wire [0:0]axi_pcie3_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [14:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARBURST;
  wire [3:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARCACHE;
  wire [7:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARLEN;
  wire [0:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARLOCK;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_ARSIZE;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  wire [14:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWBURST;
  wire [3:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWCACHE;
  wire [7:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWLEN;
  wire [0:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWLOCK;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY;
  wire [2:0]m01_couplers_to_axi_pcie3_0_axi_periph_AWSIZE;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_BRESP;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_RDATA;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RLAST;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_axi_pcie3_0_axi_periph_RRESP;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WLAST;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  wire m01_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [2:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [2:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [2:0]s00_couplers_to_xbar_BID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire [2:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [31:0]s00_couplers_to_xbar_RUSER;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [255:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [31:0]s00_couplers_to_xbar_WSTRB;
  wire [31:0]s00_couplers_to_xbar_WUSER;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [2:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [255:0]xbar_to_m00_couplers_RDATA;
  wire [2:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [31:0]xbar_to_m00_couplers_RUSER;
  wire xbar_to_m00_couplers_RVALID;
  wire [255:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [31:0]xbar_to_m00_couplers_WSTRB;
  wire [31:0]xbar_to_m00_couplers_WUSER;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [5:3]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [5:3]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [2:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [255:0]xbar_to_m01_couplers_RDATA;
  wire [2:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [31:0]xbar_to_m01_couplers_RUSER;
  wire xbar_to_m01_couplers_RVALID;
  wire [511:256]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [63:32]xbar_to_m01_couplers_WSTRB;
  wire [63:32]xbar_to_m01_couplers_WUSER;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign M01_AXI_araddr[14:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARCACHE;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[14:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWCACHE;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_pcie3_0_axi_periph_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_pcie3_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_pcie3_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_pcie3_0_axi_periph_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_pcie3_0_axi_periph_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_pcie3_0_axi_periph_WVALID;
  assign S00_AXI_arready[0] = axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[2:0] = axi_pcie3_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_pcie3_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[255:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[2:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast[0] = axi_pcie3_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_ruser[31:0] = axi_pcie3_0_axi_periph_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid[0] = axi_pcie3_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_pcie3_0_axi_periph_to_s00_couplers_WREADY;
  assign axi_pcie3_0_axi_periph_ACLK_net = ACLK;
  assign axi_pcie3_0_axi_periph_ARESETN_net = ARESETN;
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[255:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WUSER = S00_AXI_wuser[31:0];
  assign axi_pcie3_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_pcie3_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_pcie3_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_pcie3_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_pcie3_0_axi_periph_WREADY = M01_AXI_wready;
  m00_couplers_imp_PE9BCN m00_couplers
       (.M_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_ruser(xbar_to_m00_couplers_RUSER),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wuser(xbar_to_m00_couplers_WUSER),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1VWW2R4 m01_couplers
       (.M_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_pcie3_0_axi_periph_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_pcie3_0_axi_periph_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_pcie3_0_axi_periph_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_axi_pcie3_0_axi_periph_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_pcie3_0_axi_periph_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_pcie3_0_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_pcie3_0_axi_periph_ARREADY),
        .M_AXI_arsize(m01_couplers_to_axi_pcie3_0_axi_periph_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_pcie3_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_pcie3_0_axi_periph_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_pcie3_0_axi_periph_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_pcie3_0_axi_periph_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_axi_pcie3_0_axi_periph_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_pcie3_0_axi_periph_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_pcie3_0_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_pcie3_0_axi_periph_AWREADY),
        .M_AXI_awsize(m01_couplers_to_axi_pcie3_0_axi_periph_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_pcie3_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_pcie3_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_pcie3_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_pcie3_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_pcie3_0_axi_periph_RDATA),
        .M_AXI_rlast(m01_couplers_to_axi_pcie3_0_axi_periph_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_pcie3_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_pcie3_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_pcie3_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_pcie3_0_axi_periph_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_pcie3_0_axi_periph_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_pcie3_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_pcie3_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_pcie3_0_axi_periph_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_ruser(xbar_to_m01_couplers_RUSER),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wuser(xbar_to_m01_couplers_WUSER),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_DP31QG s00_couplers
       (.M_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_ruser(s00_couplers_to_xbar_RUSER),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wuser(s00_couplers_to_xbar_WUSER),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_pcie3_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_pcie3_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(axi_pcie3_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_pcie3_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_pcie3_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_pcie3_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_pcie3_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_pcie3_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_pcie3_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_pcie3_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_pcie3_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_pcie3_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_pcie3_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_pcie3_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_pcie3_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_pcie3_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_pcie3_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_pcie3_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_pcie3_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_pcie3_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_pcie3_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_pcie3_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_pcie3_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(axi_pcie3_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_pcie3_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_pcie3_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_pcie3_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_pcie3_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(axi_pcie3_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_pcie3_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_pcie3_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_ruser(axi_pcie3_0_axi_periph_to_s00_couplers_RUSER),
        .S_AXI_rvalid(axi_pcie3_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_pcie3_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_pcie3_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_pcie3_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_pcie3_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wuser(axi_pcie3_0_axi_periph_to_s00_couplers_WUSER),
        .S_AXI_wvalid(axi_pcie3_0_axi_periph_to_s00_couplers_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_xbar_1 xbar
       (.aclk(axi_pcie3_0_axi_periph_ACLK_net),
        .aresetn(axi_pcie3_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_ruser({xbar_to_m01_couplers_RUSER,xbar_to_m00_couplers_RUSER}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wuser({xbar_to_m01_couplers_WUSER,xbar_to_m00_couplers_WUSER}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_ruser(s00_couplers_to_xbar_RUSER),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wuser(s00_couplers_to_xbar_WUSER),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_PE9BCN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [31:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [31:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_auto_rs_ARADDR;
  wire [1:0]auto_ds_to_auto_rs_ARBURST;
  wire [3:0]auto_ds_to_auto_rs_ARCACHE;
  wire [7:0]auto_ds_to_auto_rs_ARLEN;
  wire [0:0]auto_ds_to_auto_rs_ARLOCK;
  wire [2:0]auto_ds_to_auto_rs_ARPROT;
  wire [3:0]auto_ds_to_auto_rs_ARQOS;
  wire auto_ds_to_auto_rs_ARREADY;
  wire [3:0]auto_ds_to_auto_rs_ARREGION;
  wire [2:0]auto_ds_to_auto_rs_ARSIZE;
  wire auto_ds_to_auto_rs_ARVALID;
  wire [31:0]auto_ds_to_auto_rs_AWADDR;
  wire [1:0]auto_ds_to_auto_rs_AWBURST;
  wire [3:0]auto_ds_to_auto_rs_AWCACHE;
  wire [7:0]auto_ds_to_auto_rs_AWLEN;
  wire [0:0]auto_ds_to_auto_rs_AWLOCK;
  wire [2:0]auto_ds_to_auto_rs_AWPROT;
  wire [3:0]auto_ds_to_auto_rs_AWQOS;
  wire auto_ds_to_auto_rs_AWREADY;
  wire [3:0]auto_ds_to_auto_rs_AWREGION;
  wire [2:0]auto_ds_to_auto_rs_AWSIZE;
  wire auto_ds_to_auto_rs_AWVALID;
  wire auto_ds_to_auto_rs_BREADY;
  wire [1:0]auto_ds_to_auto_rs_BRESP;
  wire auto_ds_to_auto_rs_BVALID;
  wire [31:0]auto_ds_to_auto_rs_RDATA;
  wire auto_ds_to_auto_rs_RLAST;
  wire auto_ds_to_auto_rs_RREADY;
  wire [1:0]auto_ds_to_auto_rs_RRESP;
  wire auto_ds_to_auto_rs_RVALID;
  wire [31:0]auto_ds_to_auto_rs_WDATA;
  wire auto_ds_to_auto_rs_WLAST;
  wire auto_ds_to_auto_rs_WREADY;
  wire [3:0]auto_ds_to_auto_rs_WSTRB;
  wire auto_ds_to_auto_rs_WVALID;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]auto_rs_to_auto_pc_ARADDR;
  wire [1:0]auto_rs_to_auto_pc_ARBURST;
  wire [3:0]auto_rs_to_auto_pc_ARCACHE;
  wire [7:0]auto_rs_to_auto_pc_ARLEN;
  wire [0:0]auto_rs_to_auto_pc_ARLOCK;
  wire [2:0]auto_rs_to_auto_pc_ARPROT;
  wire [3:0]auto_rs_to_auto_pc_ARQOS;
  wire auto_rs_to_auto_pc_ARREADY;
  wire [3:0]auto_rs_to_auto_pc_ARREGION;
  wire [2:0]auto_rs_to_auto_pc_ARSIZE;
  wire auto_rs_to_auto_pc_ARVALID;
  wire [31:0]auto_rs_to_auto_pc_AWADDR;
  wire [1:0]auto_rs_to_auto_pc_AWBURST;
  wire [3:0]auto_rs_to_auto_pc_AWCACHE;
  wire [7:0]auto_rs_to_auto_pc_AWLEN;
  wire [0:0]auto_rs_to_auto_pc_AWLOCK;
  wire [2:0]auto_rs_to_auto_pc_AWPROT;
  wire [3:0]auto_rs_to_auto_pc_AWQOS;
  wire auto_rs_to_auto_pc_AWREADY;
  wire [3:0]auto_rs_to_auto_pc_AWREGION;
  wire [2:0]auto_rs_to_auto_pc_AWSIZE;
  wire auto_rs_to_auto_pc_AWVALID;
  wire auto_rs_to_auto_pc_BREADY;
  wire [1:0]auto_rs_to_auto_pc_BRESP;
  wire auto_rs_to_auto_pc_BVALID;
  wire [31:0]auto_rs_to_auto_pc_RDATA;
  wire auto_rs_to_auto_pc_RLAST;
  wire auto_rs_to_auto_pc_RREADY;
  wire [1:0]auto_rs_to_auto_pc_RRESP;
  wire auto_rs_to_auto_pc_RVALID;
  wire [31:0]auto_rs_to_auto_pc_WDATA;
  wire auto_rs_to_auto_pc_WLAST;
  wire auto_rs_to_auto_pc_WREADY;
  wire [3:0]auto_rs_to_auto_pc_WSTRB;
  wire auto_rs_to_auto_pc_WVALID;
  wire [31:0]auto_rs_w_to_auto_ds_ARADDR;
  wire [1:0]auto_rs_w_to_auto_ds_ARBURST;
  wire [3:0]auto_rs_w_to_auto_ds_ARCACHE;
  wire [2:0]auto_rs_w_to_auto_ds_ARID;
  wire [7:0]auto_rs_w_to_auto_ds_ARLEN;
  wire [0:0]auto_rs_w_to_auto_ds_ARLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_ARPROT;
  wire [3:0]auto_rs_w_to_auto_ds_ARQOS;
  wire auto_rs_w_to_auto_ds_ARREADY;
  wire [3:0]auto_rs_w_to_auto_ds_ARREGION;
  wire [2:0]auto_rs_w_to_auto_ds_ARSIZE;
  wire auto_rs_w_to_auto_ds_ARVALID;
  wire [31:0]auto_rs_w_to_auto_ds_AWADDR;
  wire [1:0]auto_rs_w_to_auto_ds_AWBURST;
  wire [3:0]auto_rs_w_to_auto_ds_AWCACHE;
  wire [2:0]auto_rs_w_to_auto_ds_AWID;
  wire [7:0]auto_rs_w_to_auto_ds_AWLEN;
  wire [0:0]auto_rs_w_to_auto_ds_AWLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_AWPROT;
  wire [3:0]auto_rs_w_to_auto_ds_AWQOS;
  wire auto_rs_w_to_auto_ds_AWREADY;
  wire [3:0]auto_rs_w_to_auto_ds_AWREGION;
  wire [2:0]auto_rs_w_to_auto_ds_AWSIZE;
  wire auto_rs_w_to_auto_ds_AWVALID;
  wire [2:0]auto_rs_w_to_auto_ds_BID;
  wire auto_rs_w_to_auto_ds_BREADY;
  wire [1:0]auto_rs_w_to_auto_ds_BRESP;
  wire auto_rs_w_to_auto_ds_BVALID;
  wire [255:0]auto_rs_w_to_auto_ds_RDATA;
  wire [2:0]auto_rs_w_to_auto_ds_RID;
  wire auto_rs_w_to_auto_ds_RLAST;
  wire auto_rs_w_to_auto_ds_RREADY;
  wire [1:0]auto_rs_w_to_auto_ds_RRESP;
  wire auto_rs_w_to_auto_ds_RVALID;
  wire [255:0]auto_rs_w_to_auto_ds_WDATA;
  wire auto_rs_w_to_auto_ds_WLAST;
  wire auto_rs_w_to_auto_ds_WREADY;
  wire [31:0]auto_rs_w_to_auto_ds_WSTRB;
  wire auto_rs_w_to_auto_ds_WVALID;
  wire [31:0]m00_couplers_to_auto_rs_w_ARADDR;
  wire [1:0]m00_couplers_to_auto_rs_w_ARBURST;
  wire [3:0]m00_couplers_to_auto_rs_w_ARCACHE;
  wire [2:0]m00_couplers_to_auto_rs_w_ARID;
  wire [7:0]m00_couplers_to_auto_rs_w_ARLEN;
  wire [0:0]m00_couplers_to_auto_rs_w_ARLOCK;
  wire [2:0]m00_couplers_to_auto_rs_w_ARPROT;
  wire [3:0]m00_couplers_to_auto_rs_w_ARQOS;
  wire m00_couplers_to_auto_rs_w_ARREADY;
  wire [3:0]m00_couplers_to_auto_rs_w_ARREGION;
  wire [2:0]m00_couplers_to_auto_rs_w_ARSIZE;
  wire m00_couplers_to_auto_rs_w_ARVALID;
  wire [31:0]m00_couplers_to_auto_rs_w_AWADDR;
  wire [1:0]m00_couplers_to_auto_rs_w_AWBURST;
  wire [3:0]m00_couplers_to_auto_rs_w_AWCACHE;
  wire [2:0]m00_couplers_to_auto_rs_w_AWID;
  wire [7:0]m00_couplers_to_auto_rs_w_AWLEN;
  wire [0:0]m00_couplers_to_auto_rs_w_AWLOCK;
  wire [2:0]m00_couplers_to_auto_rs_w_AWPROT;
  wire [3:0]m00_couplers_to_auto_rs_w_AWQOS;
  wire m00_couplers_to_auto_rs_w_AWREADY;
  wire [3:0]m00_couplers_to_auto_rs_w_AWREGION;
  wire [2:0]m00_couplers_to_auto_rs_w_AWSIZE;
  wire m00_couplers_to_auto_rs_w_AWVALID;
  wire [2:0]m00_couplers_to_auto_rs_w_BID;
  wire m00_couplers_to_auto_rs_w_BREADY;
  wire [1:0]m00_couplers_to_auto_rs_w_BRESP;
  wire m00_couplers_to_auto_rs_w_BVALID;
  wire [255:0]m00_couplers_to_auto_rs_w_RDATA;
  wire [2:0]m00_couplers_to_auto_rs_w_RID;
  wire m00_couplers_to_auto_rs_w_RLAST;
  wire m00_couplers_to_auto_rs_w_RREADY;
  wire [1:0]m00_couplers_to_auto_rs_w_RRESP;
  wire [31:0]m00_couplers_to_auto_rs_w_RUSER;
  wire m00_couplers_to_auto_rs_w_RVALID;
  wire [255:0]m00_couplers_to_auto_rs_w_WDATA;
  wire m00_couplers_to_auto_rs_w_WLAST;
  wire m00_couplers_to_auto_rs_w_WREADY;
  wire [31:0]m00_couplers_to_auto_rs_w_WSTRB;
  wire [31:0]m00_couplers_to_auto_rs_w_WUSER;
  wire m00_couplers_to_auto_rs_w_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_rs_w_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_rs_w_AWREADY;
  assign S_AXI_bid[2:0] = m00_couplers_to_auto_rs_w_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_rs_w_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_rs_w_BVALID;
  assign S_AXI_rdata[255:0] = m00_couplers_to_auto_rs_w_RDATA;
  assign S_AXI_rid[2:0] = m00_couplers_to_auto_rs_w_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_rs_w_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_rs_w_RRESP;
  assign S_AXI_ruser[31:0] = m00_couplers_to_auto_rs_w_RUSER;
  assign S_AXI_rvalid = m00_couplers_to_auto_rs_w_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_rs_w_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_rs_w_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_rs_w_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_rs_w_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_rs_w_ARID = S_AXI_arid[2:0];
  assign m00_couplers_to_auto_rs_w_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_rs_w_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_rs_w_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_rs_w_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_rs_w_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_rs_w_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_rs_w_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_rs_w_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_rs_w_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_rs_w_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_rs_w_AWID = S_AXI_awid[2:0];
  assign m00_couplers_to_auto_rs_w_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_rs_w_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_rs_w_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_rs_w_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_rs_w_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_rs_w_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_rs_w_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_rs_w_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_rs_w_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_rs_w_WDATA = S_AXI_wdata[255:0];
  assign m00_couplers_to_auto_rs_w_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_rs_w_WSTRB = S_AXI_wstrb[31:0];
  assign m00_couplers_to_auto_rs_w_WUSER = S_AXI_wuser[31:0];
  assign m00_couplers_to_auto_rs_w_WVALID = S_AXI_wvalid;
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_rs_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_rs_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_rs_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_rs_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_rs_ARQOS),
        .m_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_rs_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_rs_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_rs_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_rs_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_rs_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_rs_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_rs_AWQOS),
        .m_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_rs_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_rs_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .m_axi_bready(auto_ds_to_auto_rs_BREADY),
        .m_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .m_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .m_axi_rlast(auto_ds_to_auto_rs_RLAST),
        .m_axi_rready(auto_ds_to_auto_rs_RREADY),
        .m_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .m_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .m_axi_wlast(auto_ds_to_auto_rs_WLAST),
        .m_axi_wready(auto_ds_to_auto_rs_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_rs_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .s_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .s_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .s_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .s_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .s_axi_bid(auto_rs_w_to_auto_ds_BID),
        .s_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .s_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .s_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .s_axi_rid(auto_rs_w_to_auto_ds_RID),
        .s_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .s_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .s_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .s_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .s_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .s_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_rs_w_to_auto_ds_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_rs_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_rs_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_rs_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_rs_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_rs_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_rs_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_rs_to_auto_pc_ARQOS),
        .s_axi_arready(auto_rs_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_rs_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_rs_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_rs_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_rs_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_rs_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_rs_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_rs_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_rs_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_rs_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_rs_to_auto_pc_AWQOS),
        .s_axi_awready(auto_rs_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_rs_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_rs_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_rs_to_auto_pc_AWVALID),
        .s_axi_bready(auto_rs_to_auto_pc_BREADY),
        .s_axi_bresp(auto_rs_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_rs_to_auto_pc_BVALID),
        .s_axi_rdata(auto_rs_to_auto_pc_RDATA),
        .s_axi_rlast(auto_rs_to_auto_pc_RLAST),
        .s_axi_rready(auto_rs_to_auto_pc_RREADY),
        .s_axi_rresp(auto_rs_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_rs_to_auto_pc_RVALID),
        .s_axi_wdata(auto_rs_to_auto_pc_WDATA),
        .s_axi_wlast(auto_rs_to_auto_pc_WLAST),
        .s_axi_wready(auto_rs_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_rs_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_rs_to_auto_pc_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_rs_0 auto_rs
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_rs_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_rs_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_rs_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_rs_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_rs_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_rs_to_auto_pc_ARQOS),
        .m_axi_arready(auto_rs_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_rs_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_rs_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_rs_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_rs_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_rs_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_rs_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_rs_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_rs_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_rs_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_rs_to_auto_pc_AWQOS),
        .m_axi_awready(auto_rs_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_rs_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_rs_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_rs_to_auto_pc_AWVALID),
        .m_axi_bready(auto_rs_to_auto_pc_BREADY),
        .m_axi_bresp(auto_rs_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_rs_to_auto_pc_BVALID),
        .m_axi_rdata(auto_rs_to_auto_pc_RDATA),
        .m_axi_rlast(auto_rs_to_auto_pc_RLAST),
        .m_axi_rready(auto_rs_to_auto_pc_RREADY),
        .m_axi_rresp(auto_rs_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_rs_to_auto_pc_RVALID),
        .m_axi_wdata(auto_rs_to_auto_pc_WDATA),
        .m_axi_wlast(auto_rs_to_auto_pc_WLAST),
        .m_axi_wready(auto_rs_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_rs_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_rs_to_auto_pc_WVALID),
        .s_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_rs_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_rs_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_rs_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_rs_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_rs_ARQOS),
        .s_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_rs_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_rs_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_rs_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_rs_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_rs_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_rs_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_rs_AWQOS),
        .s_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_rs_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_rs_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .s_axi_bready(auto_ds_to_auto_rs_BREADY),
        .s_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .s_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .s_axi_rlast(auto_ds_to_auto_rs_RLAST),
        .s_axi_rready(auto_ds_to_auto_rs_RREADY),
        .s_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .s_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .s_axi_wlast(auto_ds_to_auto_rs_WLAST),
        .s_axi_wready(auto_ds_to_auto_rs_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_rs_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_rs_w_0 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .m_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .m_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .m_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .m_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .m_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .m_axi_bid(auto_rs_w_to_auto_ds_BID),
        .m_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .m_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .m_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .m_axi_rid(auto_rs_w_to_auto_ds_RID),
        .m_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .m_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .m_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .m_axi_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .m_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .m_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .m_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_auto_ds_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_rs_w_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_rs_w_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_rs_w_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_rs_w_ARID),
        .s_axi_arlen(m00_couplers_to_auto_rs_w_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_rs_w_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_rs_w_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_rs_w_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_rs_w_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_rs_w_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_rs_w_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_rs_w_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_rs_w_AWID),
        .s_axi_awlen(m00_couplers_to_auto_rs_w_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_rs_w_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_rs_w_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_rs_w_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_rs_w_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_rs_w_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_rs_w_BID),
        .s_axi_bready(m00_couplers_to_auto_rs_w_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_rs_w_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_rs_w_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_rs_w_RDATA),
        .s_axi_rid(m00_couplers_to_auto_rs_w_RID),
        .s_axi_rlast(m00_couplers_to_auto_rs_w_RLAST),
        .s_axi_rready(m00_couplers_to_auto_rs_w_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_rs_w_RRESP),
        .s_axi_ruser(m00_couplers_to_auto_rs_w_RUSER),
        .s_axi_rvalid(m00_couplers_to_auto_rs_w_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_rs_w_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_rs_w_WLAST),
        .s_axi_wready(m00_couplers_to_auto_rs_w_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_rs_w_WSTRB),
        .s_axi_wuser(m00_couplers_to_auto_rs_w_WUSER),
        .s_axi_wvalid(m00_couplers_to_auto_rs_w_WVALID));
endmodule

module m01_couplers_imp_1VWW2R4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [14:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [14:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [31:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [31:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [14:0]auto_ds_to_auto_rs_ARADDR;
  wire [1:0]auto_ds_to_auto_rs_ARBURST;
  wire [3:0]auto_ds_to_auto_rs_ARCACHE;
  wire [7:0]auto_ds_to_auto_rs_ARLEN;
  wire [0:0]auto_ds_to_auto_rs_ARLOCK;
  wire [2:0]auto_ds_to_auto_rs_ARPROT;
  wire [3:0]auto_ds_to_auto_rs_ARQOS;
  wire auto_ds_to_auto_rs_ARREADY;
  wire [3:0]auto_ds_to_auto_rs_ARREGION;
  wire [2:0]auto_ds_to_auto_rs_ARSIZE;
  wire auto_ds_to_auto_rs_ARVALID;
  wire [14:0]auto_ds_to_auto_rs_AWADDR;
  wire [1:0]auto_ds_to_auto_rs_AWBURST;
  wire [3:0]auto_ds_to_auto_rs_AWCACHE;
  wire [7:0]auto_ds_to_auto_rs_AWLEN;
  wire [0:0]auto_ds_to_auto_rs_AWLOCK;
  wire [2:0]auto_ds_to_auto_rs_AWPROT;
  wire [3:0]auto_ds_to_auto_rs_AWQOS;
  wire auto_ds_to_auto_rs_AWREADY;
  wire [3:0]auto_ds_to_auto_rs_AWREGION;
  wire [2:0]auto_ds_to_auto_rs_AWSIZE;
  wire auto_ds_to_auto_rs_AWVALID;
  wire auto_ds_to_auto_rs_BREADY;
  wire [1:0]auto_ds_to_auto_rs_BRESP;
  wire auto_ds_to_auto_rs_BVALID;
  wire [31:0]auto_ds_to_auto_rs_RDATA;
  wire auto_ds_to_auto_rs_RLAST;
  wire auto_ds_to_auto_rs_RREADY;
  wire [1:0]auto_ds_to_auto_rs_RRESP;
  wire auto_ds_to_auto_rs_RVALID;
  wire [31:0]auto_ds_to_auto_rs_WDATA;
  wire auto_ds_to_auto_rs_WLAST;
  wire auto_ds_to_auto_rs_WREADY;
  wire [3:0]auto_ds_to_auto_rs_WSTRB;
  wire auto_ds_to_auto_rs_WVALID;
  wire [14:0]auto_rs_to_m01_couplers_ARADDR;
  wire [1:0]auto_rs_to_m01_couplers_ARBURST;
  wire [3:0]auto_rs_to_m01_couplers_ARCACHE;
  wire [7:0]auto_rs_to_m01_couplers_ARLEN;
  wire [0:0]auto_rs_to_m01_couplers_ARLOCK;
  wire [2:0]auto_rs_to_m01_couplers_ARPROT;
  wire auto_rs_to_m01_couplers_ARREADY;
  wire [2:0]auto_rs_to_m01_couplers_ARSIZE;
  wire auto_rs_to_m01_couplers_ARVALID;
  wire [14:0]auto_rs_to_m01_couplers_AWADDR;
  wire [1:0]auto_rs_to_m01_couplers_AWBURST;
  wire [3:0]auto_rs_to_m01_couplers_AWCACHE;
  wire [7:0]auto_rs_to_m01_couplers_AWLEN;
  wire [0:0]auto_rs_to_m01_couplers_AWLOCK;
  wire [2:0]auto_rs_to_m01_couplers_AWPROT;
  wire auto_rs_to_m01_couplers_AWREADY;
  wire [2:0]auto_rs_to_m01_couplers_AWSIZE;
  wire auto_rs_to_m01_couplers_AWVALID;
  wire auto_rs_to_m01_couplers_BREADY;
  wire [1:0]auto_rs_to_m01_couplers_BRESP;
  wire auto_rs_to_m01_couplers_BVALID;
  wire [31:0]auto_rs_to_m01_couplers_RDATA;
  wire auto_rs_to_m01_couplers_RLAST;
  wire auto_rs_to_m01_couplers_RREADY;
  wire [1:0]auto_rs_to_m01_couplers_RRESP;
  wire auto_rs_to_m01_couplers_RVALID;
  wire [31:0]auto_rs_to_m01_couplers_WDATA;
  wire auto_rs_to_m01_couplers_WLAST;
  wire auto_rs_to_m01_couplers_WREADY;
  wire [3:0]auto_rs_to_m01_couplers_WSTRB;
  wire auto_rs_to_m01_couplers_WVALID;
  wire [14:0]auto_rs_w_to_auto_ds_ARADDR;
  wire [1:0]auto_rs_w_to_auto_ds_ARBURST;
  wire [3:0]auto_rs_w_to_auto_ds_ARCACHE;
  wire [2:0]auto_rs_w_to_auto_ds_ARID;
  wire [7:0]auto_rs_w_to_auto_ds_ARLEN;
  wire [0:0]auto_rs_w_to_auto_ds_ARLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_ARPROT;
  wire [3:0]auto_rs_w_to_auto_ds_ARQOS;
  wire auto_rs_w_to_auto_ds_ARREADY;
  wire [3:0]auto_rs_w_to_auto_ds_ARREGION;
  wire [2:0]auto_rs_w_to_auto_ds_ARSIZE;
  wire auto_rs_w_to_auto_ds_ARVALID;
  wire [14:0]auto_rs_w_to_auto_ds_AWADDR;
  wire [1:0]auto_rs_w_to_auto_ds_AWBURST;
  wire [3:0]auto_rs_w_to_auto_ds_AWCACHE;
  wire [2:0]auto_rs_w_to_auto_ds_AWID;
  wire [7:0]auto_rs_w_to_auto_ds_AWLEN;
  wire [0:0]auto_rs_w_to_auto_ds_AWLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_AWPROT;
  wire [3:0]auto_rs_w_to_auto_ds_AWQOS;
  wire auto_rs_w_to_auto_ds_AWREADY;
  wire [3:0]auto_rs_w_to_auto_ds_AWREGION;
  wire [2:0]auto_rs_w_to_auto_ds_AWSIZE;
  wire auto_rs_w_to_auto_ds_AWVALID;
  wire [2:0]auto_rs_w_to_auto_ds_BID;
  wire auto_rs_w_to_auto_ds_BREADY;
  wire [1:0]auto_rs_w_to_auto_ds_BRESP;
  wire auto_rs_w_to_auto_ds_BVALID;
  wire [255:0]auto_rs_w_to_auto_ds_RDATA;
  wire [2:0]auto_rs_w_to_auto_ds_RID;
  wire auto_rs_w_to_auto_ds_RLAST;
  wire auto_rs_w_to_auto_ds_RREADY;
  wire [1:0]auto_rs_w_to_auto_ds_RRESP;
  wire auto_rs_w_to_auto_ds_RVALID;
  wire [255:0]auto_rs_w_to_auto_ds_WDATA;
  wire auto_rs_w_to_auto_ds_WLAST;
  wire auto_rs_w_to_auto_ds_WREADY;
  wire [31:0]auto_rs_w_to_auto_ds_WSTRB;
  wire auto_rs_w_to_auto_ds_WVALID;
  wire [31:0]m01_couplers_to_auto_rs_w_ARADDR;
  wire [1:0]m01_couplers_to_auto_rs_w_ARBURST;
  wire [3:0]m01_couplers_to_auto_rs_w_ARCACHE;
  wire [2:0]m01_couplers_to_auto_rs_w_ARID;
  wire [7:0]m01_couplers_to_auto_rs_w_ARLEN;
  wire [0:0]m01_couplers_to_auto_rs_w_ARLOCK;
  wire [2:0]m01_couplers_to_auto_rs_w_ARPROT;
  wire [3:0]m01_couplers_to_auto_rs_w_ARQOS;
  wire m01_couplers_to_auto_rs_w_ARREADY;
  wire [3:0]m01_couplers_to_auto_rs_w_ARREGION;
  wire [2:0]m01_couplers_to_auto_rs_w_ARSIZE;
  wire m01_couplers_to_auto_rs_w_ARVALID;
  wire [31:0]m01_couplers_to_auto_rs_w_AWADDR;
  wire [1:0]m01_couplers_to_auto_rs_w_AWBURST;
  wire [3:0]m01_couplers_to_auto_rs_w_AWCACHE;
  wire [2:0]m01_couplers_to_auto_rs_w_AWID;
  wire [7:0]m01_couplers_to_auto_rs_w_AWLEN;
  wire [0:0]m01_couplers_to_auto_rs_w_AWLOCK;
  wire [2:0]m01_couplers_to_auto_rs_w_AWPROT;
  wire [3:0]m01_couplers_to_auto_rs_w_AWQOS;
  wire m01_couplers_to_auto_rs_w_AWREADY;
  wire [3:0]m01_couplers_to_auto_rs_w_AWREGION;
  wire [2:0]m01_couplers_to_auto_rs_w_AWSIZE;
  wire m01_couplers_to_auto_rs_w_AWVALID;
  wire [2:0]m01_couplers_to_auto_rs_w_BID;
  wire m01_couplers_to_auto_rs_w_BREADY;
  wire [1:0]m01_couplers_to_auto_rs_w_BRESP;
  wire m01_couplers_to_auto_rs_w_BVALID;
  wire [255:0]m01_couplers_to_auto_rs_w_RDATA;
  wire [2:0]m01_couplers_to_auto_rs_w_RID;
  wire m01_couplers_to_auto_rs_w_RLAST;
  wire m01_couplers_to_auto_rs_w_RREADY;
  wire [1:0]m01_couplers_to_auto_rs_w_RRESP;
  wire [31:0]m01_couplers_to_auto_rs_w_RUSER;
  wire m01_couplers_to_auto_rs_w_RVALID;
  wire [255:0]m01_couplers_to_auto_rs_w_WDATA;
  wire m01_couplers_to_auto_rs_w_WLAST;
  wire m01_couplers_to_auto_rs_w_WREADY;
  wire [31:0]m01_couplers_to_auto_rs_w_WSTRB;
  wire [31:0]m01_couplers_to_auto_rs_w_WUSER;
  wire m01_couplers_to_auto_rs_w_WVALID;

  assign M_AXI_araddr[14:0] = auto_rs_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_rs_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[14:0] = auto_rs_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_rs_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_rs_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_rs_to_m01_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_rs_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_rs_w_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_rs_w_AWREADY;
  assign S_AXI_bid[2:0] = m01_couplers_to_auto_rs_w_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_rs_w_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_rs_w_BVALID;
  assign S_AXI_rdata[255:0] = m01_couplers_to_auto_rs_w_RDATA;
  assign S_AXI_rid[2:0] = m01_couplers_to_auto_rs_w_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_rs_w_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_rs_w_RRESP;
  assign S_AXI_ruser[31:0] = m01_couplers_to_auto_rs_w_RUSER;
  assign S_AXI_rvalid = m01_couplers_to_auto_rs_w_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_rs_w_WREADY;
  assign auto_rs_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_rs_to_m01_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_rs_w_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_rs_w_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_rs_w_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_rs_w_ARID = S_AXI_arid[2:0];
  assign m01_couplers_to_auto_rs_w_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_rs_w_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_rs_w_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_rs_w_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_rs_w_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_rs_w_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_rs_w_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_rs_w_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_rs_w_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_rs_w_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_rs_w_AWID = S_AXI_awid[2:0];
  assign m01_couplers_to_auto_rs_w_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_rs_w_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_rs_w_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_rs_w_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_rs_w_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_rs_w_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_rs_w_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_rs_w_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_rs_w_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_rs_w_WDATA = S_AXI_wdata[255:0];
  assign m01_couplers_to_auto_rs_w_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_rs_w_WSTRB = S_AXI_wstrb[31:0];
  assign m01_couplers_to_auto_rs_w_WUSER = S_AXI_wuser[31:0];
  assign m01_couplers_to_auto_rs_w_WVALID = S_AXI_wvalid;
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_rs_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_rs_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_rs_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_rs_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_rs_ARQOS),
        .m_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_rs_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_rs_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_rs_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_rs_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_rs_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_rs_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_rs_AWQOS),
        .m_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_rs_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_rs_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .m_axi_bready(auto_ds_to_auto_rs_BREADY),
        .m_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .m_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .m_axi_rlast(auto_ds_to_auto_rs_RLAST),
        .m_axi_rready(auto_ds_to_auto_rs_RREADY),
        .m_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .m_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .m_axi_wlast(auto_ds_to_auto_rs_WLAST),
        .m_axi_wready(auto_ds_to_auto_rs_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_rs_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .s_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .s_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .s_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .s_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .s_axi_bid(auto_rs_w_to_auto_ds_BID),
        .s_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .s_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .s_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .s_axi_rid(auto_rs_w_to_auto_ds_RID),
        .s_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .s_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .s_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .s_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .s_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .s_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_rs_w_to_auto_ds_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_rs_1 auto_rs
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_to_m01_couplers_ARADDR),
        .m_axi_arburst(auto_rs_to_m01_couplers_ARBURST),
        .m_axi_arcache(auto_rs_to_m01_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_to_m01_couplers_ARLEN),
        .m_axi_arlock(auto_rs_to_m01_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_rs_to_m01_couplers_ARREADY),
        .m_axi_arsize(auto_rs_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_to_m01_couplers_AWADDR),
        .m_axi_awburst(auto_rs_to_m01_couplers_AWBURST),
        .m_axi_awcache(auto_rs_to_m01_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_to_m01_couplers_AWLEN),
        .m_axi_awlock(auto_rs_to_m01_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_rs_to_m01_couplers_AWREADY),
        .m_axi_awsize(auto_rs_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_rs_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_rs_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_rs_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_rs_to_m01_couplers_RDATA),
        .m_axi_rlast(auto_rs_to_m01_couplers_RLAST),
        .m_axi_rready(auto_rs_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_rs_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_rs_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_rs_to_m01_couplers_WDATA),
        .m_axi_wlast(auto_rs_to_m01_couplers_WLAST),
        .m_axi_wready(auto_rs_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_rs_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_rs_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_rs_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_rs_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_rs_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_rs_ARQOS),
        .s_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_rs_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_rs_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_rs_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_rs_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_rs_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_rs_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_rs_AWQOS),
        .s_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_rs_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_rs_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .s_axi_bready(auto_ds_to_auto_rs_BREADY),
        .s_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .s_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .s_axi_rlast(auto_ds_to_auto_rs_RLAST),
        .s_axi_rready(auto_ds_to_auto_rs_RREADY),
        .s_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .s_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .s_axi_wlast(auto_ds_to_auto_rs_WLAST),
        .s_axi_wready(auto_ds_to_auto_rs_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_rs_WVALID));
  PCIe_AXI_BRIDGE_BRAM_HWICAP_bd_auto_rs_w_1 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .m_axi_arid(auto_rs_w_to_auto_ds_ARID),
        .m_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .m_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_rs_w_to_auto_ds_AWID),
        .m_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .m_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .m_axi_bid(auto_rs_w_to_auto_ds_BID),
        .m_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .m_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .m_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .m_axi_rid(auto_rs_w_to_auto_ds_RID),
        .m_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .m_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .m_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .m_axi_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .m_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .m_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .m_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_auto_ds_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_rs_w_ARADDR[14:0]),
        .s_axi_arburst(m01_couplers_to_auto_rs_w_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_rs_w_ARCACHE),
        .s_axi_arid(m01_couplers_to_auto_rs_w_ARID),
        .s_axi_arlen(m01_couplers_to_auto_rs_w_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_rs_w_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_rs_w_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_rs_w_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_rs_w_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_rs_w_AWADDR[14:0]),
        .s_axi_awburst(m01_couplers_to_auto_rs_w_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_rs_w_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_rs_w_AWID),
        .s_axi_awlen(m01_couplers_to_auto_rs_w_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_rs_w_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_rs_w_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_rs_w_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_rs_w_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_rs_w_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_rs_w_BID),
        .s_axi_bready(m01_couplers_to_auto_rs_w_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_rs_w_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_rs_w_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_rs_w_RDATA),
        .s_axi_rid(m01_couplers_to_auto_rs_w_RID),
        .s_axi_rlast(m01_couplers_to_auto_rs_w_RLAST),
        .s_axi_rready(m01_couplers_to_auto_rs_w_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_rs_w_RRESP),
        .s_axi_ruser(m01_couplers_to_auto_rs_w_RUSER),
        .s_axi_rvalid(m01_couplers_to_auto_rs_w_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_rs_w_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_rs_w_WLAST),
        .s_axi_wready(m01_couplers_to_auto_rs_w_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_rs_w_WSTRB),
        .s_axi_wuser(m01_couplers_to_auto_rs_w_WUSER),
        .s_axi_wvalid(m01_couplers_to_auto_rs_w_WVALID));
endmodule

module s00_couplers_imp_DP31QG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [31:0]M_AXI_ruser;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [31:0]M_AXI_wuser;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [31:0]S_AXI_ruser;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [31:0]S_AXI_wuser;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [2:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [2:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [2:0]s00_couplers_to_s00_couplers_BID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [255:0]s00_couplers_to_s00_couplers_RDATA;
  wire [2:0]s00_couplers_to_s00_couplers_RID;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [31:0]s00_couplers_to_s00_couplers_RUSER;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [255:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WLAST;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [31:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [31:0]s00_couplers_to_s00_couplers_WUSER;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[2:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[2:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast[0] = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wuser[31:0] = s00_couplers_to_s00_couplers_WUSER;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[2:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[255:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[2:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_ruser[31:0] = s00_couplers_to_s00_couplers_RUSER;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[2:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[2:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[2:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[2:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RUSER = M_AXI_ruser[31:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[255:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign s00_couplers_to_s00_couplers_WUSER = S_AXI_wuser[31:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
