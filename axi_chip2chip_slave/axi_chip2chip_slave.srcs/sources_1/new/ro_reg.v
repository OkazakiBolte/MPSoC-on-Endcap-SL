`timescale 1ns / 1ps

module ro_reg #(
    parameter DATA_WIDTH = 32,
    parameter DATA = 0
)(
    input [DATA_WIDTH-1:0] dout
);

    assign dout = DATA;

endmodule
