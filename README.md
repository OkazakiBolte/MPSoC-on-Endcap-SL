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




----



# MPSoC on Endcap SL


- [MPSoC on Endcap SL](#mpsoc-on-endcap-sl)
  - [Environment](#environment)
  - [✅ CentOS 7のブート](#-centos-7のブート)
  - [✅ PS Ethernet (ETH0)](#-ps-ethernet-eth0)
  - [✅ **I<sup>2</sup>CでSi5345をコンフィグレーション**](#-isup2supcでsi5345をコンフィグレーション)
  - [⬜️ I<sup>2</sup>Cで温度センサを見る](#️-isup2supcで温度センサを見る)
  - [✅ **PL Ethernet (ETH1)**](#-pl-ethernet-eth1)
  - [⬜️ Card Detectionの確認](#️-card-detectionの確認)
  - [⬜️ Xilinx Virtual Cable](#️-xilinx-virtual-cable)

## Environment

- Ubuntu 18.05
  - Vivado 2020.1
  - PetaLinux 2020.1 (It's not supported for Ubuntu 18.05, but worked anyway)

## ✅ CentOS 7のブート

- [enclustra/Mercury_XU5_PE1_Reference_Design](https://github.com/enclustra/Mercury_XU5_PE1_Reference_Design.git)を、マニュアルに書いてあるようにVivadoでプロジェクトを開いた



- ブロックデザインのPSをコピーし、新規プロジェクト`MercuryXU5_EndcapSL/`のブロックデザインにペーストした
- PLにGPIO LEDとBRAMを追加した（`MercuryXU5_EndcapSL/design_1.pdf`）
  - Mercury XU5には3-bit LEDが載っているので、幅3のexternal interface portを用意した
  - VivadoのTcl Consoleで、`source MercuryXU5_EndcapSL/design_1.tcl`を実行すれば同じブロックデザインを再現できるはず。
- リファレンスデザインのLEDに関するconstraintsを真似した次の内容の`./MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL.xdc`を用意した

```tcl
# LED
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[0]}];
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[1]}];
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[2]}];
```

- Generate Bitstream ---> Export Hardware
  - FPGA bitstreamをincludeする
  - `./MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.xsa`ができる
- Export Block Designすると`./MercuryXU5_EndcapSL/design_1.tcl`ができる

## ✅ PS Ethernet (ETH0)
## ✅ **I<sup>2</sup>CでSi5345をコンフィグレーション**


```bash
petalinux-config -c u-boot
```

```
Device Drivers ---> I2C Support --->

```

## ⬜️ I<sup>2</sup>Cで温度センサを見る
## ✅ **PL Ethernet (ETH1)**
## ⬜️ Card Detectionの確認
## ⬜️ Xilinx Virtual Cable