#!/usr/bin/env bash
# description: add env to .bashrc and .zshrc
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# Basic
echo '
# Basic
export PATH="~/dev:$PATH"' > ~/.bashrc

# Flutter
echo '
# Flutter
export PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub/"
export FLUTTER_STORAGE_BASE_URL="https://mirrors.tuna.tsinghua.edu.cn/flutter"
export PATH="~/dev/flutter/sdk/bin:$PATH"' >> ~/.bashrc

# NVM
if [ ! -d ~/.nvm ]; then
  mkdir ~/.nvm
fi

echo '
# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"' >> ~/.bashrc

# ANDROID_HOME
echo '
# ANDROID_HOME
export ANDROID_HOME="~/Library/Android/sdk/"' >> ~/.bashrc

# GO PROXY
echo '
# GO PROXY
export GOPROXY=https://goproxy.io' >> ~/.bashrc

# JENV
echo '
# Jenv
export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(jenv init -)"' >> ~/.bashrc

# Logic code is placed on top of this
# This is check ~/.zshrc and does it have 'source ~/.bashrc'
if [[ ! `cat ~/.zshrc | grep 'source ~/.bashrc'` == 'source ~/.bashrc' ]]; then
  echo "source ~/.bashrc" >> ~/.zshrc
fi
