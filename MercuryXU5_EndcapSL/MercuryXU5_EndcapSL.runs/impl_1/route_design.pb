
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?	
?Clock Placer Checks: Sub-optimal placement for a global clock-capable IO pin and BUFG pair.
Resolution: A dedicated routing path between the two can be used if: (a) The global clock-capable IO (GCIO) is placed on a GCIO capable site (b) The BUFG is placed in the same bank of the device as the GCIO pin. Both the above conditions must be met at the same time, else it may lead to longer and less predictable clock insertion delays.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUFCTRL.O) is locked to %s
	%s (BUFGCE.I) is locked to %s
%s*DRC2r
 "\
"ETH1_RXCLK_IBUF_inst/IBUFCTRL_INST	"ETH1_RXCLK_IBUF_inst/IBUFCTRL_INST2default:default2default:default2B
 ",

IOB_X0Y112

IOB_X0Y1122default:default2default:default2j
 "T
i_gmii2rgmii/i_rgmii_rxclk_buf	i_gmii2rgmii/i_rgmii_rxclk_buf2default:default2default:default2N
 "8
BUFGCE_HDIO_X0Y3
BUFGCE_HDIO_X0Y32default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-58h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common22
Nodegraph reading from file.  2default:default2
00:00:042default:default2
00:00:00.782default:default2
4619.5082default:default2
8.0042default:default2
77832default:default2
228802default:defaultZ17-722h px? 
B
-Phase 1 Build RT Design | Checksum: e0cebc2b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:04 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7709 ; free virtual = 228062default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: a618dff9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7712 ; free virtual = 228092default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: a618dff9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7661 ; free virtual = 227582default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: a618dff9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:04 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7661 ; free virtual = 227582default:defaulth px? 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px? 
N
9Phase 2.4 Global Clock Net Routing | Checksum: 2520ead64
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:11 ; elapsed = 00:00:06 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7659 ; free virtual = 227562default:defaulth px? 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.5 Update Timing | Checksum: 20ab0700a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:23 ; elapsed = 00:00:10 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7638 ; free virtual = 227372default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=0.064  | TNS=0.000  | WHS=-2.165 | THS=-119.796|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.6 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.6.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.6.1 Update Timing | Checksum: 2c65745c0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:37 ; elapsed = 00:00:15 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7657 ; free virtual = 227542default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.064  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.6 Update Timing for Bus Skew | Checksum: 27d5cbb85
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:37 ; elapsed = 00:00:15 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7656 ; free virtual = 227542default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1ff253903
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:37 ; elapsed = 00:00:15 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7656 ; free virtual = 227542default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 30496a1b3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:52 ; elapsed = 00:00:20 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7626 ; free virtual = 227242default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.065  | TNS=0.000  | WHS=-0.031 | THS=-0.309 |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: efb0848f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:48 ; elapsed = 00:00:37 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7698 ; free virtual = 228052default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.065  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1ce2af6da
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:51 ; elapsed = 00:00:38 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7704 ; free virtual = 228122default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1ce2af6da
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:51 ; elapsed = 00:00:38 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7704 ; free virtual = 228112default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 2c9ee42bf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:41 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7708 ; free virtual = 228162default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.065  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 2a82b37d8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:41 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7706 ; free virtual = 228142default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 2a82b37d8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:41 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7710 ; free virtual = 228182default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 2a82b37d8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:58 ; elapsed = 00:00:41 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7710 ; free virtual = 228182default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 26cd08229
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:43 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7707 ; free virtual = 228152default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.065  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 2b31d2d34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:43 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7707 ; free virtual = 228152default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 2b31d2d34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:43 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7707 ; free virtual = 228152default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 26ae542b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:43 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7705 ; free virtual = 228132default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 26ae542b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:02 ; elapsed = 00:00:43 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7704 ; free virtual = 228122default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 26ae542b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:03 ; elapsed = 00:00:44 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7705 ; free virtual = 228132default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.065  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 26ae542b6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:04 ; elapsed = 00:00:45 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7708 ; free virtual = 228152default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:04 ; elapsed = 00:00:45 . Memory (MB): peak = 4619.508 ; gain = 8.004 ; free physical = 7773 ; free virtual = 228812default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1722default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:02:122default:default2
00:00:512default:default2
4619.5082default:default2
8.0042default:default2
77732default:default2
228812default:defaultZ17-722h px? 
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
00:00:032default:default2
00:00:00.972default:default2
4619.5082default:default2
0.0002default:default2
76402default:default2
227852default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
|/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_routed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:092default:default2
00:00:062default:default2
4619.5082default:default2
0.0002default:default2
76902default:default2
228222default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_drc -file MercuryXU5_EndcapSL_drc_routed.rpt -pb MercuryXU5_EndcapSL_drc_routed.pb -rpx MercuryXU5_EndcapSL_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file MercuryXU5_EndcapSL_drc_routed.rpt -pb MercuryXU5_EndcapSL_drc_routed.pb -rpx MercuryXU5_EndcapSL_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_drc_routed.rpt?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:112default:default2
00:00:082default:default2
4684.3712default:default2
64.8632default:default2
76552default:default2
227882default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file MercuryXU5_EndcapSL_methodology_drc_routed.rpt -pb MercuryXU5_EndcapSL_methodology_drc_routed.pb -rpx MercuryXU5_EndcapSL_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file MercuryXU5_EndcapSL_methodology_drc_routed.rpt -pb MercuryXU5_EndcapSL_methodology_drc_routed.pb -rpx MercuryXU5_EndcapSL_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
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
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_methodology_drc_routed.rpt?/home/okazaki/projects/mpsoc-on-endcap-sl/MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.runs/impl_1/MercuryXU5_EndcapSL_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:212default:default2
00:00:102default:default2
4684.3712default:default2
0.0002default:default2
75912default:default2
227252default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file MercuryXU5_EndcapSL_power_routed.rpt -pb MercuryXU5_EndcapSL_power_summary_routed.pb -rpx MercuryXU5_EndcapSL_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file MercuryXU5_EndcapSL_power_routed.rpt -pb MercuryXU5_EndcapSL_power_summary_routed.pb -rpx MercuryXU5_EndcapSL_power_routed.rpx2default:defaultZ4-113h px? 
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
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1862default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:182default:default2
00:00:102default:default2
4708.0982default:default2
23.7272default:default2
72302default:default2
223752default:defaultZ17-722h px? 
?
%s4*runtcl2?
sExecuting : report_route_status -file MercuryXU5_EndcapSL_route_status.rpt -pb MercuryXU5_EndcapSL_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file MercuryXU5_EndcapSL_timing_summary_routed.rpt -pb MercuryXU5_EndcapSL_timing_summary_routed.pb -rpx MercuryXU5_EndcapSL_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2p
\Executing : report_incremental_reuse -file MercuryXU5_EndcapSL_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2p
\Executing : report_clock_utilization -file MercuryXU5_EndcapSL_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file MercuryXU5_EndcapSL_bus_skew_routed.rpt -pb MercuryXU5_EndcapSL_bus_skew_routed.pb -rpx MercuryXU5_EndcapSL_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record