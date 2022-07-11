#!/bin/env bash

if [ "$1" == "" ]; then
echo "Please insert the network to be scanned!"
echo "Syntax (scan network): ./ipsweep.sh 192.168.1"

else
for ip in `seq 1 254`; do 
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":"6 &
done
fi
