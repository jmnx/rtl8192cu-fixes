#!/bin/bash

echo " >> 1/6 << "
sudo apt-get install linux-headers-generic build-essential dkms

echo " >> 2/6 << "
git clone https://github.com/pvaret/rtl8192cu-fixes.git

echo " >> 3/6 << "
sudo dkms add ./rtl8192cu-fixes

echo " >> 4/6 << "
sudo dkms install 8192cu/1.9

echo " >> 5/6 << "
sudo depmod -a

echo " >> 6/6 << "
sudo cp ./rtl8192cu-fixes/blacklist-native-rtl8192.conf /etc/modprobe.d/
