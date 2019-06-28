#!/usr/bin/env bash
# description: code snippet
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# 创建多维，多级目录
mkdir -p ~/Desktop/testing/{mountNtfs,amdKernelFix,codeSnippet}

# 除去当前文件夹下所有文件/文件夹的@拓展属性
xattr -c ./*
