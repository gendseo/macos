#!/usr/bin/env bash
# description: macos dev setting
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# mkdir new folder in ~/dev/
# general purpose
mkdir -p ~/dev/{github,doc,redis,nginx}
# mobile end
mkdir -p ~/dev/{android,ios,flutter,react-native}
# web
mkdir -p ~/dev/{flask}
# applet
mkdir -p ~/dev/{taro,wepy,cml,mpvue,uni-app}
# language
mkdir -p ~/dev/{java,kotlin,scala,groovy,clojure}
mkdir -p ~/dev/{c,c++,go,rust}
mkdir -p ~/dev/{python,julia,lua,javascript,php}
mkdir -p ~/dev/{sql,bash}
mkdir -p ~/dev/{swift,objective-c}
mkdir -p ~/dev/{c#,perl,ruby,prolog,haskell}
# rear end
mkdir -p ~/dev/{gin,spring,springboot}
# web framework benchmarks
mkdir -p ~/dev/{jmeter}

# force open HIDPI
# 2 => 1 => 2
printf "open 2k hidpi\n2 => 1 => 2\n";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/xzhih/one-key-hidpi/master/hidpi-zh.sh)"

# replace 2700x's CPU display infos
# sudo cp -rf ../file/AppleSystemInfo.strings /System/Library/PrivateFrameworks/AppleSystemInfo.framework/Versions/A/Resources/zh_CN.lproj/AppleSystemInfo.strings

# usb share network
# fix Built-in bluetooth
brew cask install horndis
sudo kextload /Library/Extensions/HoRNDIS.kext

# fix usb
git clone https://github.com/XLNCs/ryzenusbfix.git ~/dev/github/ryzenusbfix &&
 chmod +x ~/dev/github/ryzenusbfix/ryzenusbfix.sh &&
 ~/dev/github/ryzenusbfix/ryzenusbfix.sh &&
 rm -rf ~/dev/github/ryzenusbfix

# wechat application strengthen
git clone https://github.com/Sunnyyoung/WeChatTweak-macOS.git ~/dev/github/WeChatTweak-macOS &&
 cd ~/dev/github/WeChatTweak-macOS &&
 sudo make install &&
 rm -rf ~/dev/github/WeChatTweak-macOS
