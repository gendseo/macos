#!/usr/bin/env bash
# description: get WebDriver imageFrom,version,downloadUrl,os
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

curl -X GET -s https://gfe.nvidia.com/mac-update | sed -n '8,24p' > a

# split the download url
DOWNLOADURL=`cat a | sed -n '3,3p'`
DOWNLOADURL=${DOWNLOADURL#*<string>}
DOWNLOADURL=${DOWNLOADURL%</string>*}

# split the correspond macos version
OSVERSION=`cat a | sed -n '11,11p'`
OSVERSION=${OSVERSION#*<string>}
OSVERSION=${OSVERSION%</string>*}

# webdriver version
WEBDRIVERVERSION=`cat a | sed -n '16,16p'`
WEBDRIVERVERSION=${WEBDRIVERVERSION#*<string>}
WEBDRIVERVERSION=${WEBDRIVERVERSION%</string>*}

rm -rf a

echo 'IMAGEFROM        : "https://gfe.nvidia.com/mac-update"'
echo "WEBDRIVERVERSION : ${WEBDRIVERVERSION}"
echo "OSVERSION        : ${OSVERSION}"
echo "DOWNLOADURL      : ${DOWNLOADURL}"
