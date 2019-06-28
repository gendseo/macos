#!/usr/bin/env bash
# description: jdk install & upgrade
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# download jdk-8u212 from qiniu cdn
wget -c -t 0 -P ~/Downloads/dev http://gendseo.xiangxing12.com/dmg/jdk-8u212-macosx-x64.dmg

# install
open ~/Downloads/dev/jdk-8u212-macosx-x64.dmg

# install jenv
# control multi version jdk
brew install jenv

# add this jdk source to jenv
jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_212.jdk/Contents/Home/

# global setting for this version of jdk
jenv global oracle64-1.8.0.212
