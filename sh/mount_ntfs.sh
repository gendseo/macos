#!/usr/bin/env bash
# description: mount all ntfs partition r,w
# author     : gendseo
# create     : 28/06/2019
# update     : 28/06/2019

# This bash will not mount the windows system partition.

# Need to change your windows system partition name to nclude the WIN keyword before you use this bash.
# eg: %WIN% => WIN10 WIN7 WIN1 WIN2 WIN3 1WIN1 2WIN2 WINxxx
# Because it skips the partition name containing the WIN keyword.

# Mounting a single partition is not supported at this time.

# Next improvement method: 
# Determining how a partition is a system partition: 
# Determine if this partition contains the /Windows/System32/cmd.exe and /User folders.

set -e

my_mount() {
  utfs_count=`diskutil list | grep "Microsoft Basic Data" | grep -v "WIN" | wc -l`;
  ntfs_uuid=();

  for (( ntfs_index = 1; ntfs_index <= utfs_count; ntfs_index++ )); do
    c1="diskutil list | grep 'Microsoft Basic Data' | grep -v 'WIN' | awk 'NR==""${ntfs_index}""{print}' | awk '{print \$8}'";
    name=`eval ${c1}`;
    uuid=`diskutil info ${name} | grep "Volume UUID:" | awk '{print $3}'`;
    ntfs_uuid[${ntfs_index}]=${uuid};
    if [[ ${ntfs_index} == 1 ]]; then
      echo "UUID=${uuid} none ntfs rw,auto,nobrowse" > ~/my_mount;
    else
      echo "UUID=${uuid} none ntfs rw,auto,nobrowse" >> ~/my_mount;
    fi
  done

  sudo sh -c "cat ~/my_mount > /etc/fstab";

  for uuid in ${ntfs_uuid[@]}; do
    if [[ `diskutil info ${uuid} | grep "Mounted:" | awk '{print $2}'` == "No" ]]; then
      diskutil mount ${uuid};
    else
      diskutil umount ${uuid};
      diskutil mount ${uuid};
    fi
  done
}

my_umount() {
  utfs_count=`diskutil list | grep "Microsoft Basic Data" | grep -v "WIN" | wc -l`;
  ntfs_uuid=();

  for (( ntfs_index = 1; ntfs_index <= utfs_count; ntfs_index++ )); do
    c1="diskutil list | grep 'Microsoft Basic Data' | grep -v 'WIN' | awk 'NR==""${ntfs_index}""{print}' | awk '{print \$8}'";
    name=`eval ${c1}`;
    uuid=`diskutil info ${name} | grep "Volume UUID:" | awk '{print $3}'`;
    ntfs_uuid[${ntfs_index}]=${uuid};
  done
  
  sudo sh -c "echo > /etc/fstab";

  for uuid in ${ntfs_uuid[@]}; do
    if [[ `diskutil info ${uuid} | grep "Mounted:" | awk '{print $2}'` == "No" ]]; then
      diskutil mount ${uuid};
    else
      diskutil umount ${uuid};
      diskutil mount ${uuid};
    fi
  done
}

echo -e "[M]ount/[u]mount/[q]uit  \c";
read wm;

if [[ ${wm} == "q" ]] || [[ ${wm} == "Q" ]]; then
  echo "exit...";
  exit 0;
fi

if [[ ${wm} == "u" ]] || [[ ${wm} == "U" ]]; then
  my_umount;
else
  my_mount;
fi
