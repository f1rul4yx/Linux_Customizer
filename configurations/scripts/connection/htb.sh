#!/bin/zsh

if /usr/bin/ip link show {HTBNetworkCard} > /dev/null 2>&1; then
    ip_address=$(/usr/bin/ip addr show {HTBNetworkCard} | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)
else
    ip_address=""
fi
if [ -z "$ip_address" ]; then
    echo "%{F#2ECC71}󰆧 %{F#FFFFFF}%{F#BDC3C7}Disconnected%{F#FFFFFF}"
else
    echo "%{F#2ECC71}󰆧 %{F#FFFFFF}%{F#2ECC71}$ip_address%{F#FFFFFF}"
fi
