#!/usr/bin/env bash
# description: wps download and install
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# trace the download url and split it
jumpURL=`curl -X GET -s "https://jump.wps.cn/jumper/v1?code=mac_2019"`;
jumpURL=${jumpURL#*<a href=\"};
jumpURL=${jumpURL%\">Found</a>.*};
DOWNLOADURL=${jumpURL};

# split the filename
FILENAME=${jumpURL##*/};

# split the file version
VERSION=${FILENAME%.dmg*};

# output info
echo "URLFROM     : https://jump.wps.cn/jumper/v1?code=mac_2019";
echo "VERSION     : ${VERSION}";
echo "DOWNLOADURL : ${DOWNLOADURL}";

# check file exists
if [[ -f ~/Downloads/dev/${FILENAME} ]]; then
  open ~/Downloads/dev/${FILENAME};
  exit 0;
fi

# get user input
echo -e '\n'"Download this version(${VERSION}) WPS_Office??? [y]es/[N]o/[q]uit  \c\n";
read r;

if [[ ${r} == "q" ]] || [[ ${r} == "Q" ]]; then
  echo "exit...";
  exit 0;
fi

# download
if [[ ${r} == "y" ]] || [[ ${r} == "Y" ]]; then
  wget -c -t 0 -P ~/Downloads/dev ${DOWNLOADURL};
fi

# open
if [[ ${r} == "y" ]] || [[ ${r} == "Y" ]]; then
  open ~/Downloads/dev/${FILENAME};
fi
