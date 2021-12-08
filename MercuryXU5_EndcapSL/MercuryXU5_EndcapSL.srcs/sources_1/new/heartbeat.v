`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 12/08/2021 01:46:27 PM
// Design Name:
// Module Name: heartbeat
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
// LED bit 0 will be dedicated to blink like a heartbeat
// when FPGA firmware is normally programmed
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module heartbeat(
    input clk100, // 100 MHz
    input resetn,
    input [3-1:0] din,
    output [3-1:0] dout
);

    // 100 ms = 0.1 s = 1 / (10^7 Hz)
    parameter DECI_SECOND = 10000000;

    reg heartbeat;
    assign dout[0] = heartbeat;
    assign dout[2:1] = din[2:1];

    reg [32-1:0] counter;
    reg [2-1:0]  phase;

    always @(posedge clk100 or negedge resetn) begin
        if (!resetn) begin
            counter <= {32 {1'b 0}};
            heartbeat <= 1'b 1; // OFF
            phase <= {4'b 0};
        end else begin
            if (phase == 2'b 00) begin
                heartbeat <= 1'b 0; // ON
                counter <= counter + 1;
                if (counter == 2 * DECI_SECOND) begin
                    phase <= 2'b 01;
                    counter <= {32 {1'b 0}};
                end
            end else if (phase == 2'b 01) begin
                heartbeat <= 1'b 1; // OFF
                counter <= counter + 1;
                if (counter == 2 * DECI_SECOND) begin
                    phase <= 2'b 10;
                    counter <= {32 {1'b 0}};
                end
            end else if (phase == 2'b 10) begin
                heartbeat <= 1'b 0; // ON
                counter <= counter + 1;
                if (counter == 2 * DECI_SECOND) begin
                    phase <= 2'b 11;
                    counter <= {32 {1'b 0}};
                end
            end else if (phase == 2'b 11) begin
                heartbeat <= 1'b 1; // OFF
                counter <= counter + 1;
                if (counter == 6 * DECI_SECOND) begin
                    phase <= 2'b 00;
                    counter <= {32 {1'b 0}};
                end
            end
        end
    end

endmodule
