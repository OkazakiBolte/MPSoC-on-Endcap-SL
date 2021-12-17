--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Fri Dec 17 12:21:24 2021
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
    CFGDONE : in STD_LOGIC;
    CFGINIT : in STD_LOGIC;
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
    GT_DIFF_REFCLK1_clk_n : in STD_LOGIC;
    GT_DIFF_REFCLK1_clk_p : in STD_LOGIC;
    GT_SERIAL_F2Z_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_F2Z_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_Z2F_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_Z2F_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    LED : out STD_LOGIC_VECTOR ( 2 downto 0 );
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_io : inout STD_LOGIC;
    Si5345_INSEL_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ZYNQTCK : out STD_LOGIC;
    ZYNQTDI : out STD_LOGIC;
    ZYNQTDO : in STD_LOGIC;
    ZYNQTMS : out STD_LOGIC
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
    ZYNQTDI : out STD_LOGIC;
    ZYNQTDO : in STD_LOGIC;
    ZYNQTCK : out STD_LOGIC;
    ZYNQTMS : out STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CFGINIT : in STD_LOGIC;
    CFGDONE : in STD_LOGIC;
    MDIO_mdc : out STD_LOGIC;
    MDIO_mdio_i : in STD_LOGIC;
    MDIO_mdio_o : out STD_LOGIC;
    MDIO_mdio_t : out STD_LOGIC;
    GT_DIFF_REFCLK1_clk_n : in STD_LOGIC;
    GT_DIFF_REFCLK1_clk_p : in STD_LOGIC;
    GT_SERIAL_F2Z_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_F2Z_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_Z2F_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    GT_SERIAL_Z2F_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
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
    Si5345_INSEL_tri_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
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
      CFGDONE => CFGDONE,
      CFGINIT => CFGINIT,
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
      GT_DIFF_REFCLK1_clk_n => GT_DIFF_REFCLK1_clk_n,
      GT_DIFF_REFCLK1_clk_p => GT_DIFF_REFCLK1_clk_p,
      GT_SERIAL_F2Z_rxn(0) => GT_SERIAL_F2Z_rxn(0),
      GT_SERIAL_F2Z_rxp(0) => GT_SERIAL_F2Z_rxp(0),
      GT_SERIAL_Z2F_txn(0) => GT_SERIAL_Z2F_txn(0),
      GT_SERIAL_Z2F_txp(0) => GT_SERIAL_Z2F_txp(0),
      LED(2 downto 0) => LED(2 downto 0),
      MDIO_mdc => MDIO_mdc,
      MDIO_mdio_i => MDIO_mdio_i,
      MDIO_mdio_o => MDIO_mdio_o,
      MDIO_mdio_t => MDIO_mdio_t,
      Si5345_INSEL_tri_o(1 downto 0) => Si5345_INSEL_tri_o(1 downto 0),
      ZYNQTCK => ZYNQTCK,
      ZYNQTDI => ZYNQTDI,
      ZYNQTDO => ZYNQTDO,
      ZYNQTMS => ZYNQTMS
    );
end STRUCTURE;
