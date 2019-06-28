#!/usr/bin/env bash
# description: change dns
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

_baiduDNS="180.76.76.76";
_114DNS="114.114.114.114";
_TencentDNS="119.29.29.29";

ping_baiduDNS=`ping ${_baiduDNS} -c 1 | awk 'NR=="2"{print}' | awk '{print $7}'`;
ping_baiduDNS=${ping_baiduDNS#*time=};

ping_114DNS=`ping ${_114DNS} -c 1 | awk 'NR=="2"{print}' | awk '{print $7}'`;
ping_114DNS=${ping_114DNS#*time=};

ping_TencentDNS=`ping ${_TencentDNS} -c 1 | awk 'NR=="2"{print}' | awk '{print $7}'`;
ping_TencentDNS=${ping_TencentDNS#*time=};

if [[ ${ping_baiduDNS} < ${ping_114DNS} ]]; then
  if [[ ${ping_baiduDNS} < ${ping_TencentDNS} ]]; then
    dns=`echo nameserver ${_baiduDNS}`;
  else
    dns=`echo nameserver ${_TencentDNS}`;
  fi
else
  if [[ ${ping_114DNS} < ${ping_TencentDNS} ]]; then
    dns=`echo nameserver ${_114DNS}`;
  else
    dns=`echo nameserver ${_TencentDNS}`;
  fi
fi

sudo sh -c "echo ${dns} > /etc/resolv.conf"
