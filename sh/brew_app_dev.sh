#!/usr/bin/env bash
# description: brew install dev app
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# xcode tools
xcode-select --install

# proxy
brew cask install shadowsocksx-ng

# proxy terminal
brew install proxychains-ng

if [[ ! `cat /usr/local/etc/proxychains.conf | grep 'http 127.0.0.1 1087'` == 'http 127.0.0.1 1087' ]]; then
  echo 'http 127.0.0.1 1087' >> ~/.zshrc
fi

if [[ ! `cat /usr/local/etc/proxychains.conf | grep 'socks5 127.0.0.1 1086'` == 'socks5 127.0.0.1 1086' ]]; then
  echo 'socks5 127.0.0.1 1086' >> ~/.zshrc
fi

# set git name and email
git config --global user.name "gendseo"
git config --global user.email "aubo@gendseo.top"

# github GUI
brew cask install github

# brew GUI
brew cask install cakebrews

# code language tools
brew cask install iterm2
brew cask install launchrocket
brew install serve
brew install mysql
brew install redis
brew install nvm
brew install go
brew install scala sbt
brew install luajit
brew install neofetch
brew install tomcat
brew install tree
brew install highlight
brew cask install anaconda

# PostgreSQL
brew cask install pgadmin4

# quicklook
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo provisionql quicklookapk quicklook-pat

# web pressure test
brew install jmeter

# md
brew cask install typora

# design
brew cask install sketch
brew cask install adobe-creative-cloud
open /usr/local/Caskroom/adobe-creative-cloud/latest/Creative\ Cloud\ Installer.app
# http://www.hellofont.cn/download

# ideas
brew cask install visual-studio-code
brew cask install android-studio
brew cask install eclipse-jee

# jetbrains's ides
brew cask install intellij-idea
brew cask install pycharm
brew cask install goland
brew cask install phpstorm
brew cask install datagrip
brew cask install webstorm
brew cask install rider
brew cask install clion

# simulators
brew cask install genymotion
# brew cask install nox-app-player

# 虚拟机
brew cask install virtualbox
brew cask install vmware-fusion
# brew cask install vmware-fusion10

# ios's flutter env
sudo xcodebuild -license
brew install --HEAD usbmuxd
brew link usbmuxd
brew install --HEAD libimobiledevice
brew install ideviceinstaller ios-deploy cocoapods
cd ~/.cocoapods/repos
pod repo remove master
git clone https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git master
pod setup
