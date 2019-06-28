#!/usr/bin/env bash
# description: setting brew mirrors
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

cd "$(brew --repo)"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

echo "change brew mirrors to tuna successful"
echo "brew update..."

brew update
