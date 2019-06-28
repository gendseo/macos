#!/usr/bin/env bash
# description: oh my zsh install
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# change to zsh
chsh -s /bin/zsh
