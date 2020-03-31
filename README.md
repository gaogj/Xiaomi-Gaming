
### 设备：小米游戏本7/8代，系统：Mojave / Catalina


### 1、刷BIOS到0402
为了能正确修改BIOS里面的DVMT值，需要把BIOS刷到0402版本。运行biosDowngrade文件夹下的H2OFFT-Wx64.exe文件即可。
### 2、BIOS设置DVMT值
- 由于小米游戏本默认DVMT（动态显存大小）设为了32M，我们想要驱动核显，支持4k外接显示器HIDPI，就必须修改DVMT值至少为64M。否则安装的时候还会出现卡住或者循环重启的情况。
- 运行DVMT_set.cmd即可修改，值得注意的是解压的时候，bin文件夹里的segwindrvx64.sys文件容易被查毒软件删掉，运行之前请检查此文件是否存在。
### 3、拷贝EFI文件到引导区

- 之前已安装了Mac系统的同学，直接拷贝EFI文件放到Mac系统盘的EFI磁盘区，重启即可
- 新安装的同学，安装前拷贝EFI文件到引导U盘的EFI区

### 4、开启HIDPI
- 在Mac系统中运行HIDPI.sh，根据提示开启HIDPI功能，并重启。
- 开启HIDPI后，启动的时候LOGO会变大，如果介意的强迫症者，可以把EFI里面默认的配置文件换成的config_after_hidpi.plist

### 可以用的功能

- 英特尔显卡
- 触摸板（支持手势）
- 键盘FN键功能（亮度，音量，键盘灯等调整）
- Type-C外接显示器4K输出（支持HIDPI）
- 电池电量
- 有线网卡
- 声卡
- Intel CPU变频
- USB

### 那些不可用：

- Intel wifi
- NVIDIA独立显卡






