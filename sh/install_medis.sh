#!/usr/bin/env bash
# description: redis install
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

git clone https://github.com/luin/medis.git ~/dev/redis &&
 cd ~/dev/redis &&
 yarn &&
 yarn build

