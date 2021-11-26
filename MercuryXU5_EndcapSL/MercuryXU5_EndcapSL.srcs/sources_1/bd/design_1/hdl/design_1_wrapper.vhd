--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Fri Nov 26 13:10:58 2021
--Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    ETH_CLK10 : out STD_LOGIC;
    ETH_CLK125 : out STD_LOGIC;
    ETH_CLK125_90 : out STD_LOGIC;
    ETH_CLK25 : out STD_LOGIC;
    ETH_resetn : out STD_LOGIC;
    GMII_col : in STD_LOGIC;
    GMII_crs : in STD_LOGIC;
    GMII_rx_clk : in STD_LOGIC;
    GMII_rx_dv : in STD_LOGIC;
    GMII_rx_er : in STD_LOGIC;
    GMII_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_speed_mode : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GMII_tx_clk : in STD_LOGIC;
    GMII_tx_en : out STD_LOGIC;
    GMII_tx_er : out STD_LOGIC;
    GMII_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LED_N_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_io : inout STD_LOGIC;
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ETH_CLK125 : out STD_LOGIC;
    ETH_CLK125_90 : out STD_LOGIC;
    ETH_CLK25 : out STD_LOGIC;
    ETH_CLK10 : out STD_LOGIC;
    ETH_resetn : out STD_LOGIC;
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_i : in STD_LOGIC;
    MDIO_mdio_o : out STD_LOGIC;
    MDIO_mdio_t : out STD_LOGIC;
    GMII_rx_clk : in STD_LOGIC;
    GMII_speed_mode : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GMII_crs : in STD_LOGIC;
    GMII_col : in STD_LOGIC;
    GMII_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_rx_er : in STD_LOGIC;
    GMII_rx_dv : in STD_LOGIC;
    GMII_tx_clk : in STD_LOGIC;
    GMII_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_tx_en : out STD_LOGIC;
    GMII_tx_er : out STD_LOGIC;
    LED_N_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal MDIO_mdio_i : STD_LOGIC;
  signal MDIO_mdio_o : STD_LOGIC;
  signal MDIO_mdio_t : STD_LOGIC;
begin
MDIO_mdio_iobuf: component IOBUF
     port map (
      I => MDIO_mdio_o,
      IO => MDIO_mdio_io,
      O => MDIO_mdio_i,
      T => MDIO_mdio_t
    );
design_1_i: component design_1
     port map (
      ETH_CLK10 => ETH_CLK10,
      ETH_CLK125 => ETH_CLK125,
      ETH_CLK125_90 => ETH_CLK125_90,
      ETH_CLK25 => ETH_CLK25,
      ETH_resetn => ETH_resetn,
      GMII_col => GMII_col,
      GMII_crs => GMII_crs,
      GMII_rx_clk => GMII_rx_clk,
      GMII_rx_dv => GMII_rx_dv,
      GMII_rx_er => GMII_rx_er,
      GMII_rxd(7 downto 0) => GMII_rxd(7 downto 0),
      GMII_speed_mode(2 downto 0) => GMII_speed_mode(2 downto 0),
      GMII_tx_clk => GMII_tx_clk,
      GMII_tx_en => GMII_tx_en,
      GMII_tx_er => GMII_tx_er,
      GMII_txd(7 downto 0) => GMII_txd(7 downto 0),
      LED_N_tri_o(2 downto 0) => LED_N_tri_o(2 downto 0),
      MDIO_mdc => MDIO_mdc,
      MDIO_mdio_i => MDIO_mdio_i,
      MDIO_mdio_o => MDIO_mdio_o,
      MDIO_mdio_t => MDIO_mdio_t,
      peripheral_reset(0) => peripheral_reset(0)
    );
end STRUCTURE;
