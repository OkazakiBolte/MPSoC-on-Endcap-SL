`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2021 06:11:14 PM
// Design Name: 
// Module Name: led_controller
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


module led_controller(
    input clk,
    input locked,
    output [2-1:0] led,
    input reset_button
);

    reg [2-1:0] led_reg;
    assign led = led_reg;
    reg [32-1:0] counter = {32 {1'b 0}};
    
    always @(posedge clk or negedge reset_button) begin
        if (!locked) begin
            counter <= {32 {1'b 0}};
        end else begin
            if (!reset_button) begin
                led_reg <= {2 {1'b 00}};
            end else begin
                counter <= counter + 1;
                led_reg <= counter[27:26];
                if (counter == {32 {1'b 1}}) begin
                    counter <= {32 {1'b 0}};
                end
            end
        end
    end

endmodule
