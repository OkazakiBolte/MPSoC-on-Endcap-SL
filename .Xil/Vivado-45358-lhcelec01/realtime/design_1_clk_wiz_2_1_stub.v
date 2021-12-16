// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_2_1(clk100, locked, clk_in1_p, clk_in1_n);
  output clk100;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
