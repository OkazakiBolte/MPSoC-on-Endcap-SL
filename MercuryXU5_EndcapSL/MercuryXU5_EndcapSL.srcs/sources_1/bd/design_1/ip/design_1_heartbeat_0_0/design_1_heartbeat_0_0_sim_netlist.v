// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Dec  8 15:47:53 2021
// Host        : lhcelec01 running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/ip/design_1_heartbeat_0_0/design_1_heartbeat_0_0_sim_netlist.v
// Design      : design_1_heartbeat_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu5ev-sfvc784-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_heartbeat_0_0,heartbeat,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "heartbeat,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_heartbeat_0_0
   (clk100,
    resetn,
    din,
    dout);
  input clk100;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [2:0]din;
  output [2:0]dout;

  wire clk100;
  wire [2:0]din;
  wire [0:0]\^dout ;
  wire resetn;

  assign dout[2:1] = din[2:1];
  assign dout[0] = \^dout [0];
  design_1_heartbeat_0_0_heartbeat U0
       (.clk100(clk100),
        .dout(\^dout ),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "heartbeat" *) 
module design_1_heartbeat_0_0_heartbeat
   (dout,
    clk100,
    resetn);
  output [0:0]dout;
  input clk100;
  input resetn;

  wire \FSM_sequential_phase[1]_i_10_n_0 ;
  wire \FSM_sequential_phase[1]_i_11_n_0 ;
  wire \FSM_sequential_phase[1]_i_12_n_0 ;
  wire \FSM_sequential_phase[1]_i_13_n_0 ;
  wire \FSM_sequential_phase[1]_i_1_n_0 ;
  wire \FSM_sequential_phase[1]_i_3_n_0 ;
  wire \FSM_sequential_phase[1]_i_4_n_0 ;
  wire \FSM_sequential_phase[1]_i_5_n_0 ;
  wire \FSM_sequential_phase[1]_i_6_n_0 ;
  wire \FSM_sequential_phase[1]_i_7_n_0 ;
  wire \FSM_sequential_phase[1]_i_8_n_0 ;
  wire \FSM_sequential_phase[1]_i_9_n_0 ;
  wire \FSM_sequential_phase_reg_n_0_[0] ;
  wire clk100;
  wire [31:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire [31:1]data0;
  wire [0:0]dout;
  wire heartbeat_i_1_n_0;
  wire [31:0]p_0_out;
  wire [1:0]p_0_out_0;
  wire [1:1]phase__0;
  wire resetn;
  wire [7:6]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_counter0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_phase[0]_i_1 
       (.I0(\FSM_sequential_phase_reg_n_0_[0] ),
        .O(p_0_out_0[0]));
  LUT4 #(
    .INIT(16'h0302)) 
    \FSM_sequential_phase[1]_i_1 
       (.I0(\FSM_sequential_phase[1]_i_3_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(\FSM_sequential_phase[1]_i_5_n_0 ),
        .O(\FSM_sequential_phase[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_phase[1]_i_10 
       (.I0(counter[20]),
        .I1(counter[19]),
        .I2(counter[24]),
        .I3(counter[22]),
        .O(\FSM_sequential_phase[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_phase[1]_i_11 
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(counter[10]),
        .I3(counter[8]),
        .O(\FSM_sequential_phase[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_phase[1]_i_12 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[4]),
        .O(\FSM_sequential_phase[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \FSM_sequential_phase[1]_i_13 
       (.I0(counter[21]),
        .I1(counter[17]),
        .I2(counter[13]),
        .I3(counter[15]),
        .I4(counter[25]),
        .I5(counter[23]),
        .O(\FSM_sequential_phase[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_phase[1]_i_2 
       (.I0(\FSM_sequential_phase_reg_n_0_[0] ),
        .I1(phase__0),
        .O(p_0_out_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_sequential_phase[1]_i_3 
       (.I0(\FSM_sequential_phase_reg_n_0_[0] ),
        .I1(phase__0),
        .I2(counter[9]),
        .I3(counter[11]),
        .I4(\FSM_sequential_phase[1]_i_6_n_0 ),
        .O(\FSM_sequential_phase[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_phase[1]_i_4 
       (.I0(\FSM_sequential_phase[1]_i_7_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_8_n_0 ),
        .I2(\FSM_sequential_phase[1]_i_9_n_0 ),
        .I3(\FSM_sequential_phase[1]_i_10_n_0 ),
        .I4(\FSM_sequential_phase[1]_i_11_n_0 ),
        .I5(\FSM_sequential_phase[1]_i_12_n_0 ),
        .O(\FSM_sequential_phase[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00700000)) 
    \FSM_sequential_phase[1]_i_5 
       (.I0(\FSM_sequential_phase_reg_n_0_[0] ),
        .I1(phase__0),
        .I2(counter[11]),
        .I3(counter[9]),
        .I4(\FSM_sequential_phase[1]_i_13_n_0 ),
        .O(\FSM_sequential_phase[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \FSM_sequential_phase[1]_i_6 
       (.I0(counter[17]),
        .I1(counter[21]),
        .I2(counter[15]),
        .I3(counter[13]),
        .I4(counter[25]),
        .I5(counter[23]),
        .O(\FSM_sequential_phase[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_phase[1]_i_7 
       (.I0(counter[27]),
        .I1(counter[26]),
        .I2(counter[29]),
        .I3(counter[28]),
        .O(\FSM_sequential_phase[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_phase[1]_i_8 
       (.I0(counter[31]),
        .I1(counter[30]),
        .I2(counter[1]),
        .O(\FSM_sequential_phase[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_phase[1]_i_9 
       (.I0(counter[14]),
        .I1(counter[12]),
        .I2(counter[16]),
        .I3(counter[18]),
        .O(\FSM_sequential_phase[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:11,iSTATE0:00,iSTATE1:01,iSTATE2:10," *) 
  FDCE \FSM_sequential_phase_reg[0] 
       (.C(clk100),
        .CE(\FSM_sequential_phase[1]_i_1_n_0 ),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out_0[0]),
        .Q(\FSM_sequential_phase_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:11,iSTATE0:00,iSTATE1:01,iSTATE2:10," *) 
  FDCE \FSM_sequential_phase_reg[1] 
       (.C(clk100),
        .CE(\FSM_sequential_phase[1]_i_1_n_0 ),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out_0[1]),
        .Q(phase__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry
       (.CI(counter[0]),
        .CI_TOP(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3,counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(counter[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3,counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(counter[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3,counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:17]),
        .S(counter[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter0_carry__2_CO_UNCONNECTED[7:6],counter0_carry__2_n_2,counter0_carry__2_n_3,counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__2_O_UNCONNECTED[7],data0[31:25]}),
        .S({1'b0,counter[31:25]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \counter[0]_i_1 
       (.I0(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I1(counter[0]),
        .I2(\counter[31]_i_2_n_0 ),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[10]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[10]),
        .O(p_0_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[11]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[11]),
        .O(p_0_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[12]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[12]),
        .O(p_0_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[13]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[13]),
        .O(p_0_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[14]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[14]),
        .O(p_0_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[15]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[15]),
        .O(p_0_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[16]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[16]),
        .O(p_0_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[17]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[17]),
        .O(p_0_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[18]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[18]),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[19]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[19]),
        .O(p_0_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[1]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[1]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[20]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[20]),
        .O(p_0_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[21]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[21]),
        .O(p_0_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[22]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[22]),
        .O(p_0_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[23]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[23]),
        .O(p_0_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[24]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[24]),
        .O(p_0_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[25]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[25]),
        .O(p_0_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[26]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[26]),
        .O(p_0_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[27]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[27]),
        .O(p_0_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[28]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[28]),
        .O(p_0_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[29]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[29]),
        .O(p_0_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[2]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[2]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[30]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[30]),
        .O(p_0_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[31]),
        .O(p_0_out[31]));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFBFFFFF)) 
    \counter[31]_i_2 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(counter[23]),
        .I2(counter[25]),
        .I3(counter[11]),
        .I4(counter[17]),
        .I5(counter[21]),
        .O(\counter[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFFF7FFFFF)) 
    \counter[31]_i_3 
       (.I0(counter[9]),
        .I1(phase__0),
        .I2(\FSM_sequential_phase_reg_n_0_[0] ),
        .I3(counter[11]),
        .I4(counter[15]),
        .I5(counter[13]),
        .O(\counter[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[3]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[3]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[4]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[4]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[5]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[5]),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[6]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[6]),
        .O(p_0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[7]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[7]),
        .O(p_0_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[8]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[8]),
        .O(p_0_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[9]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\FSM_sequential_phase[1]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(data0[9]),
        .O(p_0_out[9]));
  FDCE \counter_reg[0] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[20]),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[22]),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[23]),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[24]),
        .Q(counter[24]));
  FDCE \counter_reg[25] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[25]),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[26]),
        .Q(counter[26]));
  FDCE \counter_reg[27] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[27]),
        .Q(counter[27]));
  FDCE \counter_reg[28] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[28]),
        .Q(counter[28]));
  FDCE \counter_reg[29] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[29]),
        .Q(counter[29]));
  FDCE \counter_reg[2] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[2]),
        .Q(counter[2]));
  FDCE \counter_reg[30] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[30]),
        .Q(counter[30]));
  FDCE \counter_reg[31] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[31]),
        .Q(counter[31]));
  FDCE \counter_reg[3] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(clk100),
        .CE(1'b1),
        .CLR(heartbeat_i_1_n_0),
        .D(p_0_out[9]),
        .Q(counter[9]));
  LUT1 #(
    .INIT(2'h1)) 
    heartbeat_i_1
       (.I0(resetn),
        .O(heartbeat_i_1_n_0));
  FDPE heartbeat_reg
       (.C(clk100),
        .CE(1'b1),
        .D(\FSM_sequential_phase_reg_n_0_[0] ),
        .PRE(heartbeat_i_1_n_0),
        .Q(dout));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
