-------------------------------------------------------------------------------
-- axi_hwicap.vhd - entity/architecture pair

-------------------------------------------------------------------------------
-- (c) Copyright 2010 - 2011 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:    axi_hwicap.vhd
-- Version:     v2.00a
-- Description: Provides the interface between the processor & ICAP
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library axi_lite_ipif_v3_0_4;
library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;
use axi_lite_ipif_v3_0_4.ipif_pkg.all;
use axi_lite_ipif_v3_0_4.axi_lite_ipif;

library unisim;
use unisim.all;


library interrupt_control_v3_1_4;
use interrupt_control_v3_1_4.interrupt_control;

library axi_hwicap_v3_0_13;
use axi_hwicap_v3_0_13.hwicap;

-------------------------------------------------------------------------------
-- Definition of Generics:
-- C_BASEADDR               -- Base address of the core
-- C_HIGHADDR               -- Permits alias of address space
-- C_S_AXI_DATA_WIDTH       -- AXI data bus width
-- C_S_AXI_ADDR_WIDTH       -- AXI address bus width
-- C_WRITE_FIFO_DEPTH       -- Write FIFO depth
-- C_READ_FIFO_DEPTH        -- Read FIFO depth
-- C_ICAP_DWIDTH            -- ICAP/ICAPE2 Data Width
-- C_SIMULATION             -- Parameter is TRUE for functional simulation
-- C_BRAM_SRL_FIFO_TYPE     -- type of the FIFO either as distributer or BRAM
-- C_FAMILY                 -- target FPGA family
-------------------------------------------------------------------------------
-- Definition of Ports:
--  ICAP_Clk                 -- ICAP clock
-- PLB Interface
-- S_AXI_ACLK                -- AXI Clock
-- S_AXI_ARESETN             -- AXI Reset
-- S_AXI_AWADDR              -- AXI Write address
-- S_AXI_AWVALID             -- Write address valid
-- S_AXI_AWREADY             -- Write address ready
-- S_AXI_WDATA               -- Write data
-- S_AXI_WSTRB               -- Write strobes
-- S_AXI_WVALID              -- Write valid
-- S_AXI_WREADY              -- Write ready
-- S_AXI_BRESP               -- Write response
-- S_AXI_BVALID              -- Write response valid
-- S_AXI_BREADY              -- Response ready
-- S_AXI_ARADDR              -- Read address
-- S_AXI_ARVALID             -- Read address valid
-- S_AXI_ARREADY             -- Read address ready
-- S_AXI_RDATA               -- Read data
-- S_AXI_RRESP               -- Read response
-- S_AXI_RVALID              -- Read valid
-- S_AXI_RREADY              -- Read ready
-----------------------------------------------------------------------------
-- Entity section
-----------------------------------------------------------------------------
entity axi_hwicap is
  -- Generics to be set by user
  generic (
--    C_BASEADDR          : std_logic_vector(31 downto 0) := X"FFFF_FFFF";
--    C_HIGHADDR          : std_logic_vector(31 downto 0) := X"0000_0000";
    C_ENABLE_ASYNC      : integer range 0 to 1 := 0;
    C_S_AXI_DATA_WIDTH  : integer  range 32 to 32   := 32;
    C_INCLUDE_STARTUP   : integer range 0 to 1 := 0;
    C_S_AXI_ADDR_WIDTH  : integer                   := 9;
    C_WRITE_FIFO_DEPTH  : integer range 64 to 1024:= 256;
    C_READ_FIFO_DEPTH   : integer range 32 to 256:= 256;
    C_ICAP_WIDTH_S      : string := "X8";
    C_DEVICE_ID         : std_logic_vector := X"04224093";
    C_MODE              : integer := 0;
    C_SHARED_STARTUP    : integer range 0 to 1 := 0;
    C_OPERATION         : integer := 0;
    C_NOREAD            : integer := 0;
    C_SIMULATION        : integer range 0 to 2 := 2;
    C_BRAM_SRL_FIFO_TYPE: integer range 0 to 1 := 1;  -- default BRAM
    C_ICAP_EXTERNAL     : integer range 0 to 1 := 0;  
    C_FAMILY            : string  := "virtex7");
  port
    (
      icap_clk          : in  std_logic;
      eos_in            : in  std_logic;
      s_axi_aclk        : in  std_logic;
      s_axi_aresetn     : in  std_logic;
      s_axi_awaddr      : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_awvalid     : in  std_logic;
      s_axi_awready     : out std_logic;
      s_axi_wdata       : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_wstrb       : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
      s_axi_wvalid      : in  std_logic;
      s_axi_wready      : out std_logic;
      s_axi_bresp       : out std_logic_vector(1 downto 0);
      s_axi_bvalid      : out std_logic;
      s_axi_bready      : in  std_logic;
      s_axi_araddr      : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
      s_axi_arvalid     : in  std_logic;
      s_axi_arready     : out std_logic;
      s_axi_rdata       : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
      s_axi_rresp       : out std_logic_vector(1 downto 0);
      s_axi_rvalid      : out std_logic;
      s_axi_rready      : in  std_logic;
      ip2intc_irpt      : out std_logic;
      cfgclk            : out std_logic;
      cfgmclk           : out std_logic;
      preq              : out std_logic;
      clk               : in std_logic;
      gsr               : in std_logic;
      gts               : in std_logic;
      keyclearb         : in std_logic;
      pack              : in std_logic;
      usrcclko          : in std_logic;
      usrcclkts         : in std_logic;
      usrdoneo          : in std_logic;
      usrdonets         : in std_logic;
      icap_i            : in  std_logic_vector(31 downto 0); 
      icap_o            : out std_logic_vector(31 downto 0):= (others => '0'); 
      icap_csib         : out std_logic;
      icap_rdwrb        : out std_logic;
      cap_req          : out std_logic;  -- Request the ICAP port                      
      cap_gnt          : in  std_logic;  -- ICAP granted                               
      cap_rel          : in  std_logic;   -- Release the ICAP at the first opportunity  
      icap_avail        : in  std_logic 
      );
 end axi_hwicap;
-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture implementation of axi_hwicap is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


--  constant C_CORE_GENERATION_INFO : string := C_INSTANCE & ",axi_hwicap,{"
--      & "c_family="               & C_FAMILY
--      & ",c_instance="            & C_INSTANCE
--      & ",c_icap_width_s="        & C_ICAP_WIDTH_S
--      & ",c_write_fifo_depth="    & integer'image(C_WRITE_FIFO_DEPTH)
--      & ",c_read_fifo_depth="     & integer'image(C_READ_FIFO_DEPTH)
--      & ",c_saxi_dwidth="         & integer'image(C_S_AXI_DATA_WIDTH)
--      & ",c_simulation="          & integer'image(C_SIMULATION)
--      & ",c_bram_srl_fifo_type="  & integer'image(C_BRAM_SRL_FIFO_TYPE)
--      & ",c_mode="                & integer'image(C_MODE)
--      & ",c_noread="              & integer'image(C_NOREAD)
--      & ",c_operation="           & integer'image(C_OPERATION)
--      & ",c_include_startup="     & integer'image(C_INCLUDE_STARTUP)
--      & "}";
--  attribute CORE_GENERATION_INFO : string;
--  attribute CORE_GENERATION_INFO of implementation : architecture is C_CORE_GENERATION_INFO;


  --IPIF Generics that must remain at these values for the DAC
  constant C_BASEADDR : std_logic_vector := X"00000000";
  constant  C_DEVICE_ID_B : bit_vector := to_bitvector (C_DEVICE_ID); 
  constant  ZEROES             : std_logic_vector := X"00000000";
  constant  NUM_INTR           : integer     := 4;
  constant  C_INTR_TYPE        : integer     := 3;
--  constant  INTR_HI_ADDR       : std_logic_vector := C_BASEADDR or X"0000003F";
--  constant  HWICAP_REG_B_ADR   : std_logic_vector := C_BASEADDR or X"00000100";
--  constant  HWICAP_REG_H_ADR   : std_logic_vector := C_BASEADDR or X"0000011F";
  constant  INTR_HI_ADDR       : std_logic_vector := X"0000003F";
  constant  HWICAP_REG_B_ADR   : std_logic_vector := X"00000100";
  constant  HWICAP_REG_H_ADR   : std_logic_vector := X"0000011F";
  constant  C_S_AXI_MIN_SIZE   :std_logic_vector(31 downto 0):= X"000001FF";
  constant  C_USE_WSTRB        :integer := 0;
  constant  C_DPHASE_TIMEOUT   :integer range 0 to 256   := 16;  

  -- No interrupt from PLBv46 Slave Single, but made 1 to meet the port
  -- width requirement of IPIF_Lvl_Interrupts signal.
  constant NUM_IPIF_IRPT_SRC       : integer      := 1;

  constant IP_INTR_MODE_ARRAY      : integer_array_type := 
         populate_intr_mode_array(NUM_INTR, C_INTR_TYPE);
  constant ARD_ID_ARRAY  : INTEGER_ARRAY_TYPE
                              := ( IPIF_INTR, --Interrupt module
                                   USER_00
                                   );
  constant ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE :=
      ( ZEROES & C_BASEADDR,
        ZEROES & INTR_HI_ADDR,
        ZEROES & HWICAP_REG_B_ADR,-- HWICAP base address
        ZEROES & HWICAP_REG_H_ADR -- HWICAP high address
        );
  constant ARD_NUM_CE_ARRAY     : INTEGER_ARRAY_TYPE:= (16,8);
  constant Number_of_CE_signals : integer := 23;

-------------------------------------------------------------------------------
-- update ICAP_DWIDTH based on FPGA families those supports ICAP             --
-------------------------------------------------------------------------------
--function gen_icap_dwidth(family : string) return integer is
  --  variable r : integer := 16;
--begin
  -- if supported(C_FAMILY, (u_ICAPE2)) = true then
    --  r := 32;
   --else
     -- r := 32;
   --end if;
   --return r;
--end gen_icap_dwidth;

--constant ICAP_DWIDTH : integer := gen_icap_dwidth(C_FAMILY);
constant ICAP_DWIDTH : integer := 32; 
-------------------------------------------------------------------------------
-- Bitwise OR of a std_logic_vector.
-------------------------------------------------------------------------------
function or_reduce(slv : std_logic_vector) return std_logic is
    variable r : std_logic := '0';
begin
    for i in slv'range loop
        r := r or slv(i);
    end loop;
    return r;
end or_reduce;

-------------------------------------------------------------------------------
-- Signal and Type Declarations
-------------------------------------------------------------------------------

--  signal bus2ip_be           : std_logic_vector(0 to (C_S_AXI_DATA_WIDTH/8) - 1);
  signal bus2ip_be           : std_logic_vector(0 to (C_S_AXI_DATA_WIDTH/8) - 1);
  signal bus2ip_rnw          : std_logic;
  signal bus2ip_cs           : std_logic_vector(0 to 1);
  signal bus2ip_rdce         : std_logic_vector(23 downto 0);
  signal bus2ip_wrce         : std_logic_vector(23 downto 0);
  signal bus2ip_rdce_int     : std_logic_vector(0 to 23);
  signal bus2ip_wrce_int     : std_logic_vector(0 to 23);
  signal bus2ip_data         : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1);
  signal bus2ip_addr         : std_logic_vector(0 to C_S_AXI_ADDR_WIDTH-1);
  signal ip2bus_data_i       : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1);
  signal ip2bus_data         : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1);
  signal ip2bus_wrack        : std_logic;
  signal ip2bus_rdack        : std_logic;
  signal bus2ip_clk          : std_logic;
  signal bus2ip_reset        : std_logic;
  signal bus2ip_resetn       : std_logic;
  signal ip2bus_intr         : std_logic_vector(0 to NUM_INTR - 1);
  signal ip2bus_error_i      : std_logic;
  signal intr2bus_data       : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1);
  signal intr2bus_wrack      : std_logic;
  signal intr2bus_rdack      : std_logic;
  signal intr2bus_error      : std_logic;
  signal ip2bus_err          : std_logic;
  signal ip2bus_wrack_i      : std_logic;
  signal ip2bus_rdack_i      : std_logic;
  signal ip2bus_addrack      : std_logic;
  signal errack_reserved     : std_logic_vector(0 to 1) := (others => '0');
  signal intr_rst            : std_logic;
  signal ipif_lvl_interrupts : std_logic_vector(0 to NUM_IPIF_IRPT_SRC-1):=
                                                               (others => '0');
  signal wr_or               : std_logic;
  signal rd_or               : std_logic;
  signal ICAP_Clk_int        : std_logic;
 
begin  -- architecture IMP

 --  C_DEVICE_ID_B <= to_bitvector (C_DEVICE_ID);

   
            
 --    assert (supported (C_FAMILY, (u_ICAPE2))) 
 --   report "ICAPE2 component is not supported by C_FAMILY Device"
 --   severity error;

--     assert (supported (C_FAMILY, (u_ICAPE3))) 
--    report "ICAPE3 component is not supported by C_FAMILY Device"
--    severity error;

-------------------------------------------------------------------------------
-- Component Instantiations
-------------------------------------------------------------------------------
---------------------------------------------------------------------------
-- INSTANTIATE AXI Lite IPIF
---------------------------------------------------------------------------
  XI4_LITE_I : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
        generic map(C_S_AXI_DATA_WIDTH    => C_S_AXI_DATA_WIDTH,
                    C_S_AXI_ADDR_WIDTH    => C_S_AXI_ADDR_WIDTH,
                    C_S_AXI_MIN_SIZE      => C_S_AXI_MIN_SIZE,
                    C_USE_WSTRB           => C_USE_WSTRB,
                    C_DPHASE_TIMEOUT      => C_DPHASE_TIMEOUT,
                    C_ARD_ADDR_RANGE_ARRAY=> ARD_ADDR_RANGE_ARRAY,
                    C_ARD_NUM_CE_ARRAY    => ARD_NUM_CE_ARRAY,
                    C_FAMILY              => C_FAMILY
                    )
        port map(
                    S_AXI_ACLK            => s_axi_aclk,
                    S_AXI_ARESETN         => s_axi_aresetn,
                    S_AXI_AWADDR          => s_axi_awaddr,
                    S_AXI_AWVALID         => s_axi_awvalid,
                    S_AXI_AWREADY         => s_axi_awready,
                    S_AXI_WDATA           => s_axi_wdata,
                    S_AXI_WSTRB           => s_axi_wstrb,
                    S_AXI_WVALID          => s_axi_wvalid,
                    S_AXI_WREADY          => s_axi_wready,
                    S_AXI_BRESP           => s_axi_bresp,
                    S_AXI_BVALID          => s_axi_bvalid,
                    S_AXI_BREADY          => s_axi_bready,
                    S_AXI_ARADDR          => s_axi_araddr,
                    S_AXI_ARVALID         => s_axi_arvalid,
                    S_AXI_ARREADY         => s_axi_arready,
                    S_AXI_RDATA           => s_axi_rdata,
                    S_AXI_RRESP           => s_axi_rresp,
                    S_AXI_RVALID          => s_axi_rvalid,
                    S_AXI_RREADY          => s_axi_rready,
  -- IP Interconnect (IPIC) port signals -------------------------------
                    Bus2IP_Clk            => bus2ip_clk,
                    Bus2IP_Resetn         => bus2ip_resetn,
                    IP2Bus_Data           => ip2bus_data_i,
                    IP2Bus_WrAck          => ip2bus_wrack_i,
                    IP2Bus_RdAck          => ip2bus_rdack_i,
                    IP2Bus_Error          => ip2bus_error_i,
                    Bus2IP_Addr           => bus2ip_addr,
                    Bus2IP_Data           => bus2ip_data,
                    Bus2IP_RNW            => bus2ip_rnw,
                    Bus2IP_BE             => bus2ip_be,
                    Bus2IP_CS             => bus2ip_cs,
                    Bus2IP_RdCE           => bus2ip_rdce,
                    Bus2IP_WrCE           => bus2ip_wrce 
                );						  
  -----------------------------------------------------------------------------
  -- Instantiate the HWICAP Controller
  -----------------------------------------------------------------------------
                    bus2ip_rdce_int <= bus2ip_rdce;

	      	    -- 23 downto 0 assigned to 0 to 23;

                    bus2ip_wrce_int <= bus2ip_wrce; 

ICAP_NOT_SHARED : if (C_ICAP_EXTERNAL = 0) generate
begin
  HWICAP_CTRL_I : entity axi_hwicap_v3_0_13.hwicap
        generic map(ICAP_DWIDTH              => ICAP_DWIDTH,
                    C_SAXI_DWIDTH            => C_S_AXI_DATA_WIDTH,
                    C_WRITE_FIFO_DEPTH       => C_WRITE_FIFO_DEPTH,
                    C_INCLUDE_STARTUP        => C_INCLUDE_STARTUP,
                    C_READ_FIFO_DEPTH        => C_READ_FIFO_DEPTH,
                    C_SIMULATION             => C_SIMULATION,
                    C_BRAM_SRL_FIFO_TYPE     => C_BRAM_SRL_FIFO_TYPE, -- default BRAM
                    C_ICAP_WIDTH             => C_ICAP_WIDTH_S,
                    C_MODE                   => C_MODE,
                    C_SHARED_STARTUP         => C_SHARED_STARTUP,
                    C_OPERATION              => C_OPERATION,
                    C_NOREAD                 => C_NOREAD,
                    C_DEVICE_ID              => C_DEVICE_ID_B,
                    C_ENABLE_ASYNC           => C_ENABLE_ASYNC,
                    C_FAMILY                 => C_FAMILY)
        port map (  ICAP_Clk                 => ICAP_Clk_int,
                    Eos_in                   => eos_in,
                    Bus2IP_Clk               => bus2ip_clk,
                    Bus2IP_Reset             => bus2ip_reset,
                    Bus2IP_Addr              => bus2ip_addr,
                    Bus2IP_BE                => bus2ip_be,
                    Bus2IP_Data              => bus2ip_data,
                    Bus2IP_RNW               => bus2ip_rnw,
                    Bus2IP_cs                => bus2ip_cs(1),
                    Bus2IP_RdCe              => bus2ip_rdce_int (16 to 23),
                    Bus2IP_WrCe              => bus2ip_wrce_int (16 to 23),
                    IP2Bus_Data              => ip2bus_data,
                    IP2Bus_errAck            => ip2bus_err,
                    IP2Bus_RdAck             => ip2bus_rdack,
                    IP2Bus_WrAck             => ip2bus_wrack,
                    IP2Bus_AddrAck           => ip2bus_addrack,
                    Intr_rst                 => intr_rst,
                    IP2Bus_Intr              => ip2bus_intr,
                    CFGCLK    => cfgclk,
                    CFGMCLK    => cfgmclk,
                    PREQ    => preq,
                    CLK    => clk,
                    GSR    => gsr,
                    GTS    => gts,
                    KEYCLEARB    => keyclearb,
                    PACK    => pack,
                    USRCCLKO    => usrcclko,
                    USRCCLKTS    => usrcclkts,
                    USRDONEO    => usrdoneo,
                    USRDONETS    => usrdonets
                    );
    end generate ICAP_NOT_SHARED;

ICAP_SHARED : if (C_ICAP_EXTERNAL = 1) generate
begin
  HWICAP_CTRL_I : entity axi_hwicap_v3_0_13.hwicap_shared
        generic map(ICAP_DWIDTH              => ICAP_DWIDTH,
                    C_SAXI_DWIDTH            => C_S_AXI_DATA_WIDTH,
                    C_WRITE_FIFO_DEPTH       => C_WRITE_FIFO_DEPTH,
                    C_INCLUDE_STARTUP        => C_INCLUDE_STARTUP,
                    C_READ_FIFO_DEPTH        => C_READ_FIFO_DEPTH,
                    C_SIMULATION             => C_SIMULATION,
                    C_BRAM_SRL_FIFO_TYPE     => C_BRAM_SRL_FIFO_TYPE, -- default BRAM
                    C_ICAP_WIDTH             => C_ICAP_WIDTH_S,
                    C_MODE                   => C_MODE,
                    C_SHARED_STARTUP         => C_SHARED_STARTUP,
                    C_OPERATION              => C_OPERATION,
                    C_NOREAD                 => C_NOREAD,
                    C_DEVICE_ID              => C_DEVICE_ID_B,
                    C_ENABLE_ASYNC           => C_ENABLE_ASYNC,
                    C_FAMILY                 => C_FAMILY)
        port map (  ICAP_Clk                 => ICAP_Clk_int,
                    Eos_in                   => eos_in,
                    Bus2IP_Clk               => bus2ip_clk,
                    Bus2IP_Reset             => bus2ip_reset,
                    Bus2IP_Addr              => bus2ip_addr,
                    Bus2IP_BE                => bus2ip_be,
                    Bus2IP_Data              => bus2ip_data,
                    Bus2IP_RNW               => bus2ip_rnw,
                    Bus2IP_cs                => bus2ip_cs(1),
                    Bus2IP_RdCe              => bus2ip_rdce_int (16 to 23),
                    Bus2IP_WrCe              => bus2ip_wrce_int (16 to 23),
                    IP2Bus_Data              => ip2bus_data,
                    IP2Bus_errAck            => ip2bus_err,
                    IP2Bus_RdAck             => ip2bus_rdack,
                    IP2Bus_WrAck             => ip2bus_wrack,
                    IP2Bus_AddrAck           => ip2bus_addrack,
                    Intr_rst                 => intr_rst,
                    IP2Bus_Intr              => ip2bus_intr,
                    CFGCLK    => cfgclk,
                    CFGMCLK    => cfgmclk,
                    PREQ    => preq,
                    CLK    => clk,
                    GSR    => gsr,
                    GTS    => gts,
                    KEYCLEARB    => keyclearb,
                    PACK    => pack,
                    USRCCLKO    => usrcclko,
                    USRCCLKTS    => usrcclkts,
                    USRDONEO    => usrdoneo,
                    USRDONETS    => usrdonets,
                    icap_req    => cap_req,
                    icap_rel  => cap_rel,
                    icap_gnt  => cap_gnt,
                    icap_i  => icap_i,
                    icap_o => icap_o,
                    icap_csib => icap_csib,
                    icap_rdwrb => icap_rdwrb,
                    icap_avail => icap_avail
                    );
    end generate ICAP_SHARED;



bus2ip_reset <= not bus2ip_resetn;    
  -----------------------------------------------------------------------------
   -- Interrupts
   -- ALS - added interrupts from Read and Write FIFOs
   -- ALS - added code to allow C_INCLUDE_DEV_ISC and C_INCLUDE_DEV_PENCODER to
   --       come from dependent props array
   ----------------------------------------------------------------------------
  INTERRUPT_CONTROL_I : entity interrupt_control_v3_1_4.interrupt_control
        generic map(C_NUM_CE                 => 16,
                    C_NUM_IPIF_IRPT_SRC      => NUM_IPIF_IRPT_SRC,
                    C_IP_INTR_MODE_ARRAY     => IP_INTR_MODE_ARRAY,
                    C_INCLUDE_DEV_PENCODER   => false,
                    C_INCLUDE_DEV_ISC        => false,
                    C_IPIF_DWIDTH            => C_S_AXI_DATA_WIDTH)
        port map   (Bus2IP_Clk               => bus2ip_clk,
                    Bus2IP_Reset             => intr_rst,
                    Bus2IP_Data              => bus2ip_data,
                    Bus2IP_BE                => bus2ip_be,
                    Interrupt_RdCE           => bus2ip_rdce_int(0 to 15),
                    Interrupt_WrCE           => bus2ip_wrce_int(0 to 15),
                    IPIF_Reg_Interrupts      => errack_reserved,
                    IPIF_Lvl_Interrupts      => ipif_lvl_interrupts,
                    IP2Bus_IntrEvent         => ip2bus_intr,
                    Intr2Bus_DevIntr         => ip2intc_irpt,
                    Intr2Bus_DBus            => intr2bus_data,
                    Intr2Bus_WrAck           => intr2bus_wrack,
                    Intr2Bus_RdAck           => intr2bus_rdack,
                    Intr2Bus_Error           => intr2bus_error,
                    Intr2Bus_Retry           => open,
                    Intr2Bus_ToutSup         => open
                    );

wr_or <= or_reduce(bus2ip_wrce_int(0 to 23));
rd_or <= or_reduce(bus2ip_rdce_int(0 to 23));

process (bus2ip_clk)
begin
    if (bus2ip_clk'event and bus2ip_clk = '1') then
       if (bus2ip_reset = '1') then
          ip2bus_wrack_i <= '0';
       elsif (wr_or = '1') then
           ip2bus_wrack_i <= ip2bus_wrack or intr2bus_wrack;
       else
          ip2bus_wrack_i <= '0';
       end if;    
    end if;
end process; 


process (bus2ip_clk)
begin
    if (bus2ip_clk'event and bus2ip_clk = '1') then
       if (bus2ip_reset = '1') then
          ip2bus_rdack_i <= '0';
          ip2bus_data_i <= (others => '0');
       elsif (rd_or = '1') then
          ip2bus_rdack_i <= intr2bus_rdack or ip2bus_rdack;
          ip2bus_data_i  <= intr2bus_data or ip2bus_data;
       else
          ip2bus_rdack_i <= '0';
          ip2bus_data_i <= (others => '0');
       end if;
    end if;
end process; 



process (bus2ip_clk)
begin
    if (bus2ip_clk'event and bus2ip_clk = '1') then
       if (bus2ip_reset = '1') then
          ip2bus_error_i <= '0';
       elsif (rd_or = '1' or wr_or = '1') then
          ip2bus_error_i <= intr2bus_error or ip2bus_err;
       else 
          ip2bus_error_i <= '0';
       end if;
    end if;
end process; 


SYNC_MODE : if (C_ENABLE_ASYNC = 0) generate
begin
   ICAP_Clk_int <= s_axi_aclk; 

end generate SYNC_MODE;


ASYNC_MODE : if (C_ENABLE_ASYNC = 1) generate
begin

   ICAP_Clk_int <= icap_clk; 

end generate ASYNC_MODE;

--ip2bus_wrack_i <= ip2bus_wrack or intr2bus_wrack 
--                  when or_reduce(bus2ip_wrce_int(0 to 23)) = '1' else
 --                 '0';
--ip2bus_rdack_i <= intr2bus_rdack or ip2bus_rdack
 --                 when or_reduce(bus2ip_rdce_int(0 to 23)) = '1' else
 --                 '0';
--ip2bus_data_i  <= intr2bus_data or ip2bus_data
 --                 when or_reduce(bus2ip_rdce_int(0 to 23))= '1' else
  --                (others => '0');
--ip2bus_error_i <= intr2bus_error or ip2bus_err
 --                 when (or_reduce(bus2ip_rdce_int(0 to 23)) or 
  --                or_reduce(bus2ip_wrce_int(0 to 23))) = '1' else
    --              '0';
end implementation;
