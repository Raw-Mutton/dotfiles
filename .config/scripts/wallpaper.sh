#!/bin/bash

random_wallpaper="$(find "$HOME/.config/wallpapers/" -type f \( -iname '*.jpg' \) | shuf -n 1)"
swaymsg output "*" bg "$random_wallpaper" fill
