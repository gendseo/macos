#!/usr/bin/env bash
# description: lts-node& npm, nrm, yarn
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# node lts
nvm install lts/dubnium
nvm alias default lts/dubnium

# nrm change mirror to taobao
npm i -g nrm
nrm use taobao

# yarn
npm i -g yarn

# nvm cache clear
nvm cache clear
