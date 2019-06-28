#!/usr/bin/env bash
# description: flutter dev sdk install & upgrade
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# sdk install location => ~/dev/flutter/sdk
# sdk env check location => ~/dev/flutter/sdk

# get dev barch flutter version
# output flutter version at the terminal
# echo `echo "$(curl -s https://api.github.com/repos/flutter/flutter/tags | grep name | awk 'NR==1{print}' | awk '{print $2}' | sed 's/"//g')" | sed 's/,//g'`

# output flutter version to variable flutter_version
# flutter_version=`echo "$(curl -s https://api.github.com/repos/flutter/flutter/tags | grep name | awk 'NR==1{print}' | awk '{print $2}' | sed 's/"//g')" | sed 's/,//g'`
# eg: flutter_version => v1.74

# download sdk from https://storage.flutter-io.cn  🎈🎈🎈
# wget -c -t 0 -P ~/dev/flutter/ https://storage.flutter-io.cn/flutter_infra/releases/dev/macos/flutter_macos_${flutter_version}-dev.zip

# download sdk from https://github.com/flutter/flutter.git dev barch  🎈🎈
# git clone -b dev https://github.com/flutter/flutter.git ~/dev/flutter/sdk

# download sdk from https://storage.googleapis.com  🎈🎈🎈🎈
# wget -c -t 0 -P ~/dev/flutter/ https://storage.googleapis.com/flutter_infra/releases/dev/macos/flutter_macos_${flutter_version}-dev.zip

# download sdk from https://mirrors.tuna.tsinghua.edu.cn  🎈🎈🎈🎈🎈
# wget -c -t 0 -P ~/dev/flutter/ https://mirrors.tuna.tsinghua.edu.cn/flutter/flutter_infra/releases/dev/macos/flutter_macos_${flutter_version}-dev.zip

# open -a Simulator

zshrc=`echo ~/.zshrc`
sdk_dir=`echo ~/dev/flutter/sdk`
flutter_version=`echo "$(curl -s https://api.github.com/repos/flutter/flutter/tags | grep name | awk 'NR==1{print}' | awk '{print $2}' | sed 's/"//g')" | sed 's/,//g'`

if [[ -d ${sdk_dir} ]]; then
  echo "flutter sdk location found in ${sdk_dir}";
else if [[ command -v flutter > /dev/null ]]; then
  echo "flutter sdk env found.";
else
  mkdir -p ~/dev/flutter/code
  wget -c -t 0 -P ~/dev/flutter/ https://mirrors.tuna.tsinghua.edu.cn/flutter/flutter_infra/releases/dev/macos/flutter_macos_${flutter_version}-dev.zip
  printf "\nunzipping are being...\n"
  unzip -q -o ~/dev/flutter/flutter_macos_$flutter_version-dev.zip -d ~/dev/flutter/
  printf "\nrenaming are being...\n"
  mv ~/dev/flutter/flutter ~/dev/flutter/sdk
  rm -rf ~/dev/flutter/flutter_macos_$flutter_version-dev.zip
  printf "\nFlutter sdk install complete!!\n\n"
fi
