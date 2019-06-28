#!/usr/bin/env bash
# description: dropbox install with proxy
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# using proxychains4 proxy wget
# there is currently no good way to get the version number
proxychains4 wget -c -t 0 -P https://www.dropbox.com/download\?plat\=mac\&full\=1 --no-check-certificate -O ~/Downloads/dev/Dropbox.dmg
