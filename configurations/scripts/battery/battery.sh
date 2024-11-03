#!/bin/zsh

battery_level=$(cat /sys/class/power_supply/{BAT}/capacity)
charging_status=$(cat /sys/class/power_supply/{ACAD}/online)
get_battery_icon() {
    if [ $1 -lt 10 ]; then
        echo "%{F#E74C3C}󰁺%{F#FFFFFF}"
    elif [ $1 -lt 20 ]; then
        echo "%{F#E74C3C}󰁻%{F#FFFFFF}"
    elif [ $1 -lt 30 ]; then
        echo "%{F#E74C3C}󰁼%{F#FFFFFF}"
    elif [ $1 -lt 40 ]; then
        echo "%{F#F39C12}󰁽%{F#FFFFFF}"
    elif [ $1 -lt 50 ]; then
        echo "%{F#F39C12}󰁾%{F#FFFFFF}"
    elif [ $1 -lt 60 ]; then
        echo "%{F#F39C12}󰁿%{F#FFFFFF}"
    elif [ $1 -lt 70 ]; then
        echo "%{F#2ECC71}󰂀%{F#FFFFFF}"
    elif [ $1 -lt 80 ]; then
        echo "%{F#2ECC71}󰂁%{F#FFFFFF}"
    elif [ $1 -lt 90 ]; then
        echo "%{F#2ECC71}󰂂%{F#FFFFFF}"
    else
        echo "%{F#2ECC71}󰁹%{F#FFFFFF}"
    fi
}
get_charging_icon() {
    if [ $1 -eq 1 ]; then
        echo "%{F#9B59B6}󰂄%{F#FFFFFF}"
    else
        echo "$(get_battery_icon $battery_level)"
    fi
}
echo "$(get_charging_icon $charging_status) $battery_level%"
