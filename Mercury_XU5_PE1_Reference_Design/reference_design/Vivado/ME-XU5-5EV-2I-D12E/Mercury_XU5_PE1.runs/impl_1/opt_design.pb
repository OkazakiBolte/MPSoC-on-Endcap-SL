
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
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 3709.105 ; gain = 0.000 ; free physical = 15767 ; free virtual = 421982default:defaulth px? 
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
?/home/okazaki/projects/mpsoc-on-endcap-sl/Mercury_XU5_PE1_Reference_Design/reference_design/src/Mercury_XU5_gmii2rgmii_timing.xdc2default:default2
242default:default8@Z18-483h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 1583fb186
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 3709.105 ; gain = 0.000 ; free physical = 15737 ; free virtual = 421692default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Generate And Synthesize MIG Cores2default:defaultZ18-101h px? 
?
<Added synthesis output to IP cache for IP %s, cache-ID = %s
2511*coregen2*
Mercury_XU5_ddr4_0_phy2default:default2$
ecbd607af5cb87002default:defaultZ19-5647h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3869.6722default:default2
0.0002default:default2
155272default:default2
419662default:defaultZ17-722h px? 
U
@Phase 1 Generate And Synthesize MIG Cores | Checksum: 212884db7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:33 ; elapsed = 00:01:56 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15527 ; free virtual = 419662default:defaulth px? 
?

Phase %s%s
101*constraints2
2 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px? 
k
)Generating Script for core instance : %s 214*	chipscope2
dbg_hub2default:defaultZ16-329h px? 
?
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2

dbg_hub_CV2default:defaultZ19-3806h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:00.032default:default2
3869.6722default:default2
0.0002default:default2
154962default:default2
419582default:defaultZ17-722h px? 
W
BPhase 2 Generate And Synthesize Debug Cores | Checksum: 22dcebb20
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:32 ; elapsed = 00:05:02 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15496 ; free virtual = 419582default:defaulth px? 
i

Phase %s%s
101*constraints2
3 2default:default2
Retarget2default:defaultZ18-101h px? 
x
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
312default:default2
3352default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
<
'Phase 3 Retarget | Checksum: 18c754485
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:35 ; elapsed = 00:05:04 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15519 ; free virtual = 419812default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
1342default:default2
5162default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
2902default:defaultZ31-1021h px? 
u

Phase %s%s
101*constraints2
4 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
42default:default2
42default:defaultZ31-138h px? 
H
3Phase 4 Constant propagation | Checksum: 20df669b9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:35 ; elapsed = 00:05:04 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15519 ; free virtual = 419812default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
1012default:default2
2902default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
3122default:defaultZ31-1021h px? 
f

Phase %s%s
101*constraints2
5 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 5 Sweep | Checksum: 21067fd50
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:39 ; elapsed = 00:05:08 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15512 ; free virtual = 419752default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
22default:default2
15642default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
22682default:defaultZ31-1021h px? 
r

Phase %s%s
101*constraints2
6 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
?
PPhase BUFG optimization inserted %s global clock buffer(s) for CLOCK_LOW_FANOUT.553*opt2
02default:defaultZ31-1077h px? 
h
2Optimized connectivity to %s cascaded buffer cells194*opt2
32default:defaultZ31-274h px? 
E
0Phase 6 BUFG optimization | Checksum: 1d0a44d8e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:40 ; elapsed = 00:05:09 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15514 ; free virtual = 419772default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
12default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
7 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
O
:Phase 7 Shift Register Optimization | Checksum: 1d0a44d8e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:40 ; elapsed = 00:05:09 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15514 ; free virtual = 419772default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
8 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
K
6Phase 8 Post Processing Netlist | Checksum: 1efe89f10
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:41 ; elapsed = 00:05:10 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15515 ; free virtual = 419772default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
22default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
3962default:defaultZ31-1021h px? 
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
?|  Retarget                     |             134  |             516  |                                            290  |
|  Constant propagation         |             101  |             290  |                                            312  |
|  Sweep                        |               2  |            1564  |                                           2268  |
|  BUFG optimization            |               0  |               1  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               2  |                                            396  |
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
?Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.06 . Memory (MB): peak = 3869.672 ; gain = 0.000 ; free physical = 15520 ; free virtual = 419822default:defaulth px? 
I
4Ending Logic Optimization Task | Checksum: f8c3cbcf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:41 ; elapsed = 00:05:10 . Memory (MB): peak = 3869.672 ; gain = 112.684 ; free physical = 15520 ; free virtual = 419822default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
?
$Power model is not available for %s
23*power2?
xiphy_riu_or	?Mercury_XU5_i/ddr4/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or2default:default8Z33-23h px? 
?
$Power model is not available for %s
23*power2?
genVref.u_hpio_vref	tMercury_XU5_i/ddr4/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr_iob/genByte[0].u_ddr_iob_byte/genVref.u_hpio_vref2default:default8Z33-23h px? 
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
?/home/okazaki/projects/mpsoc-on-endcap-sl/Mercury_XU5_PE1_Reference_Design/reference_design/src/Mercury_XU5_gmii2rgmii_timing.xdc2default:default2
242default:default8@Z18-483h px? 
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
02default:default2
262default:defaultZ34-162h px? 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px? 
?
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02default:default2
02default:default2
522default:defaultZ34-65h px? 
M
8Ending PowerOpt Patch Enables Task | Checksum: f8c3cbcf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.23 ; elapsed = 00:00:00.26 . Memory (MB): peak = 4223.453 ; gain = 0.000 ; free physical = 15462 ; free virtual = 419242default:defaulth px? 
I
4Ending Power Optimization Task | Checksum: f8c3cbcf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:17 ; elapsed = 00:00:09 . Memory (MB): peak = 4223.453 ; gain = 353.781 ; free physical = 15496 ; free virtual = 419582default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
D
/Ending Final Cleanup Task | Checksum: f8c3cbcf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 4223.453 ; gain = 0.000 ; free physical = 15496 ; free virtual = 419582default:defaulth px? 
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
00:00:00.012default:default2
4223.4532default:default2
0.0002default:default2
154962default:default2
419582default:defaultZ17-722h px? 
J
5Ending Netlist Obfuscation Task | Checksum: f8c3cbcf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 4223.453 ; gain = 0.000 ; free physical = 15496 ; free virtual = 419582default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
712default:default2
202default:default2
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
00:04:122default:default2
00:05:302default:default2
4223.4532default:default2
514.3482default:default2
155002default:default2
419622default:defaultZ17-722h px? 
?
?%s: no pin(s)/port(s)/net(s) specified as objects, only virtual clock '%s' will be created. If you don't want this, please specify pin(s)/ports(s)/net(s) as objects to the command.
483*constraints2 
create_clock2default:default2%
RGMII_RX_CLK_VIRT2default:default2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/Mercury_XU5_PE1_Reference_Design/reference_design/src/Mercury_XU5_gmii2rgmii_timing.xdc2default:default2
242default:default8@Z18-483h px? 
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
00:00:00.102default:default2
4223.4532default:default2
0.0002default:default2
154612default:default2
419322default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/Mercury_XU5_PE1_Reference_Design/reference_design/Vivado/ME-XU5-5EV-2I-D12E/Mercury_XU5_PE1.runs/impl_1/Mercury_XU5_PE1_opt.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:152default:default2
00:00:102default:default2
4223.4532default:default2
0.0002default:default2
154692default:default2
419432default:defaultZ17-722h px? 
?
%s4*runtcl2?
Executing : report_drc -file Mercury_XU5_PE1_drc_opted.rpt -pb Mercury_XU5_PE1_drc_opted.pb -rpx Mercury_XU5_PE1_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
rreport_drc -file Mercury_XU5_PE1_drc_opted.rpt -pb Mercury_XU5_PE1_drc_opted.pb -rpx Mercury_XU5_PE1_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/Mercury_XU5_PE1_Reference_Design/reference_design/Vivado/ME-XU5-5EV-2I-D12E/Mercury_XU5_PE1.runs/impl_1/Mercury_XU5_PE1_drc_opted.rpt?/home/okazaki/projects/mpsoc-on-endcap-sl/Mercury_XU5_PE1_Reference_Design/reference_design/Vivado/ME-XU5-5EV-2I-D12E/Mercury_XU5_PE1.runs/impl_1/Mercury_XU5_PE1_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:102default:default2
00:00:082default:default2
4255.4692default:default2
32.0162default:default2
154532default:default2
419272default:defaultZ17-722h px? 


End Record