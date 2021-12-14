//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Dec 13 19:04:01 2021
//Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (led,
    sysclk15625_clk_n,
    sysclk15625_clk_p);
  output [1:0]led;
  input sysclk15625_clk_n;
  input sysclk15625_clk_p;

  wire [1:0]led;
  wire sysclk15625_clk_n;
  wire sysclk15625_clk_p;

  design_2 design_2_i
       (.led(led),
        .sysclk15625_clk_n(sysclk15625_clk_n),
        .sysclk15625_clk_p(sysclk15625_clk_p));
endmodule
