#!/usr/bin/env bash
# description: openjdk install & upgrade
# author     : gendseo
# create     : 30/06/2019
# update     : 30/06/2019

brew cask install adoptopenjdk8

brew install jenv

jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/

jenv global openjdk64-1.8.0.212