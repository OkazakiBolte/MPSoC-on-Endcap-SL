--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Fri Dec  3 13:46:15 2021
--Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY UNISIM;
USE UNISIM.VCOMPONENTS.ALL;
ENTITY design_1_wrapper IS
    PORT (
        ETH_CLK10        : OUT STD_LOGIC;
        ETH_CLK125       : OUT STD_LOGIC;
        ETH_CLK125_90    : OUT STD_LOGIC;
        ETH_CLK25        : OUT STD_LOGIC;
        ETH_resetn       : OUT STD_LOGIC;
        GMII_col         : IN STD_LOGIC;
        GMII_crs         : IN STD_LOGIC;
        GMII_rx_clk      : IN STD_LOGIC;
        GMII_rx_dv       : IN STD_LOGIC;
        GMII_rx_er       : IN STD_LOGIC;
        GMII_rxd         : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        GMII_speed_mode  : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        GMII_tx_clk      : IN STD_LOGIC;
        GMII_tx_en       : OUT STD_LOGIC;
        GMII_tx_er       : OUT STD_LOGIC;
        GMII_txd         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        MDIO_mdc         : OUT STD_LOGIC;
        MDIO_mdio_io     : INOUT STD_LOGIC;
        ZYNQTCK          : OUT STD_LOGIC;
        ZYNQTDI          : OUT STD_LOGIC;
        ZYNQTDO          : IN STD_LOGIC;
        ZYNQTMS          : OUT STD_LOGIC;
        peripheral_reset : OUT STD_LOGIC_VECTOR (0 TO 0)
    );
END design_1_wrapper;

ARCHITECTURE STRUCTURE OF design_1_wrapper IS
    COMPONENT design_1 IS
        PORT (
            ETH_CLK125       : OUT STD_LOGIC;
            ETH_CLK125_90    : OUT STD_LOGIC;
            ETH_CLK25        : OUT STD_LOGIC;
            ETH_CLK10        : OUT STD_LOGIC;
            ETH_resetn       : OUT STD_LOGIC;
            peripheral_reset : OUT STD_LOGIC_VECTOR (0 TO 0);
            ZYNQTDI          : OUT STD_LOGIC;
            ZYNQTDO          : IN STD_LOGIC;
            ZYNQTCK          : OUT STD_LOGIC;
            ZYNQTMS          : OUT STD_LOGIC;
            GMII_rx_clk      : IN STD_LOGIC;
            GMII_speed_mode  : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            GMII_crs         : IN STD_LOGIC;
            GMII_col         : IN STD_LOGIC;
            GMII_rxd         : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            GMII_rx_er       : IN STD_LOGIC;
            GMII_rx_dv       : IN STD_LOGIC;
            GMII_tx_clk      : IN STD_LOGIC;
            GMII_txd         : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            GMII_tx_en       : OUT STD_LOGIC;
            GMII_tx_er       : OUT STD_LOGIC;
            MDIO_mdc         : OUT STD_LOGIC;
            MDIO_mdio_i      : IN STD_LOGIC;
            MDIO_mdio_o      : OUT STD_LOGIC;
            MDIO_mdio_t      : OUT STD_LOGIC
        );
    END COMPONENT design_1;
    COMPONENT IOBUF IS
        PORT (
            I  : IN STD_LOGIC;
            O  : OUT STD_LOGIC;
            T  : IN STD_LOGIC;
            IO : INOUT STD_LOGIC
        );
    END COMPONENT IOBUF;
    SIGNAL MDIO_mdio_i : STD_LOGIC;
    SIGNAL MDIO_mdio_o : STD_LOGIC;
    SIGNAL MDIO_mdio_t : STD_LOGIC;
BEGIN
    MDIO_mdio_iobuf : COMPONENT IOBUF
        PORT MAP(
            I  => MDIO_mdio_o,
            IO => MDIO_mdio_io,
            O  => MDIO_mdio_i,
            T  => MDIO_mdio_t
        );
        design_1_i : COMPONENT design_1
            PORT MAP(
                ETH_CLK10                   => ETH_CLK10,
                ETH_CLK125                  => ETH_CLK125,
                ETH_CLK125_90               => ETH_CLK125_90,
                ETH_CLK25                   => ETH_CLK25,
                ETH_resetn                  => ETH_resetn,
                GMII_col                    => GMII_col,
                GMII_crs                    => GMII_crs,
                GMII_rx_clk                 => GMII_rx_clk,
                GMII_rx_dv                  => GMII_rx_dv,
                GMII_rx_er                  => GMII_rx_er,
                GMII_rxd(7 DOWNTO 0)        => GMII_rxd(7 DOWNTO 0),
                GMII_speed_mode(2 DOWNTO 0) => GMII_speed_mode(2 DOWNTO 0),
                GMII_tx_clk                 => GMII_tx_clk,
                GMII_tx_en                  => GMII_tx_en,
                GMII_tx_er                  => GMII_tx_er,
                GMII_txd(7 DOWNTO 0)        => GMII_txd(7 DOWNTO 0),
                MDIO_mdc                    => MDIO_mdc,
                MDIO_mdio_i                 => MDIO_mdio_i,
                MDIO_mdio_o                 => MDIO_mdio_o,
                MDIO_mdio_t                 => MDIO_mdio_t,
                ZYNQTCK                     => ZYNQTCK,
                ZYNQTDI                     => ZYNQTDI,
                ZYNQTDO                     => ZYNQTDO,
                ZYNQTMS                     => ZYNQTMS,
                peripheral_reset(0)         => peripheral_reset(0)
            );
        END STRUCTURE;