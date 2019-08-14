#!/bin/bash
#
# Source: https://howtoraspberrypi.com/create-a-wi-fi-hotspot-in-less-than-10-minutes-with-pi-raspberry/
#

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.sav
cp /dev/null /etc/wpa_supplicant/wpa_supplicant.conf

echo 'ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev' >> /etc/wpa_supplicant/wpa_supplicant.conf
echo 'update_config=1' >> /etc/wpa_supplicant/wpa_supplicant.conf

echo 'Now run: wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap'
