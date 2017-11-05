#!/usr/bin/env bash

if [ -f $network.conf ]; then
    touch network.conf

    read -p "Enter SSID: " ssid
    read -s -p "Enter Password: " key
    
    echo "ctrl_interface=/var/run/wpa_supplicant" >> network.conf
    echo "network={" >> network.conf
    echo '    ssid="$ssid"' >> network.conf
    echo '    key_mgmt=FT-PSK' >> network.conf
    echo '    psk="$(wpa_passphrase $ssid $key)"' >> network.conf
    echo "}" >> network.conf
    
cat network.conf
