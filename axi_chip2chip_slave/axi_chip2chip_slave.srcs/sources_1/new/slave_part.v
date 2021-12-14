`timescale 1ns / 1ps


module slave_part (
    GT_DIFF_REFCLK_clk_n,
    GT_DIFF_REFCLK_clk_p,
    GT_SERIAL_F2Z_txn,
    GT_SERIAL_F2Z_txp,
    GT_SERIAL_Z2F_rxn,
    GT_SERIAL_Z2F_rxp,
    sysclk15625_clk_p,
    sysclk15625_clk_n
//    zynq_jtag_tck,
//    zynq_jtag_tdi,
//    zynq_jtag_tdo,
//    zynq_jtag_tms
    );
  input GT_DIFF_REFCLK_clk_n;
  input GT_DIFF_REFCLK_clk_p;
  output [0:0]GT_SERIAL_F2Z_txn;
  output [0:0]GT_SERIAL_F2Z_txp;
  input [0:0]GT_SERIAL_Z2F_rxn;
  input [0:0]GT_SERIAL_Z2F_rxp;
  input sysclk15625_clk_p;
  input sysclk15625_clk_n;
//  input zynq_jtag_tck;
//  input zynq_jtag_tdi;
//  output zynq_jtag_tdo;
//  input zynq_jtag_tms;

  wire GT_DIFF_REFCLK_clk_n;
  wire GT_DIFF_REFCLK_clk_p;
  wire [0:0]GT_SERIAL_F2Z_txn;
  wire [0:0]GT_SERIAL_F2Z_txp;
  wire [0:0]GT_SERIAL_Z2F_rxn;
  wire [0:0]GT_SERIAL_Z2F_rxp;
  wire m_aclk;
  wire [0:0]m_aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [5:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [5:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [5:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire [3:0]m_axi_wuser;
  wire m_axi_wvalid;
//  wire zynq_jtag_tck;
//  wire zynq_jtag_tdi;
//  wire zynq_jtag_tdo;
//  wire zynq_jtag_tms;

  design_1 design_1_i
       (.GT_DIFF_REFCLK_clk_n(GT_DIFF_REFCLK_clk_n),
        .GT_DIFF_REFCLK_clk_p(GT_DIFF_REFCLK_clk_p),
        .GT_SERIAL_F2Z_txn(GT_SERIAL_F2Z_txn),
        .GT_SERIAL_F2Z_txp(GT_SERIAL_F2Z_txp),
        .GT_SERIAL_Z2F_rxn(GT_SERIAL_Z2F_rxn),
        .GT_SERIAL_Z2F_rxp(GT_SERIAL_Z2F_rxp),
        .m_aclk(m_aclk),
        .m_aresetn(m_aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(m_axi_wuser),
        .m_axi_wvalid(m_axi_wvalid),
        .sysclk15625_clk_n(sysclk15625_clk_n),
        .sysclk15625_clk_p(sysclk15625_clk_p)//,
//        .zynq_jtag_tck(zynq_jtag_tck),
//        .zynq_jtag_tdi(zynq_jtag_tdi),
//        .zynq_jtag_tdo(zynq_jtag_tdo),
//        .zynq_jtag_tms(zynq_jtag_tms)
    );

endmodule
