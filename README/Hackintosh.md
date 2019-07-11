# 黑苹果

## 驱动信息

- [Lilu - 1.3.7](https://github.com/acidanthera/Lilu/releases) - 内核修补
- [WhateverGreen - 1.3.0](https://github.com/acidanthera/WhateverGreen/releases) - GPU 补丁 `Lilu >= 1.2.5`
- [VirtualSMC - 1.0.6](https://github.com/acidanthera/VirtualSMC/releases) - 更好的 SMC 仿真器 `Lilu >= Latest`
- [SMCProcessor - 1.0.6](#%E5%8D%95%E4%B8%AA%E9%A9%B1%E5%8A%A8%E4%BF%A1%E6%81%AF)
- [CPUFriend - 1.1.8](https://github.com/acidanthera/CPUFriend/releases) - 动态电源管理 `Lilu >= Latest`
- [AirportBrcmFixup - 2.0.2](https://github.com/acidanthera/AirportBrcmFixup/releases) - Airport Broadcom Wi-Fi 补丁 `Lilu >= 1.2.4`
- [USBInjectAll - 20181108(0.7.1)](https://bitbucket.org/RehabMan/os-x-usb-inject-all/downloads/) - USB注入
- [AppleALC - 1.3.9](https://github.com/acidanthera/AppleALC/releases) - 声卡仿冒
- [HibernationFixup - 1.2.6](https://github.com/acidanthera/HibernationFixup/releases) - 睡眠修复
- [VoodooPS2Controller - 2.0.1.1](https://github.com/acidanthera/VoodooPS2/releases) - 触控板驱动
- [ACPIBatteryManager - 20181005(1.90.1)](https://bitbucket.org/RehabMan/os-x-acpi-battery-driver/downloads/) - 电池电量显示驱动
- [VoodooTSCSync - 20181019(1.5.0)](https://bitbucket.org/RehabMan/VoodooTSCSync/downloads/) - 时间，音频，视频同步
- [VoodooHDA - 2.9.2](https://sourceforge.net/projects/voodoohda/files/) - 万能声卡驱动
- [FakeSMC - 20180915](https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/) - SMC 仿真器

## 资源下载

- [RehabMan](https://bitbucket.org/RehabMan/)
- [acidanthera's github](https://github.com/acidanthera)

## 工具

- [MaciASL - 1.5.5](https://github.com/acidanthera/MaciASL/releases)
- [IORegistryExplorer - 3.0.2](https://mac.softpedia.com/get/System-Utilities/IORegistryExplorer.shtml)

## 选购指南

- [macOS Mojave 台式机黑苹果硬件选购指南](http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1799271)

## 参考资源

- [MSI B360 Mortar macOS Mojave 黑苹果EFI](https://sleele.com/2018/12/01/hackintosh/)

## 一些经验

### MacOS Mojave预览打不开或卡死

Use `Clover Configurator` change `SMBIOS` to `MacPro 6,1`

### 同步TSC，改善时间，音频和视频的同步

使用终端运行以下命令并记下输出结果

``` bash
echo $(($(sysctl -n hw.ncpu) - 1))
```

修改 `VoodooTSCSync.kex` / `Contents` / `Info.plist` 中 `#CORE` 为得到的结果，保存更改，并将 kext 添加到 `EFI` / `kexts` / `Other`

### 修复多显示器设置

1. 添加启动参数 WhateverGreen > `-wegoff`
2. 勾选 Graphics / `RadeonDeInit`
