---- libraries ----
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---- entity declaration ----
entity MercuryXU5_EndcapSL is
    port (
        -- LED
        LED_N_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
        -- PL_Gigabit_Ethernet
        ETH1_MDC                       : out     std_logic;
        ETH1_RXCLK                     : in      std_logic;
        ETH1_TXCLK                     : out     std_logic;
        ETH1_MDIO                      : inout   std_logic;
        ETH1_INT_N                     : in      std_logic;
        ETH1_RESET_N                   : out     std_logic;
        ETH1_RXCTL                     : in      std_logic;
        ETH1_TXCTL                     : out     std_logic;
        ETH1_RXD                       : in      std_logic_vector(3 downto 0);
        ETH1_TXD                       : out     std_logic_vector(3 downto 0)
    );
end MercuryXU5_EndcapSL;

architecture rtl of MercuryXU5_EndcapSL is
    ---- component declarations ----
    component design_1_wrapper is
        port (

        );
    end component design_1_wrapper;

    component IOBUF is
        port (
            I  : in    STD_LOGIC;
            O  : out   STD_LOGIC;
            T  : in    STD_LOGIC;
            IO : inout STD_LOGIC
        );
    end component IOBUF;

    component Enclustra_GMII2RGMII_ZU is
        port (
            Clk125          : in  std_logic;
            Clk125_90       : in  std_logic;
            Clk25           : in  std_logic;
            Clk10           : in  std_logic;
            Resetn          : in  std_logic;

            GMII_col        : out std_logic;
            GMII_crs        : out std_logic;
            GMII_rx_clk     : out std_logic;
            GMII_rx_dv      : out std_logic;
            GMII_rx_er      : out std_logic;
            GMII_rxd        : out std_logic_vector(7 downto 0);
            GMII_speed_mode : in  std_logic_vector(2 downto 0);
            GMII_tx_clk     : out std_logic;
            GMII_tx_en      : in  std_logic;
            GMII_tx_er      : in  std_logic;
            GMII_txd        : in  std_logic_vector(7 downto 0);

            RGMII_rxd       : in  std_logic_vector(3 downto 0);
            RGMII_rxclk     : in  std_logic;
            RGMII_rxctl     : in  std_logic;
            RGMII_txd       : out std_logic_vector(3 downto 0);
            RGMII_txclk     : out std_logic;
            RGMII_txctl     : out std_logic;

            Speed1000En     : out std_logic;
            Speed100En      : out std_logic;
            Speed10En       : out std_logic
        );
    end component Enclustra_GMII2RGMII_ZU;

    ---- Signal declarations ----
    signal MDIO_mdio_i      : std_logic;
    signal MDIO_mdio_o      : std_logic;
    signal MDIO_mdio_t      : std_logic;

begin
    design_1_wrapper_ i: component design_1_wrapper
        port map ();

    MDIO_mdio_iobuf : component IOBUF
        port map (
            I  => MDIO_mdio_o,
            IO => ETH1_MDIO,
            O  => MDIO_mdio_i,
            T  => MDIO_mdio_t
        );

    i_gmii2rgmii : Enclustra_GMII2RGMII_ZU
        port map ();
end rtl;