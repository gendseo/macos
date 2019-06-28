#!/usr/bin/env bash
# description: macos setting
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# disable 4 bit password limit
pwpolicy -clearaccountpolicies
passwd

# enable all open app install
sudo spctl --master-disable

# disable ssd fall protection
sudo pmset -a sms 0

# change Apple Font Smoothing
# defaults -currentHost write -globalDomain AppleFontSmoothing -int 3

# close CGFontRenderingFontSmoothingDisabled
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO

# disable hibernate
sudo pmset -a hibernatemode 0

# disable time machine local temp
sudo tmutil disable

# enable ssd trim
sudo trimforce enable
