---------------------------------------------------------------------------------------------------
-- Copyright (c) 2021 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- libraries
---------------------------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

---------------------------------------------------------------------------------------------------
-- entity declaration
---------------------------------------------------------------------------------------------------
ENTITY Mercury_XU5_PE1 IS
    GENERIC (
        BG_WIDTH : NATURAL
    );

    PORT (

        -- Anios_A
        IOA_D0_P : INOUT STD_LOGIC;
        IOA_D1_N : INOUT STD_LOGIC;
        IOA_D2_P : INOUT STD_LOGIC;
        IOA_D3_N : INOUT STD_LOGIC;
        IOA_D4_P : INOUT STD_LOGIC;
        IOA_D5_N : INOUT STD_LOGIC;
        IOA_D6_P : INOUT STD_LOGIC;
        IOA_D7_N : INOUT STD_LOGIC;
        IOA_D8_P : INOUT STD_LOGIC;
        IOA_D9_N : INOUT STD_LOGIC;
        IOA_D10_P : INOUT STD_LOGIC;
        IOA_D11_N : INOUT STD_LOGIC;
        IOA_D12_P : INOUT STD_LOGIC;
        IOA_D13_N : INOUT STD_LOGIC;
        IOA_D14_P : INOUT STD_LOGIC;
        IOA_D15_N : INOUT STD_LOGIC;
        IOA_D16_P : INOUT STD_LOGIC;
        IOA_D17_N : INOUT STD_LOGIC;
        IOA_D18_P : INOUT STD_LOGIC;
        IOA_D19_N : INOUT STD_LOGIC;
        IOA_D20_P : INOUT STD_LOGIC;
        IOA_D21_N : INOUT STD_LOGIC;
        IOA_D22_P : INOUT STD_LOGIC;
        IOA_D23_N : INOUT STD_LOGIC;
        IOA_CLK1_N : INOUT STD_LOGIC;
        IOA_CLK0_P : INOUT STD_LOGIC;

        -- Anios_B
        IOB_D0_P : INOUT STD_LOGIC;
        IOB_D1_N : INOUT STD_LOGIC;
        IOB_D2_P : INOUT STD_LOGIC;
        IOB_D3_N : INOUT STD_LOGIC;
        IOB_D4_P : INOUT STD_LOGIC;
        IOB_D5_N : INOUT STD_LOGIC;
        IOB_D6_P : INOUT STD_LOGIC;
        IOB_D7_N : INOUT STD_LOGIC;
        IOB_D8_P : INOUT STD_LOGIC;
        IOB_D9_N : INOUT STD_LOGIC;
        IOB_D10_P : INOUT STD_LOGIC;
        IOB_D11_N : INOUT STD_LOGIC;
        IOB_D12_P : INOUT STD_LOGIC;
        IOB_D13_N : INOUT STD_LOGIC;
        IOB_D14_P : INOUT STD_LOGIC;
        IOB_D15_N : INOUT STD_LOGIC;
        IOB_D16_SC0_DIP1_N : INOUT STD_LOGIC;
        IOB_D17_SC1_DIP2_N : INOUT STD_LOGIC;
        IOB_D18_SC2_DIP3_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOB_D19_SC3_DIP4_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOB_D20_SC4_BTN0_N : INOUT STD_LOGIC;
        IOB_D21_SC5_BTN1_N : INOUT STD_LOGIC;
        IOB_D22_SC6_BTN2_N : INOUT STD_LOGIC;
        IOB_D23_SC7_BTN3_N : INOUT STD_LOGIC;
        IOB_CLK1_N : INOUT STD_LOGIC;
        IOB_CLK0_P : INOUT STD_LOGIC;

        -- FMC0
        FMC_LA02_N : INOUT STD_LOGIC;
        FMC_LA02_P : INOUT STD_LOGIC;
        FMC_LA03_N : INOUT STD_LOGIC;
        FMC_LA03_P : INOUT STD_LOGIC;
        FMC_LA04_N : INOUT STD_LOGIC;
        FMC_LA04_P : INOUT STD_LOGIC;
        FMC_LA05_N : INOUT STD_LOGIC;
        FMC_LA05_P : INOUT STD_LOGIC;
        FMC_LA06_N : INOUT STD_LOGIC;
        FMC_LA06_P : INOUT STD_LOGIC;
        FMC_LA07_N : INOUT STD_LOGIC;
        FMC_LA07_P : INOUT STD_LOGIC;
        FMC_LA08_N : INOUT STD_LOGIC;
        FMC_LA08_P : INOUT STD_LOGIC;
        FMC_LA09_N : INOUT STD_LOGIC;
        FMC_LA09_P : INOUT STD_LOGIC;
        FMC_LA10_N : INOUT STD_LOGIC;
        FMC_LA10_P : INOUT STD_LOGIC;
        FMC_LA11_N : INOUT STD_LOGIC;
        FMC_LA11_P : INOUT STD_LOGIC;
        FMC_LA12_N : INOUT STD_LOGIC;
        FMC_LA12_P : INOUT STD_LOGIC;
        FMC_LA13_N : INOUT STD_LOGIC;
        FMC_LA13_P : INOUT STD_LOGIC;
        FMC_LA14_N : INOUT STD_LOGIC;
        FMC_LA14_P : INOUT STD_LOGIC;
        FMC_LA15_N : INOUT STD_LOGIC;
        FMC_LA15_P : INOUT STD_LOGIC;
        FMC_LA16_N : INOUT STD_LOGIC;
        FMC_LA16_P : INOUT STD_LOGIC;
        FMC_LA19_N : INOUT STD_LOGIC;
        FMC_LA19_P : INOUT STD_LOGIC;
        FMC_LA20_N : INOUT STD_LOGIC;
        FMC_LA20_P : INOUT STD_LOGIC;
        FMC_LA21_N : INOUT STD_LOGIC;
        FMC_LA21_P : INOUT STD_LOGIC;
        FMC_LA22_N : INOUT STD_LOGIC;
        FMC_LA22_P : INOUT STD_LOGIC;
        FMC_LA23_N : INOUT STD_LOGIC;
        FMC_LA23_P : INOUT STD_LOGIC;
        FMC_LA24_N : INOUT STD_LOGIC;
        FMC_LA24_P : INOUT STD_LOGIC;
        FMC_LA25_N : INOUT STD_LOGIC;
        FMC_LA25_P : INOUT STD_LOGIC;
        FMC_LA26_N : INOUT STD_LOGIC;
        FMC_LA26_P : INOUT STD_LOGIC;
        FMC_LA27_N : INOUT STD_LOGIC;
        FMC_LA27_P : INOUT STD_LOGIC;
        FMC_LA28_N : INOUT STD_LOGIC;
        FMC_LA28_P : INOUT STD_LOGIC;
        FMC_LA29_N : INOUT STD_LOGIC;
        FMC_LA29_P : INOUT STD_LOGIC;
        FMC_LA30_N : INOUT STD_LOGIC;
        FMC_LA30_P : INOUT STD_LOGIC;
        FMC_LA31_N : INOUT STD_LOGIC;
        FMC_LA31_P : INOUT STD_LOGIC;
        FMC_LA32_N : INOUT STD_LOGIC;
        FMC_LA32_P : INOUT STD_LOGIC;
        FMC_LA33_N : INOUT STD_LOGIC;
        FMC_LA33_P : INOUT STD_LOGIC;
        FMC_LA00_CC_N : INOUT STD_LOGIC;
        FMC_LA00_CC_P : INOUT STD_LOGIC;
        FMC_LA01_CC_N : INOUT STD_LOGIC;
        FMC_LA01_CC_P : INOUT STD_LOGIC;
        FMC_LA17_CC_N : INOUT STD_LOGIC;
        FMC_LA17_CC_P : INOUT STD_LOGIC;
        FMC_LA18_CC_N : INOUT STD_LOGIC;
        FMC_LA18_CC_P : INOUT STD_LOGIC;
        FMC_CLK0_M2C_N : INOUT STD_LOGIC;
        FMC_CLK0_M2C_P : INOUT STD_LOGIC;
        FMC_CLK1_M2C_N : INOUT STD_LOGIC;
        FMC_CLK1_M2C_P : INOUT STD_LOGIC;

        -- I2C_PL
        I2C_SCL_PL : INOUT STD_LOGIC;
        I2C_SDA_PL : INOUT STD_LOGIC;

        -- IOC
        IOC_D0_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D1_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D2_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D3_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D4_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D5_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D6_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOC_D7_N : INOUT STD_LOGIC; -- Only available on G1 modules

        -- IOD
        IOD_D0_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D1_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D2_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D3_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D4_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D5_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D6_P : INOUT STD_LOGIC; -- Only available on G1 modules
        IOD_D7_N : INOUT STD_LOGIC; -- Only available on G1 modules

        -- IOE
        IOE_D0_LED0_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOE_D1_LED1_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOE_D2_LED2_N : INOUT STD_LOGIC; -- Only available on G1 modules
        IOE_D3_LED3_N : INOUT STD_LOGIC; -- Only available on G1 modules

        -- LED
        LED1_N : OUT STD_LOGIC;
        LED2_N : OUT STD_LOGIC;
        LED3_N : OUT STD_LOGIC;

        -- PL_100_MHz_Oscillator
        CLK100_PL_N : IN STD_LOGIC;
        CLK100_PL_P : IN STD_LOGIC;

        -- PL_DDR4_Memory
        DDR4PL_ACT_N : OUT STD_LOGIC;
        DDR4PL_RST_N : OUT STD_LOGIC;
        DDR4PL_BA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        DDR4PL_BG : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        DDR4PL_CKE : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        DDR4PL_DQ : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        DDR4PL_ODT : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        DDR4PL_A : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
        DDR4PL_CK_N : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        DDR4PL_CK_P : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        DDR4PL_CS_N : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
        DDR4PL_DM : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        DDR4PL_DQS_N : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        DDR4PL_DQS_P : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- PL_Gigabit_Ethernet
        ETH1_MDC : OUT STD_LOGIC;
        ETH1_RXCLK : IN STD_LOGIC;
        ETH1_TXCLK : OUT STD_LOGIC;
        ETH1_MDIO : INOUT STD_LOGIC;
        ETH1_INT_N : IN STD_LOGIC;
        ETH1_RESET_N : OUT STD_LOGIC;
        ETH1_RXCTL : IN STD_LOGIC;
        ETH1_TXCTL : OUT STD_LOGIC;
        ETH1_RXD : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        ETH1_TXD : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END Mercury_XU5_PE1;

ARCHITECTURE rtl OF Mercury_XU5_PE1 IS

    ---------------------------------------------------------------------------------------------------
    -- component declarations
    ---------------------------------------------------------------------------------------------------
    COMPONENT Mercury_XU5 IS
        PORT (
            Clk100 : OUT STD_LOGIC;
            Clk50 : OUT STD_LOGIC;
            Rst_N : OUT STD_LOGIC;
            LED_N : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            C0_SYS_CLK_clk_n : IN STD_LOGIC;
            C0_SYS_CLK_clk_p : IN STD_LOGIC;
            C0_DDR4_act_n : OUT STD_LOGIC;
            C0_DDR4_reset_n : OUT STD_LOGIC;
            C0_DDR4_ba : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            C0_DDR4_bg : OUT STD_LOGIC_VECTOR(BG_WIDTH - 1 DOWNTO 0);
            C0_DDR4_cke : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            C0_DDR4_dq : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            C0_DDR4_odt : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            C0_DDR4_adr : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
            C0_DDR4_ck_c : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            C0_DDR4_ck_t : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            C0_DDR4_cs_n : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            C0_DDR4_dm_n : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            C0_DDR4_dqs_c : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            C0_DDR4_dqs_t : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            MDIO_mdc : OUT STD_LOGIC;
            MDIO_mdio_i : IN STD_LOGIC;
            MDIO_mdio_o : OUT STD_LOGIC;
            MDIO_mdio_t : OUT STD_LOGIC;
            ETH_CLK125 : OUT STD_LOGIC;
            ETH_CLK125_90 : OUT STD_LOGIC;
            ETH_CLK25 : OUT STD_LOGIC;
            ETH_CLK10 : OUT STD_LOGIC;
            ETH_resetn : OUT STD_LOGIC;
            GMII_col : IN STD_LOGIC;
            GMII_crs : IN STD_LOGIC;
            GMII_rx_clk : IN STD_LOGIC;
            GMII_rx_dv : IN STD_LOGIC;
            GMII_rx_er : IN STD_LOGIC;
            GMII_rxd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            GMII_speed_mode : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            GMII_tx_clk : IN STD_LOGIC;
            GMII_tx_en : OUT STD_LOGIC;
            GMII_tx_er : OUT STD_LOGIC;
            GMII_txd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT Mercury_XU5;

    COMPONENT IOBUF IS
        PORT (
            I : IN STD_LOGIC;
            O : OUT STD_LOGIC;
            T : IN STD_LOGIC;
            IO : INOUT STD_LOGIC
        );
    END COMPONENT IOBUF;

    COMPONENT Enclustra_GMII2RGMII_ZU IS
        PORT (
            Clk125 : IN STD_LOGIC;
            Clk125_90 : IN STD_LOGIC;
            Clk25 : IN STD_LOGIC;
            Clk10 : IN STD_LOGIC;
            Resetn : IN STD_LOGIC;

            GMII_col : OUT STD_LOGIC;
            GMII_crs : OUT STD_LOGIC;
            GMII_rx_clk : OUT STD_LOGIC;
            GMII_rx_dv : OUT STD_LOGIC;
            GMII_rx_er : OUT STD_LOGIC;
            GMII_rxd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            GMII_speed_mode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            GMII_tx_clk : OUT STD_LOGIC;
            GMII_tx_en : IN STD_LOGIC;
            GMII_tx_er : IN STD_LOGIC;
            GMII_txd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

            RGMII_rxd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            RGMII_rxclk : IN STD_LOGIC;
            RGMII_rxctl : IN STD_LOGIC;
            RGMII_txd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            RGMII_txclk : OUT STD_LOGIC;
            RGMII_txctl : OUT STD_LOGIC;

            Speed1000En : OUT STD_LOGIC;
            Speed100En : OUT STD_LOGIC;
            Speed10En : OUT STD_LOGIC
        );
    END COMPONENT Enclustra_GMII2RGMII_ZU;

    ---------------------------------------------------------------------------------------------------
    -- signal declarations
    ---------------------------------------------------------------------------------------------------
    SIGNAL Clk100 : STD_LOGIC;
    SIGNAL Clk50 : STD_LOGIC;
    SIGNAL Rst_N : STD_LOGIC;
    SIGNAL LED_N : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL MDIO_mdio_i : STD_LOGIC;
    SIGNAL MDIO_mdio_o : STD_LOGIC;
    SIGNAL MDIO_mdio_t : STD_LOGIC;
    SIGNAL ETH_CLK125 : STD_LOGIC;
    SIGNAL ETH_CLK125_90 : STD_LOGIC;
    SIGNAL ETH_CLK25 : STD_LOGIC;
    SIGNAL ETH_CLK10 : STD_LOGIC;
    SIGNAL ETH_resetn : STD_LOGIC;
    SIGNAL GMII_col : STD_LOGIC;
    SIGNAL GMII_crs : STD_LOGIC;
    SIGNAL GMII_rx_clk : STD_LOGIC;
    SIGNAL GMII_rx_dv : STD_LOGIC;
    SIGNAL GMII_rx_er : STD_LOGIC;
    SIGNAL GMII_rxd : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL GMII_speed_mode : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL GMII_tx_clk : STD_LOGIC;
    SIGNAL GMII_tx_en : STD_LOGIC;
    SIGNAL GMII_tx_er : STD_LOGIC;
    SIGNAL GMII_txd : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL LedCount : unsigned(23 DOWNTO 0);

BEGIN

    ---------------------------------------------------------------------------------------------------
    -- processor system instance
    ---------------------------------------------------------------------------------------------------
    Mercury_XU5_i : COMPONENT Mercury_XU5
        PORT MAP(
            Clk100 => Clk100,
            Clk50 => Clk50,
            Rst_N => Rst_N,
            LED_N => LED_N,
            C0_SYS_CLK_clk_n => CLK100_PL_N,
            C0_SYS_CLK_clk_p => CLK100_PL_P,
            C0_DDR4_act_n => DDR4PL_ACT_N,
            C0_DDR4_reset_n => DDR4PL_RST_N,
            C0_DDR4_ba => DDR4PL_BA,
            C0_DDR4_bg => DDR4PL_BG (BG_WIDTH - 1 DOWNTO 0),
            C0_DDR4_cke => DDR4PL_CKE,
            C0_DDR4_dq => DDR4PL_DQ,
            C0_DDR4_odt => DDR4PL_ODT,
            C0_DDR4_adr => DDR4PL_A,
            C0_DDR4_ck_c => DDR4PL_CK_N,
            C0_DDR4_ck_t => DDR4PL_CK_P,
            C0_DDR4_cs_n => DDR4PL_CS_N,
            C0_DDR4_dm_n => DDR4PL_DM,
            C0_DDR4_dqs_c => DDR4PL_DQS_N,
            C0_DDR4_dqs_t => DDR4PL_DQS_P,
            MDIO_mdc => ETH1_MDC,
            MDIO_mdio_i => MDIO_mdio_i,
            MDIO_mdio_o => MDIO_mdio_o,
            MDIO_mdio_t => MDIO_mdio_t,
            ETH_CLK125 => ETH_CLK125,
            ETH_CLK125_90 => ETH_CLK125_90,
            ETH_CLK25 => ETH_CLK25,
            ETH_CLK10 => ETH_CLK10,
            ETH_resetn => ETH_resetn,
            GMII_col => GMII_col,
            GMII_crs => GMII_crs,
            GMII_rx_clk => GMII_rx_clk,
            GMII_rx_dv => GMII_rx_dv,
            GMII_rx_er => GMII_rx_er,
            GMII_rxd => GMII_rxd,
            GMII_speed_mode => GMII_speed_mode,
            GMII_tx_clk => GMII_tx_clk,
            GMII_tx_en => GMII_tx_en,
            GMII_tx_er => GMII_tx_er,
            GMII_txd => GMII_txd
        );

        PROCESS (Clk50)
        BEGIN
            IF rising_edge (Clk50) THEN
                IF Rst_N = '0' THEN
                    LedCount <= (OTHERS => '0');
                ELSE
                    LedCount <= LedCount + 1;
                END IF;
            END IF;
        END PROCESS;

        Led1_N <= '0' WHEN LedCount(LedCount'high) = '0' ELSE
            'Z';
        Led2_N <= '0' WHEN LED_N(0) = '0' ELSE
            'Z';
        Led3_N <= '0' WHEN LED_N(1) = '0' ELSE
            'Z';
        MDIO_mdio_iobuf : COMPONENT IOBUF
            PORT MAP(
                I => MDIO_mdio_o,
                IO => ETH1_MDIO,
                O => MDIO_mdio_i,
                T => MDIO_mdio_t
            );

            i_gmii2rgmii : Enclustra_GMII2RGMII_ZU
            PORT MAP(
                Clk125 => ETH_CLK125,
                Clk125_90 => ETH_CLK125_90,
                Clk25 => ETH_Clk25,
                Clk10 => ETH_Clk10,
                Resetn => ETH_resetn,

                GMII_col => GMII_col,
                GMII_crs => GMII_crs,
                GMII_rx_clk => GMII_rx_clk,
                GMII_rx_dv => GMII_rx_dv,
                GMII_rx_er => GMII_rx_er,
                GMII_rxd => GMII_rxd,
                GMII_speed_mode => GMII_speed_mode,
                GMII_tx_clk => GMII_tx_clk,
                GMII_tx_en => GMII_tx_en,
                GMII_tx_er => GMII_tx_er,
                GMII_txd => GMII_txd,

                RGMII_rxd => ETH1_RXD,
                RGMII_rxclk => ETH1_RXCLK,
                RGMII_rxctl => ETH1_RXCTL,
                RGMII_txd => ETH1_TXD,
                RGMII_txclk => ETH1_TXCLK,
                RGMII_txctl => ETH1_TXCTL,

                Speed1000En => OPEN,
                Speed100En => OPEN,
                Speed10En => OPEN
            );

            ETH1_RESET_N <= ETH_resetn;

        END rtl;