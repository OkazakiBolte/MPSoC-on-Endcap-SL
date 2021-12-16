`timescale 1ns / 1ps

module pma_init_generator #(
    parameter PULSE_WIDTH = 16
)(
    input wire aur_init_clk,
    input wire resetn,
    output reg pma_init_in // input of AXI Chip2Chip
);

    reg [16-1:0] counter;
    always @(posedge aur_init_clk) begin
        if (!resetn) begin
            counter <= {16 {1'b 0}};
            pma_init_in <= 1'b 1;
        end else begin
            if (pma_init_in == 1'b 1) counter <= counter + 1;
            if (counter >= PULSE_WIDTH) pma_init_in <= 1'b 0;
        end
    end

endmodule
