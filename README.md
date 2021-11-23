- [enclustra/Mercury_XU5_PE1_Reference_Design](https://github.com/enclustra/Mercury_XU5_PE1_Reference_Design.git)
  - tag `2020.1_v10.0`


- Edit `Mercury_XU5_PE1_Reference_Design/reference_design/scripts/settings.tcl`

```diff
# Modify this variable to select your module
-- if {![info exists module_name]} {set module_name ME-XU5-2CG-1E-D10H}
++ if {![info exists module_name]} {set module_name ME-XU5-5EV-2I-D12E}
if {![info exists baseboard]}   {set baseboard PE1}
```

- (007/525) Register 0x0016: 0x02 written
- (008/525) Register 0x0017: 0xDC written
- (009/525) Register 0x0018: 0xD5 written
- (010/525) Register 0x0019: 0xDD written


## How to set MAC address for PetaLinux OS

- Linuxの方でMACアドレスを変更しても、U-BOOTによって上書きされてしまうらしい。
- http://nahitafu.cocolog-nifty.com/nahitafu/2018/01/zynq.html

- [これ](https://nokixa.hatenablog.com/entry/2019/08/15/141728)を参考にする

```bash
petalinux-config --get-hw-description=../MercuryXU5_EndcapSL/
```

```
-*- Subsystem AUTO Hardware Settings  ---> Ethernet Settings  ---> 
          Primary Ethernet (psu_ethernet_0)  --->                                      │ │  
  │ │          [ ] Randomise MAC address                                                        │ │  
  │ │          (ca:9f:1e:3a:b6:24) Ethernet MAC address                                         │ │  
  │ │          [ ] Obtain IP address automatically                                              │ │  
  │ │          (130.87.242.129) Static IP address                                               │ │  
  │ │          (255.255.252.0) Static IP netmask                                                │ │  
  │ │          (130.87.240.1) Static IP gateway 
```

```bash
petalinux-config -c u-boot
```

```
[*] Networking support  ---> [ ]   Random ethaddr if unset
```
