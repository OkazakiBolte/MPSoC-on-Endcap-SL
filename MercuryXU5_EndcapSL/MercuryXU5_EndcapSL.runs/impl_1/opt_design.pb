
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu5ev2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu5ev2default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 3264.922 ; gain = 0.000 ; free physical = 10634 ; free virtual = 256442default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2%
RGMII_RX_CLK_VIRT2default:default2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL_rgmii_timing.xdc2default:default2
102default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
O
:Ending Cache Timing Information Task | Checksum: a25fa656
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:01 . Memory (MB): peak = 3264.922 ; gain = 0.000 ; free physical = 10612 ; free virtual = 256222default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px? 
?
)Generating Script for core instance : %s 214*	chipscope26
"design_1_i/debug_bridge_1/U0/xsdbm2default:defaultZ16-329h px? 
?
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2
xsdbm_CV2default:defaultZ19-3806h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.032default:default2
3271.9022default:default2
0.0002default:default2
65702default:default2
216572default:defaultZ17-722h px? 
W
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 1ba006d6d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:01 ; elapsed = 00:03:11 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6570 ; free virtual = 216572default:defaulth px? 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px? 
y
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
522default:default2
10172default:defaultZ31-138h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[10].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[10].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[11].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[11].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[12].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[13].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[9].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_B2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
?
|The CLOCK_DOMAINS attribute on the %s cell %s has been changed from %s to %s to match the clocking topology used for the %s.290*opt2
BRAM2default:default2?
?design_1_i/ila_0/U0/ila_core_inst/ila_trace_memory_inst/SUBCORE_RAM_BLK_MEM_1.trace_block_memory/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[9].ram.r/prim_noinit.ram/DEVICE_8SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36_SDP.ram_T2default:default2
INDEPENDENT2default:default2
COMMON2default:default2
BRAM2default:defaultZ31-422h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
;
&Phase 2 Retarget | Checksum: c48208c4
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:04 ; elapsed = 00:03:13 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6540 ; free virtual = 216272default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
622default:default2
4422default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
1742default:defaultZ31-1021h px? 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
v
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
132default:defaultZ31-138h px? 
H
3Phase 3 Constant propagation | Checksum: 159d90d2f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:04 ; elapsed = 00:03:13 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6540 ; free virtual = 216272default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
402default:default2
1322default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
1862default:defaultZ31-1021h px? 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px? 
8
#Phase 4 Sweep | Checksum: d340ea43
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:08 ; elapsed = 00:03:18 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6484 ; free virtual = 215712default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
22default:default2
48872default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
13212default:defaultZ31-1021h px? 
r

Phase %s%s
101*constraints2
5 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
?
PPhase BUFG optimization inserted %s global clock buffer(s) for CLOCK_LOW_FANOUT.553*opt2
02default:defaultZ31-1077h px? 
h
2Optimized connectivity to %s cascaded buffer cells194*opt2
32default:defaultZ31-274h px? 
D
/Phase 5 BUFG optimization | Checksum: cc762052
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:09 ; elapsed = 00:03:18 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6479 ; free virtual = 215662default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
12default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
6 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
N
9Phase 6 Shift Register Optimization | Checksum: cc762052
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:09 ; elapsed = 00:03:19 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6479 ; free virtual = 215662default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
K
6Phase 7 Post Processing Netlist | Checksum: 15503e66c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:10 ; elapsed = 00:03:19 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6500 ; free virtual = 215872default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
12default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
1782default:defaultZ31-1021h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |              62  |             442  |                                            174  |
|  Constant propagation         |              40  |             132  |                                            186  |
|  Sweep                        |               2  |            4887  |                                           1321  |
|  BUFG optimization            |               0  |               1  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               1  |                                            178  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.05 . Memory (MB): peak = 3271.902 ; gain = 0.000 ; free physical = 6504 ; free virtual = 215912default:defaulth px? 
I
4Ending Logic Optimization Task | Checksum: ed041b73
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:10 ; elapsed = 00:03:20 . Memory (MB): peak = 3271.902 ; gain = 6.980 ; free physical = 6499 ; free virtual = 215862default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px? 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2%
RGMII_RX_CLK_VIRT2default:default2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL_rgmii_timing.xdc2default:default2
102default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 


*pwropth px? 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px? 
?
?WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
22default:default2
302default:defaultZ34-162h px? 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px? 
?
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
162default:default2
02default:default2
602default:defaultZ34-65h px? 
M
8Ending PowerOpt Patch Enables Task | Checksum: f87772fa
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.25 ; elapsed = 00:00:00.27 . Memory (MB): peak = 4007.094 ; gain = 0.000 ; free physical = 9126 ; free virtual = 241652default:defaulth px? 
I
4Ending Power Optimization Task | Checksum: f87772fa
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:43 . Memory (MB): peak = 4007.094 ; gain = 735.191 ; free physical = 9159 ; free virtual = 241972default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2%
RGMII_RX_CLK_VIRT2default:default2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL_rgmii_timing.xdc2default:default2
102default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
J
5Ending Logic Optimization Task | Checksum: 205ca5859
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:02 . Memory (MB): peak = 4007.094 ; gain = 0.000 ; free physical = 9115 ; free virtual = 241542default:defaulth px? 
E
0Ending Final Cleanup Task | Checksum: 205ca5859
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:04 . Memory (MB): peak = 4007.094 ; gain = 0.000 ; free physical = 9103 ; free virtual = 241412default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4007.0942default:default2
0.0002default:default2
91002default:default2
241392default:defaultZ17-722h px? 
K
6Ending Netlist Obfuscation Task | Checksum: 205ca5859
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 4007.094 ; gain = 0.000 ; free physical = 9099 ; free virtual = 241382default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1042default:default2
102default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:03:012default:default2
00:04:162default:default2
4007.0942default:default2
742.1722default:default2
90972default:default2
241362default:defaultZ17-722h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2%
RGMII_RX_CLK_VIRT2default:default2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL_rgmii_timing.xdc2default:default2
102default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.402default:default2
00:00:00.122default:default2
4007.0942default:default2
0.0002default:default2
90632default:default2
241082default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
y/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_opt.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:112default:default2
00:00:062default:default2
4007.0942default:default2
0.0002default:default2
93522default:default2
244002default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_drc -file MercuryXU5_EndcapSL_drc_opted.rpt -pb MercuryXU5_EndcapSL_drc_opted.pb -rpx MercuryXU5_EndcapSL_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
~report_drc -file MercuryXU5_EndcapSL_drc_opted.rpt -pb MercuryXU5_EndcapSL_drc_opted.pb -rpx MercuryXU5_EndcapSL_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_drc_opted.rpt/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:092default:default2
00:00:082default:default2
4031.1052default:default2
24.0122default:default2
89212default:default2
239762default:defaultZ17-722h px? 


End Record