#!/bin/zsh

ip_address=$(/usr/bin/ip addr show {WirelessCard} | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)
if [ -z "$ip_address" ]; then
    echo "%{F#E74C3C}󰖪 %{F#FFFFFF}%{F#BDC3C7}Disconnected%{F#FFFFFF}"
else
    echo "%{F#9B59B6}󰖩 %{F#FFFFFF}$ip_address"
fi
