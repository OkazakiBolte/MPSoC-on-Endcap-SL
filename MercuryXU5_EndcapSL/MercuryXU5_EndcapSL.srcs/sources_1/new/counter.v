`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/08/2021 05:04:35 PM
// Design Name:
// Module Name: counter
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input clk,
    input resetn,
    output [6-1:0] dout
);

    reg [6-1:0] c;
    assign dout = c;

    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            c <= {6 {1'b 0}};
        end else begin
            c <= c + 1;
            if (c == {6'b 1}) begin
                c <= {6 {1'b 0}};
            end
        end
    end

endmodule
