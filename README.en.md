# 小米游戏本黑苹果EFI和Bios配置

#### Description
小米游戏本黑苹果EFI和Bios配置，Hackintosh EFI & Bios Profile for XiaoMiGaming Laptop 8th (i7-8750H)

#### Equipment: millet game book 7 / 8 generation, system: Mojave / Catalina

#### 1. Brush BIOS to 0402

In order to modify the DVMT value in the BIOS correctly, you need to brush the BIOS to version 0402. Run the file h2offt-wx64.exe under the biosdowngrade folder.



#### 2. BIOS setting DVMT value

Since the default DVMT (dynamic display memory size) of millet game is set to 32m, if we want to drive the core display and support 4K external display hidpi, we must modify the DVMT value to at least 64M. Otherwise, there will be stuck or cycle restart during installation.

Run dvmt_set.cmd to modify. It is worth noting that the segwindrvx64.sys file in Bin folder is easy to be deleted by virus checking software when decompressing. Please check whether the file exists before running.

#### 3. Copy EFI file to boot area

For students who have installed MAC system before, copy EFI files directly to EFI disk area of MAC system disk, and restart

For the newly installed students, copy the EFI file to the EFI area of the boot U disk before installation

#### 4. Turn on hidpi

Run hidpi.sh in MAC system, turn on hidpi function according to the prompt, and restart.

After hidpi is turned on, the logo will become larger when it is started. If you are worried about obsessive-compulsive patients, you can change the default configuration file in EFI to config.after.plist

#### Available

- Intel Graphics

- Touch pad (support gesture)

- Function of keyboard FN key (brightness, volume, keyboard light, etc.)

- Type-C external display 4K output (support hidpi)

- battery level

- Wired NIC

- sound card

- Intel CPU frequency conversion

- USB

#### Those are not available:

- Intel WiFi

- NVIDIA independent graphics card