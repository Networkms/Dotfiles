#!/bin/sh

directory="$HOME/Pictures/Wallpapers"

wallpaper=$(
    find "$directory" -type f \
        \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' \
        -o -iname '*.webp' -o -iname '*.gif' \) \
    | sort \
    | rofi -dmenu -i -p Wallpaper
)

[ -n "$wallpaper" ] || exit 0

awww img "$wallpaper"
