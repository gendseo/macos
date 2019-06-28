#!/usr/bin/env bash
# description: install brew
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update
brew update

# tap repository
brew cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers
brew tap homebrew/cask-versions
brew tap caskroom/versions
brew tap caskroom/cask
brew tap buo/cask-upgrade

# clean
brew cleanup
