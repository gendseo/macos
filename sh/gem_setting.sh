#!/usr/bin/env bash
# description: ruby gem setting
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# output gem version
gem -v
# gem update
sudo gem update --system
# change sources
sudo gem sources --remove https://rubygems.org/
sudo gem sources --remove http://rubygems.org/
sudo gem sources --add https://gems.ruby-china.com/
gem sources -l
bash bundle config mirror.https://rubygems.org https://mirrors.tuna.tsinghua.edu.cn/rubygems
# output gem version
gem -v
