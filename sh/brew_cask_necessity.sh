#!/usr/bin/env bash
# description: brew install dev-at app
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# -=-=-==-=-=- macOS 工具集 -=-=-==-=-=-

# 视频播放
brew cask install iina

# 谷歌浏览器
brew cask install google-chrome

# 火狐浏览器
brew cask install firefox

# 系统监控
# brew cask install istat-menus
brew cask install menumeters

# macOS 自带的搜索加强版
brew cask install alfred

# sizeup 调整窗口位置和大小
brew cask install sizeup

# 截图
brew cask install jietu

# 主题外观颜色切换
brew cask install nightowl

# paper 壁纸
brew cask install paper

# 垃圾清理
brew cask install tencent-lemon
echo 'tencent-lemon 限时内测码: 5F86DDF4B495917F5CD4C159F8B200C9'

# 网页播放控件
brew cask install flash-player flash-ppapi

# 欧陆词典
brew cask install eudic

# 滴答清单 - 用来记录事情，当备忘录用
brew cask install ticktick

# GPU硬解
# brew cask install videoproc

# geekbench
brew cask install geekbench

# paper 壁纸
brew cask install paper

# 压缩/解压
brew cask install keka

# FDM 下载工具
# 和 aria's GUI 试了一圈  发现 FDM 不是一般的猛
brew cask install free-download-manager

# MacOS 右键
# 还没找到

# 搜狗输入法
brew cask install sogouinput
sogouinput_version=$(brew cask info sogouinput | awk 'NR==1{print}' | awk '{print $2}')
sogouinput_name=$(brew cask info sogouinput | awk 'END{print}' | awk '{print $1}')
open /usr/local/Caskroom/sogouinput/${sogouinput_version}/${sogouinput_name}
