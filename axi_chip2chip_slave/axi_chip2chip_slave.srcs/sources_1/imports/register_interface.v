`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module register_interface #(
        parameter C_AXI_DATA_WIDTH  = 32,
        parameter C_AXI_ID_WIDTH    =  6,
        parameter C_AXI_ADDR_WIDTH  = 32,
        parameter C_AXI_LEN_WIDTH   =  8,
        parameter C_AXI_BRST_WIDTH  =  2,
        parameter C_AXI_STB_WIDTH   =  4,
        parameter C_AXI_SIZE_WIDTH  =  3,
        parameter C_AXI_RESP_WIDTH  =  2,
        parameter C_AXI_WUSER_WIDTH =  4,
        parameter TIMEOUT_LENGTH    = 100
    )(
        /* ---- AXI4 interface with AXI Chip2Chip ---- */
        // clock and resetn
        input wire aclk,
        input wire aresetn,
        /* ---- From AXI Chip2Chip ---- */
        // AR channel
        input  wire arvalid,
        output wire arready,
        input  wire [C_AXI_ADDR_WIDTH-1:0] araddr,
        input  wire [C_AXI_ID_WIDTH  -1:0] arid,
        input  wire [C_AXI_BRST_WIDTH-1:0] arburst,
        input  wire [C_AXI_LEN_WIDTH -1:0] arlen,
        input  wire [C_AXI_SIZE_WIDTH-1:0] arsize,
        // AW channel
        input  wire awvalid,
        input  wire [C_AXI_ID_WIDTH  -1:0] awid,
        input  wire [C_AXI_ADDR_WIDTH-1:0] awaddr,
        output wire awready,
        input  wire [C_AXI_BRST_WIDTH-1:0] awburst,
        input  wire [C_AXI_LEN_WIDTH -1:0] awlen,
        input  wire [C_AXI_SIZE_WIDTH-1:0] awsize,
        // W channel
        input  wire wvalid,
        output wire wready,
        input  wire [C_AXI_DATA_WIDTH -1:0] wdata,
        input  wire [C_AXI_WUSER_WIDTH-1:0] wuser, // no need :(
        input  wire [C_AXI_STB_WIDTH  -1:0] wstrb,
        input  wire wlast,
        /* ---- To AXI Chip2Chip ---- */
        // R channel
        output wire rvalid,
        input  wire rready,
        output wire rlast,
        output wire [C_AXI_DATA_WIDTH-1:0] rdata,
        output wire [C_AXI_ID_WIDTH  -1:0] rid,
        output wire [C_AXI_RESP_WIDTH-1:0] rresp,
        // B channel
        input  wire bready,
        output wire bvalid,
        output wire [C_AXI_ID_WIDTH  -1:0] bid,
        output wire [C_AXI_RESP_WIDTH-1:0] bresp,
        /* ---- Interface with registers ---- */
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_0,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_1,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_2,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_3,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_4,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_5,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_6,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_7,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_8,
        input  wire [C_AXI_DATA_WIDTH-1:0] rdata_9,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_0,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_1,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_2,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_3,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_4,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_5,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_6,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_7,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_8,
        output wire [C_AXI_DATA_WIDTH-1:0] wdata_9,
        output wire [10-1:0] strb
    );

    /* --- States --- */
    parameter ST_RESET = 2'b 00;
    parameter ST_GET_INFO_FROM_C2C  = 2'b 01;
    parameter ST_RDWR_REGISTER = 2'b 10;
    parameter ST_SEND_RESULTS_TO_C2C = 2'b 11;
    reg [2-1:0] r_current_state;
    reg [2-1:0] r_next_state;
    reg [2-1:0] w_current_state;
    reg [2-1:0] w_next_state;

    reg [32-1:0] r_counter;
    reg [32-1:0] w_counter;

    always @(posedge aclk) begin
        if (!aresetn) begin
            r_current_state <= ST_RESET;
            w_current_state <= ST_RESET;
        end else begin
            r_current_state <= r_next_state;
            w_current_state <= w_next_state;
        end
    end

    /* ---- Done booleans ---- */
    reg r_done;
    reg ar_done;
    reg aw_done;
    reg w_done;
    reg b_done;

    /* ---- Reg variables for storing data within this module ---- */
    reg [C_AXI_ADDR_WIDTH-1:0] tmp_read_addr;
    reg [C_AXI_ID_WIDTH-1:0] tmp_read_id;
    reg [C_AXI_ADDR_WIDTH-1:0] tmp_write_addr;
    reg [C_AXI_DATA_WIDTH-1:0] tmp_write_data;
    reg [C_AXI_ID_WIDTH-1:0] tmp_write_id;

    /* ==== Read state machine ==== */

    /* ---- reg variables for output into AXI Chip2Chip ---- */
    reg arready_reg;
    reg rvalid_reg;
    reg rlast_reg;
    reg [C_AXI_DATA_WIDTH-1:0] rdata_reg;
    reg [C_AXI_ID_WIDTH  -1:0] rid_reg;
    reg [C_AXI_RESP_WIDTH-1:0] rresp_reg;
    assign arready = arready_reg;
    assign rvalid  = rvalid_reg;
    assign rlast   = rlast_reg;
    assign rdata   = rdata_reg;
    assign rid     = rid_reg;
    assign rresp   = rresp_reg;

    /* ---- Main body of the state machine ---- */
    always @(posedge aclk) begin
        case (r_current_state)
            ST_RESET: begin
                r_next_state  <= ST_GET_INFO_FROM_C2C;
                arready_reg   <= 1'b 0;
                rvalid_reg    <= 1'b 0;
                rlast_reg     <= 1'b 0;
                rdata_reg     <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                rid_reg       <= { C_AXI_ID_WIDTH { 1'b 0 } };
                rresp_reg     <= { C_AXI_RESP_WIDTH { 1'b 0 } }; // OKAY
                tmp_read_addr <= { C_AXI_ADDR_WIDTH { 1'b 0 } };
                tmp_read_id   <= { C_AXI_ID_WIDTH { 1'b 0 } };
                ar_done       <= 1'b 0;
                r_done        <= 1'b 0;
                r_counter     <= { 32 { 1'b 0 } };
            end
            ST_GET_INFO_FROM_C2C: begin
                // r_counter <= r_counter + 1;
                //if (r_counter >= TIMEOUT_LENGTH ) r_next_state <= ST_RESET;
                if (arvalid) begin
                    arready_reg <= 1'b 1;
                    ar_done <= 1'b 1;
                    tmp_read_addr <= araddr;
                    tmp_read_id   <= arid;
                end
                if (ar_done && ~arvalid) begin
                    r_counter <= { 32 { 1'b 0 } };
                    arready_reg <= 1'b 0;
                    r_next_state <= ST_RDWR_REGISTER;
                end
            end
            ST_RDWR_REGISTER: begin
                rid_reg <= tmp_read_id;
                rlast_reg <= 1'b 1;
                case (tmp_read_addr)
                    0: rdata_reg <= rdata_0;
                    1: rdata_reg <= rdata_1;
                    2: rdata_reg <= rdata_2;
                    3: rdata_reg <= rdata_3;
                    4: rdata_reg <= rdata_4;
                    5: rdata_reg <= rdata_5;
                    6: rdata_reg <= rdata_6;
                    7: rdata_reg <= rdata_7;
                    8: rdata_reg <= rdata_8;
                    9: rdata_reg <= rdata_9;
                    default: rresp_reg <= 2'b 10; // SLVERR
                endcase
                r_next_state <= ST_SEND_RESULTS_TO_C2C;
            end
            ST_SEND_RESULTS_TO_C2C: begin
                r_counter <= r_counter + 1;
                if (r_counter >= TIMEOUT_LENGTH ) r_next_state <= ST_RESET;
                if (!r_done) rvalid_reg <= 1'b 1;
                if (rvalid_reg && rready) r_done <= 1'b 1;
                if (r_done) begin
                    rvalid_reg <= 1'b 0;
                    rlast_reg <= 1'b 0;
                    r_next_state <= ST_RESET;
                end
            end
        endcase
    end

    /* ==== Write state machine ==== */

    /* ---- reg variables for output into AXI Chip2Chip ---- */
    reg awready_reg;
    reg wready_reg;
    reg bvalid_reg;
    reg [C_AXI_ID_WIDTH  -1:0] bid_reg;
    reg [C_AXI_RESP_WIDTH-1:0] bresp_reg;
    assign awready = awready_reg;
    assign wready  = wready_reg;
    assign bvalid  = bvalid_reg;
    assign bid     = bid_reg;
    assign bresp   = bresp_reg;
    /* ---- reg variables for output into target registers ---- */
    reg [C_AXI_DATA_WIDTH-1:0] wdata_0_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_1_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_2_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_3_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_4_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_5_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_6_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_7_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_8_reg;
    reg [C_AXI_DATA_WIDTH-1:0] wdata_9_reg;
    reg [10-1:0] strb_reg;
    assign wdata_0 = wdata_0_reg;
    assign wdata_1 = wdata_1_reg;
    assign wdata_2 = wdata_2_reg;
    assign wdata_3 = wdata_3_reg;
    assign wdata_4 = wdata_4_reg;
    assign wdata_5 = wdata_5_reg;
    assign wdata_6 = wdata_6_reg;
    assign wdata_7 = wdata_7_reg;
    assign wdata_8 = wdata_8_reg;
    assign wdata_9 = wdata_9_reg;
    assign strb = strb_reg;

    integer index;

    always @(posedge aclk) begin
        case (w_current_state)
            ST_RESET: begin
                w_next_state   <= ST_GET_INFO_FROM_C2C;
                awready_reg    <= 1'b 0;
                wready_reg     <= 1'b 0;
                bvalid_reg     <= 1'b 0;
                bid_reg        <= { C_AXI_ID_WIDTH { 1'b 0 } };
                bresp_reg      <= { C_AXI_RESP_WIDTH { 1'b 0 } };
                tmp_write_data <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                tmp_write_addr <= { C_AXI_ADDR_WIDTH { 1'b 0 } };
                tmp_write_id   <= { C_AXI_ID_WIDTH { 1'b 0 } };
                wdata_0_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_1_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_2_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_3_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_4_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_5_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_6_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_7_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_8_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                wdata_9_reg    <= { C_AXI_DATA_WIDTH { 1'b 0 } };
                strb_reg       <= { 10 { 1'b 0 } };
                aw_done        <= 1'b 0;
                w_done         <= 1'b 0;
                b_done         <= 1'b 0;
                w_counter <= { 32 { 1'b 0 } };
            end // ST_RESET
            ST_GET_INFO_FROM_C2C: begin
                // w_counter <= w_counter + 1;
                // if (w_counter >= TIMEOUT_LENGTH ) w_next_state <= ST_RESET;
                if (awvalid) begin
                    awready_reg <= 1'b 1;
                    aw_done <= 1'b 1;
                    tmp_write_addr <= awaddr;
                    tmp_write_id <= awid;
                end
                if (wvalid) begin
                    wready_reg <= 1'b 1;
                    /* ----
                    The WSTRB[n:0] signals when HIGH, specify the byte lanes of
                    the data bus that contain valid information. There is one
                    write strobe for each eight bits of the write data bus,
                    therefore WSTRB[n] corresponds to WDATA[(8n)+7: (8n)].
                    (From AXI4 specification)
                    ---- */
                    for (
                        index = 0;
                        index <= C_AXI_STB_WIDTH - 1;
                        index = index + 1
                    ) begin
                        if (wstrb[index]) begin
                            tmp_write_data[(8*index) +: 8]
                            <= wdata[(8*index) +: 8];
                        end else begin
                            tmp_write_data[(8*index) +: 8] <= { 8 { 1'b 0 } };
                        end
                    end // for
                    /* ---- */
                    if (wlast) w_done <= 1'b 1;
                end // if (wready_reg && wvalid_reg)
                if ((aw_done && ~awvalid) && (w_done && ~wvalid)) begin
                    w_counter <= { 32 { 1'b 0 } };
                    awready_reg <= 1'b 0;
                    wready_reg  <= 1'b 0;
                    w_next_state <= ST_RDWR_REGISTER;
                end
            end // ST_GET_INFO_FROM_C2C
            ST_RDWR_REGISTER: begin
                bid_reg <= tmp_write_id;
                strb_reg[tmp_write_addr] <= 1'b 1;
                case (tmp_write_addr)
                    0: wdata_0_reg <= tmp_write_data;
                    // 1: wdata_1_reg <= tmp_write_data; // Read-only for register 1
                    2: wdata_2_reg <= tmp_write_data;
                    3: wdata_3_reg <= tmp_write_data;
                    4: wdata_4_reg <= tmp_write_data;
                    5: wdata_5_reg <= tmp_write_data;
                    6: wdata_6_reg <= tmp_write_data;
                    7: wdata_7_reg <= tmp_write_data;
                    8: wdata_8_reg <= tmp_write_data;
                    // 9: wdata_9_reg <= tmp_write_data;
                    default: bresp_reg <= 2'b 10; // SLVERR
                endcase
                w_next_state <= ST_SEND_RESULTS_TO_C2C;
            end // ST_RDWR_REGISTER
            ST_SEND_RESULTS_TO_C2C: begin
                w_counter <= w_counter + 1;
                if (w_counter >= TIMEOUT_LENGTH ) w_next_state <= ST_RESET;
                strb_reg <= { 10 { 1'b 0 } };
                if (!b_done && aw_done && w_done) bvalid_reg <= 1'b 1;
                if (bvalid_reg && bready) b_done <= 1'b 1;
                if (b_done) begin
                    bvalid_reg <= 1'b 0;
                    w_next_state <= ST_RESET;
                end
            end // ST_SEND_RESULTS_TO_C2C
        endcase // case (w_current_state)
    end
endmodule // register_interface