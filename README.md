


# MPSoC on Endcap SL

Endcap Sector Logic v1
![width:550px](./figures/IMG_2253.JPG)

- [MPSoC on Endcap SL](#mpsoc-on-endcap-sl)
  - [Environment](#environment)
  - [✅ CentOS 7のブート](#-centos-7のブート)
    - [Card Detectionの問題](#card-detectionの問題)
  - [✅ PS Ethernet (ETH0)](#-ps-ethernet-eth0)
  - [✅ I<sup>2</sup>CでSi5345をコンフィグレーション](#-isup2supcでsi5345をコンフィグレーション)
  - [✅ I<sup>2</sup>Cで温度センサを見る](#-isup2supcで温度センサを見る)
  - [✅ PL Ethernet (ETH1)](#-pl-ethernet-eth1)
  - [⬜️ Card Detectionの確認](#️-card-detectionの確認)
  - [⬜️ JTAG boot](#️-jtag-boot)
  - [⬜️ Xilinx Virtual Cable](#️-xilinx-virtual-cable)
  - [How to set MAC address for PetaLinux OS](#how-to-set-mac-address-for-petalinux-os)

## Environment

- Ubuntu 18.05
  - Vivado 2020.1
  - PetaLinux 2020.1 (It's not supported for Ubuntu 18.05, but worked anyway)
- Mercury XU5 mezzanine card
  - Zynq UltraScale+ MPSoC (5EV)
- Endcap Sector Logic v1 at KEK

## ✅ CentOS 7のブート

- [enclustra/Mercury_XU5_PE1_Reference_Design](https://github.com/enclustra/Mercury_XU5_PE1_Reference_Design.git)を、マニュアルに書いてあるようにVivadoでプロジェクトを開いた

- ブロックデザインのPSをコピーし、新規プロジェクト`MercuryXU5_EndcapSL/`のブロックデザインにペーストした
- PLにGPIO LEDとBRAMを追加した（`MercuryXU5_EndcapSL/design_1.pdf`）
  - Mercury XU5には3-bit LEDが載っているので、幅3のexternal interface portを用意した
  - VivadoのTcl Consoleで、`source MercuryXU5_EndcapSL/design_1.tcl`を実行すれば同じブロックデザインを再現できるはず。
- リファレンスデザインのLEDに関するconstraintsを真似した次の内容の`MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/constrs_1/new/MercuryXU5_EndcapSL.xdc`を用意した

```tcl
# LED
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[0]}];
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[1]}];
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED_N_tri_o[2]}];
```

- Generate Bitstream ---> Export Hardware
  - FPGA bitstreamをincludeする
  - `MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.xsa`ができる
- Export Block Designすると`MercuryXU5_EndcapSL/design_1.tcl`ができる
- ここまで書いて気づいたが、あとは昔[Mercury XU5とPE1の組み合わせでCentOS 7をブートした時](https://gitlab.cern.ch/kokazaki/mercury_xu5_petalinux)と、[Hello ZCU102](https://gitlab.cern.ch/kokazaki/hello-zcu102)と同じなので割愛
- BRAMとLEDを操作するソフトウェアは`apps/devmem.c`と`apps/blink.c`

### Card Detectionの問題

- U-Boot時、mmc1 (SD)がないと言われてmmc0 (eMMC)を見に行きブートがストップ
- SL上のSDカードスロットからは`SDIODET`という信号が出ている
  - この信号線はMercury XU5とのコネクタピンA81に入っているが、これはMPSoCのFPGA Bankに入るもの

    <div align="center">
        <img src="./figures/_2021-11-04_21.20.07.png" width="500px">
    </div>

  - Mercury XU5側でCard Detection (CD)に対応するのは**A98**
    - SL上ではこのピンは何も繋がっていなかったので、U-Bootはこれを見てSDカードが刺さっていないと勘違いしストップしたと考えられる

    <div align="center">
        <img src="./figures/ss3.png" width="500px">
    </div>

  - VivadoプロジェクトのPSの設定で、CDに対応するMIO45を使わないようにしたところ、ブートが成功した


## ✅ PS Ethernet (ETH0)

Mercury XU5 PE1 reference designのblock diagram

<div align="center">
    <img src="./figures/_2021-11-01_14.51.31.png" width="500px">
</div>

- PSの設定をコピーしたので、PSのEthernetはそのまま使えるはず
  - しかし使えなかった
- 調べてみると、EthernetはA, B, C, Dの4線から成り立っているが、SL上ではメザニンとのコネクタで順番が変わっている

    <div align="center">
        <img src="./figures/ss1.png" width="500px">
    </div>

  - [Mercury XU5上のEthernet PHY](https://ww1.microchip.com/downloads/en/DeviceDoc/00002117G.pdf)はauto-negotiationの機能がついていて、A-B, C-D間のスワップは正しくマップされ直すが、このようなスワップには対応していなかった
  - 試しにAとD、BとCをスワップさせたLANケーブルを自作したところ、正しく動作した

## ✅ I<sup>2</sup>CでSi5345をコンフィグレーション

- Endcap SLには1つのI<sup>2</sup>C Multiplexerがあり、それを介してMPSoCはclock generators (SI5345B, SI5344B)、温度センサなどとI<sup>2</sup>C通信をしてコンフィグレーションを行う（[東大M1三島くんのスライド](https://indico.cern.ch/event/1086204/contributions/4566957/attachments/2331858/3975145/mishima_20211021.pdf)）
- 過去に[ZCU102のSi570をMPSoCでコンフィギュレーションした経験](https://gitlab.cern.ch/kokazaki/zcu102-clock-gen.git)をもとに開発を進める

![  width:600px  center ](./figures/_2021-11-17_16.00.12.png)

- このI<sup>2</sup>C MUXはZCU102に載っているものと同じなので、デバイスツリーはそれを真似して編集した（`plnx_MercuryXU5_EndcapSL/project-spec/meta-user/recipes-bsp/device-tree/files/endcap_sl.dtsi`）

```dts
&i2c0 {
    i2c-mux@70 { /* U23 */
        compatible = "nxp,pca9548";
		#address-cells = <1>;
		#size-cells = <0>;
		reg = <0x70>;
        // i2c@0 { // FireFly connectors
        //     #address-cells = <1>;
        //     #size-cells = <0>;
        //     reg = <0>;
        // };
        // i2c@1 {
        //     #address-cells = <1>;
        //     #size-cells = <0>;
        //     reg = <1>;
        // };
        // i2c@2 { /* U24 */
        //     #address-cells = <1>;
        //     #size-cells = <0>;
        //     reg = <2>;
        // };
        i2c@3 {
            #address-cells = <1>;
            #size-cells = <0>;
            reg = <3>;
            si5345b: clock-generator@68 { /* U1 */
                // https://mjmwired.net/kernel/Documentation/devicetree/bindings/clock/silabs,si5341.txt
                compatible = "silabs,si5345";
                reg = <0x68>;
                #clock-cells = <2>;
                clocks = <40000000>; // 40 MHz
                clock-names = "in0";
                out@0 { reg = <0>; };
                out@1 { reg = <1>; };
                out@2 { reg = <2>; };
                out@3 { reg = <3>; };
                out@4 { reg = <4>; };
                out@5 { reg = <5>; };
                out@6 { reg = <6>; };
                out@7 { reg = <7>; };
                out@8 { reg = <8>; };
            };
        };
        i2c@4 {
            #address-cells = <1>;
            #size-cells = <0>;
            reg = <4>;
            si5344b: clock-generator@68 { /* U2 */
                compatible = "silabs,si5344";
                reg = <0x68>;
                #clock-cells = <2>;
                clocks = <40000000>; // need to change here
                clock-names = "in0";
                out@0 { reg = <0>; };
                out@1 { reg = <1>; };
                out@2 { reg = <2>; };
                out@3 { reg = <3>; };
            };
        };
        // i2c@5 {
        //     #address-cells = <1>;
        //     #size-cells = <0>;
        //     reg = <5>;
        // };
        // i2c@6 {
        //     #address-cells = <1>;
        //     #size-cells = <0>;
        //     reg = <6>;
        // };
        /* port 7 unconnected */
    };
};
```

- U-Bootの設定で、I<sup>2</sup>Cドライバを有効にする（デフォルトで有効になっていた）

    ```bash
    cd /path/to/plnx_MercuryXU5_EndcapSL/
    petalinux-config -c u-boot
    ```

    ```
    Device Drivers ---> I2C Support --->
    ```

    <div align="center">
        <img src="./figures/Screenshot_from_2021-11-25_14-58-34.png" width="500px">
    </div>

    ```bash
    petalinux-build
    cd images/linux/
    petalinux-package --boot --fsbl zynqmp_fsbl.elf --pmufw pmufw.elf --fpga system.bit --u-boot --force
    ```

    - こうして`BOOT.BIN`, `image.ub`, `boot.scr`を更新し、SDカード第1パーティションに置いてrebootする。

- CentOS 7 on MPSoCにログインし、[`i2c-tools`](https://i2c.wiki.kernel.org/index.php/I2C_Tools)をインストール

    ```bash
    sudo yum update
    sudo yum install -y i2c-tools
    ```

- SL上でSi5345はI<sup>2</sup>C MUXのポート3と繋がっており、I<sup>2</sup>C slave addressは`0x68`である
- I<sup>2</sup>C MUXのI<sup>2</sup>C slave addressは`0x70`である

- CentOS 7でI<sup>2</sup>Cデバイスを検出
  - ブートログで確認

    ```bash
    (sl-xu5-01) ~ $ dmesg | grep -e i2c -e I2C
    [    2.265262] i2c /dev entries driver
    [    4.005486] i2c i2c-0: Added multiplexed i2c bus 1
    [    4.010372] i2c i2c-0: Added multiplexed i2c bus 2
    [    4.020637] i2c i2c-0: Added multiplexed i2c bus 3
    [    4.033120] i2c i2c-0: Added multiplexed i2c bus 4
    [    4.047282] i2c i2c-0: Added multiplexed i2c bus 5
    [    4.057894] i2c i2c-0: Added multiplexed i2c bus 6
    [    4.068166] i2c i2c-0: Added multiplexed i2c bus 7
    [    4.081302] i2c i2c-0: Added multiplexed i2c bus 8
    [    4.093173] pca954x 0-0070: registered 8 multiplexed busses for I2C switch pca9548
    [    4.104563] cdns-i2c ff020000.i2c: 400 kHz mmio ff020000 irq 32
    ```

  - デバイスファイルがあることを確認
  - `i2cdetect -l`
  - `i2cdetect -y -r <bus>`
  - `i2cdump -y <bus> <address>`


## ✅ I<sup>2</sup>Cで温度センサを見る
## ✅ PL Ethernet (ETH1)

Hiarachy

- `./MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/imports/MercuryXU5_EndcapSL.vhd`
  - `./MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/bd/design_1/design_1.bd`
  - `./MercuryXU5_EndcapSL/MercuryXU5_EndcapSL.srcs/sources_1/imports/src/Enclustra_GMII2RGMII_ZU.edn`

## ⬜️ Card Detectionの確認
## ⬜️ JTAG boot
## ⬜️ Xilinx Virtual Cable


-----


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

