#!/bin/bash

##############################################################################
#Usage: adbx source_path dest_path
#Source_path: used to be the path of your device. i.e /sdcard/
#destination_path: used to be the path of your external storage/computer storage
#
#Note: (initial commit. these are the things need to be added)
#wildcards are not supported in the path now.
#More checks need to be added with modularizatin
#
################################################################################

#validate correctness in the no of args 

if [ $# -ne 2 ]
then
  echo "usage:adbx source_path dest_path"
  exit -1
else
  echo "source: $1, destination: $2"
fi

#verify whether there's a device connected. assuming that's an android for now.

adb_path=`which adb`

[[ `$adb_path devices|wc -l` -gt 2 ]] && echo "there's a device connected" || (echo "please connect a device" && exit -1) 

#continue if there's a device connected 

$adb_path pull $1 $2 && $adb_path shell rm -rf ${1}* 
