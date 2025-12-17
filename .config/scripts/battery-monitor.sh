#!/bin/bash

BATTERY_PATH="/sys/class/power_supply/BAT0"
CAPACITY=$(cat "$BATTERY_PATH/capacity")
STATUS=$(cat "$BATTERY_PATH/status")

if [[ "$CAPACITY" -le 20 && "$CAPACITY" -gt 10 && "$STATUS" == "Discharging" ]]; then
    notify-send "Low Battery" "Battery is at ${CAPACITY}%" -u normal
elif [[ "$CAPACITY" -le 10 && "$STATUS" == "Discharging" ]]; then
    notify-send "Very low Battery!" "Battery is at ${CAPACITY}%" -u critical
fi
