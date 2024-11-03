#!/bin/zsh

if [ -z "$1" ]; then
    echo "Uso: target {ip}"
    return 1
fi
if [[ ! "$1" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "Error: La IP debe ser una dirección IPv4 válida."
    return 1
fi
formatted_ip="%{F#E74C3C}$1%{F#FFFFFF}"
echo "$formatted_ip" > $HOME/.config/scripts/target/target.txt
