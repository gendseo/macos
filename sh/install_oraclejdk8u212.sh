#!/usr/bin/env bash
# description: jdk install & upgrade
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# download jdk-8u212 from qiniu cdn
wget -c -t 0 -P ~/Downloads/dev http://gendseo.xiangxing12.com/dmg/jdk-8u212-macosx-x64.dmg

# install
open ~/Downloads/dev/jdk-8u212-macosx-x64.dmg
