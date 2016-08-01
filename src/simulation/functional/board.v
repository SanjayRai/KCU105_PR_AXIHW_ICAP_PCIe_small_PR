//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : AXI-MM to PCI Express
// File       : board.v
// Version    : $IpVersion 
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
`timescale 1ns/1ns

`include "board_common.vh"

`define SIMULATION

module board;

  parameter REF_CLK_FREQ        = 0;
  localparam REF_CLK_HALF_CYCLE    = (REF_CLK_FREQ == 0) ? 5000 :
                                     (REF_CLK_FREQ == 1) ? 4000 :
                                     (REF_CLK_FREQ == 2) ? 2000 : 0;

  localparam   [2:0] PF0_DEV_CAP_MAX_PAYLOAD_SIZE = 3'b010;

  localparam   [3:0]  LINK_WIDTH = 4'h8;
  localparam   [2:0]  LINK_SPEED = 3'h4;
  localparam   [15:0] EP_DEV_ID  = 16'h8038;

  localparam integer USER_CLK2_FREQ = 3 + 1;
  // USER_CLK2_FREQ = AXI Interface Frequency
  //   0: Disable User Clock
  //   1: 31.25 MHz
  //   2: 62.50 MHz  (default)
  //   3: 125.00 MHz
  //   4: 250.00 MHz
  //   5: 500.00 MHz
  //
localparam EXT_PIPE_SIM = "FALSE";

  // System-level clock and reset
  wire               sys_clk;
  reg                sys_rst_n;
  // PCI-Express Serial Interconnect
  wire  [(LINK_WIDTH-1):0]  ep_pci_exp_txn;
  wire  [(LINK_WIDTH-1):0]  ep_pci_exp_txp;
  wire  [(LINK_WIDTH-1):0]  rp_pci_exp_txn;
  wire  [(LINK_WIDTH-1):0]  rp_pci_exp_txp; 
  

  wire led_0;
  wire led_1;
  wire led_2;
  wire led_3;
  //------------------------------------------------------------------------------//
  // Generate system clock
  //------------------------------------------------------------------------------// 
  sys_clk_gen #(
    .halfcycle (REF_CLK_HALF_CYCLE),
    .offset    (0)
  ) CLK_GEN (
    .sys_clk (sys_clk)
  );

 //------------------------------------------------------------------------------//
  // Generate system-level reset
  //------------------------------------------------------------------------------//
  initial begin
    $display("[%t] : System Reset Is Asserted...", $realtime);
    sys_rst_n = 1'b0;
    repeat (500) @(posedge sys_clk);
    $display("[%t] : System Reset Is De-asserted...", $realtime);
    sys_rst_n = 1'b1;
  end
  
  //------------------------------------------------------------------------------//
  // EndPoint CSL Instance
  //------------------------------------------------------------------------------//
      xilinx_axi_pcie3_ep
       AXI_PCIE3_EP (
        // PCI-Express Interface
        .sys_rst_n          (sys_rst_n),
        .sys_clk_p          (sys_clk),
        .sys_clk_n          (~sys_clk),    
        // Misc signals
        .led_0(led_0),
        .led_1(led_1),
        .led_2(led_2),
        .led_3(led_3),
        .pci_exp_txp        (ep_pci_exp_txp),
        .pci_exp_txn        (ep_pci_exp_txn),
        .pci_exp_rxp        (rp_pci_exp_txp),
        .pci_exp_rxn        (rp_pci_exp_txn));
        
 
  //------------------------------------------------------------------------------//
  // PCI-Express Root Port FPGA Instantiation
  //(comment out the Simulation Root Port Model to interface with BFM)
  //------------------------------------------------------------------------------//
  
  xilinx_pcie_3_0_7vx_rp
  #(
     .PL_LINK_CAP_MAX_LINK_WIDTH(LINK_WIDTH),
     .PL_LINK_CAP_MAX_LINK_SPEED(LINK_SPEED),
     .EP_DEV_ID                 (EP_DEV_ID),
     .USER_CLK2_FREQ            (USER_CLK2_FREQ),
     .PF0_DEV_CAP_MAX_PAYLOAD_SIZE(PF0_DEV_CAP_MAX_PAYLOAD_SIZE),
     .PIPE_SIM_MODE             (EXT_PIPE_SIM),
     .EXT_PIPE_SIM              (EXT_PIPE_SIM),
     .REF_CLK_FREQ              (REF_CLK_FREQ)
  ) RP (

    // SYS Inteface
    .sys_clk_n(~sys_clk),
    .sys_clk_p(sys_clk),
    .sys_rst_n                  ( sys_rst_n ),
    // PCI-Express Interface
    .pci_exp_txn(rp_pci_exp_txn),
    .pci_exp_txp(rp_pci_exp_txp),
    .pci_exp_rxn(ep_pci_exp_txn),
    .pci_exp_rxp(ep_pci_exp_txp));
      
 
endmodule // BOARD
