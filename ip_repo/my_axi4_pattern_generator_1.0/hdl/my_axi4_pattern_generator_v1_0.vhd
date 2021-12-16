library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_axi4_pattern_generator_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface S_AXI
		C_S_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_S_AXI_BURST_LEN	: integer	:= 16;
		C_S_AXI_ID_WIDTH	: integer	:= 1;
		C_S_AXI_ADDR_WIDTH	: integer	:= 32;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_S_AXI_WUSER_WIDTH	: integer	:= 0;
		C_S_AXI_RUSER_WIDTH	: integer	:= 0;
		C_S_AXI_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface S_AXI
		s_axi_init_axi_txn	: in std_logic;
		s_axi_txn_done	: out std_logic;
		s_axi_error	: out std_logic;
		s_axi_aclk	: in std_logic;
		s_axi_aresetn	: in std_logic;
		s_axi_awid	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		s_axi_awaddr	: out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		s_axi_awlen	: out std_logic_vector(7 downto 0);
		s_axi_awsize	: out std_logic_vector(2 downto 0);
		s_axi_awburst	: out std_logic_vector(1 downto 0);
		s_axi_awlock	: out std_logic;
		s_axi_awcache	: out std_logic_vector(3 downto 0);
		s_axi_awprot	: out std_logic_vector(2 downto 0);
		s_axi_awqos	: out std_logic_vector(3 downto 0);
		s_axi_awuser	: out std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
		s_axi_awvalid	: out std_logic;
		s_axi_awready	: in std_logic;
		s_axi_wdata	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		s_axi_wstrb	: out std_logic_vector(C_S_AXI_DATA_WIDTH/8-1 downto 0);
		s_axi_wlast	: out std_logic;
		s_axi_wuser	: out std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
		s_axi_wvalid	: out std_logic;
		s_axi_wready	: in std_logic;
		s_axi_bid	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		s_axi_bresp	: in std_logic_vector(1 downto 0);
		s_axi_buser	: in std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
		s_axi_bvalid	: in std_logic;
		s_axi_bready	: out std_logic;
		s_axi_arid	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		s_axi_araddr	: out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		s_axi_arlen	: out std_logic_vector(7 downto 0);
		s_axi_arsize	: out std_logic_vector(2 downto 0);
		s_axi_arburst	: out std_logic_vector(1 downto 0);
		s_axi_arlock	: out std_logic;
		s_axi_arcache	: out std_logic_vector(3 downto 0);
		s_axi_arprot	: out std_logic_vector(2 downto 0);
		s_axi_arqos	: out std_logic_vector(3 downto 0);
		s_axi_aruser	: out std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
		s_axi_arvalid	: out std_logic;
		s_axi_arready	: in std_logic;
		s_axi_rid	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		s_axi_rdata	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		s_axi_rresp	: in std_logic_vector(1 downto 0);
		s_axi_rlast	: in std_logic;
		s_axi_ruser	: in std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
		s_axi_rvalid	: in std_logic;
		s_axi_rready	: out std_logic
	);
end my_axi4_pattern_generator_v1_0;

architecture arch_imp of my_axi4_pattern_generator_v1_0 is

	-- component declaration
	component my_axi4_pattern_generator_v1_0_S_AXI is
		generic (
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 16;
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		TXN_DONE	: out std_logic;
		ERROR	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWLEN	: out std_logic_vector(7 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WLAST	: out std_logic;
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARLEN	: out std_logic_vector(7 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RLAST	: in std_logic;
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component my_axi4_pattern_generator_v1_0_S_AXI;

begin

-- Instantiation of Axi Bus Interface S_AXI
my_axi4_pattern_generator_v1_0_S_AXI_inst : my_axi4_pattern_generator_v1_0_S_AXI
	generic map (
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_S_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_BURST_LEN	=> C_S_AXI_BURST_LEN,
		C_M_AXI_ID_WIDTH	=> C_S_AXI_ID_WIDTH,
		C_M_AXI_ADDR_WIDTH	=> C_S_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_S_AXI_DATA_WIDTH,
		C_M_AXI_AWUSER_WIDTH	=> C_S_AXI_AWUSER_WIDTH,
		C_M_AXI_ARUSER_WIDTH	=> C_S_AXI_ARUSER_WIDTH,
		C_M_AXI_WUSER_WIDTH	=> C_S_AXI_WUSER_WIDTH,
		C_M_AXI_RUSER_WIDTH	=> C_S_AXI_RUSER_WIDTH,
		C_M_AXI_BUSER_WIDTH	=> C_S_AXI_BUSER_WIDTH
	)
	port map (
		INIT_AXI_TXN	=> s_axi_init_axi_txn,
		TXN_DONE	=> s_axi_txn_done,
		ERROR	=> s_axi_error,
		M_AXI_ACLK	=> s_axi_aclk,
		M_AXI_ARESETN	=> s_axi_aresetn,
		M_AXI_AWID	=> s_axi_awid,
		M_AXI_AWADDR	=> s_axi_awaddr,
		M_AXI_AWLEN	=> s_axi_awlen,
		M_AXI_AWSIZE	=> s_axi_awsize,
		M_AXI_AWBURST	=> s_axi_awburst,
		M_AXI_AWLOCK	=> s_axi_awlock,
		M_AXI_AWCACHE	=> s_axi_awcache,
		M_AXI_AWPROT	=> s_axi_awprot,
		M_AXI_AWQOS	=> s_axi_awqos,
		M_AXI_AWUSER	=> s_axi_awuser,
		M_AXI_AWVALID	=> s_axi_awvalid,
		M_AXI_AWREADY	=> s_axi_awready,
		M_AXI_WDATA	=> s_axi_wdata,
		M_AXI_WSTRB	=> s_axi_wstrb,
		M_AXI_WLAST	=> s_axi_wlast,
		M_AXI_WUSER	=> s_axi_wuser,
		M_AXI_WVALID	=> s_axi_wvalid,
		M_AXI_WREADY	=> s_axi_wready,
		M_AXI_BID	=> s_axi_bid,
		M_AXI_BRESP	=> s_axi_bresp,
		M_AXI_BUSER	=> s_axi_buser,
		M_AXI_BVALID	=> s_axi_bvalid,
		M_AXI_BREADY	=> s_axi_bready,
		M_AXI_ARID	=> s_axi_arid,
		M_AXI_ARADDR	=> s_axi_araddr,
		M_AXI_ARLEN	=> s_axi_arlen,
		M_AXI_ARSIZE	=> s_axi_arsize,
		M_AXI_ARBURST	=> s_axi_arburst,
		M_AXI_ARLOCK	=> s_axi_arlock,
		M_AXI_ARCACHE	=> s_axi_arcache,
		M_AXI_ARPROT	=> s_axi_arprot,
		M_AXI_ARQOS	=> s_axi_arqos,
		M_AXI_ARUSER	=> s_axi_aruser,
		M_AXI_ARVALID	=> s_axi_arvalid,
		M_AXI_ARREADY	=> s_axi_arready,
		M_AXI_RID	=> s_axi_rid,
		M_AXI_RDATA	=> s_axi_rdata,
		M_AXI_RRESP	=> s_axi_rresp,
		M_AXI_RLAST	=> s_axi_rlast,
		M_AXI_RUSER	=> s_axi_ruser,
		M_AXI_RVALID	=> s_axi_rvalid,
		M_AXI_RREADY	=> s_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
