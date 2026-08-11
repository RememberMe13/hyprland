#!/bin/bash

# This is the script for waybar, that lets the user choose the wallpaper
file="$(find ~/Pictures/lowerResolution/ -type f | awk -F/ '{print $NF "\t" $0}' | fuzzel -d --with-nth=1 --accept-nth=2 -a top-right -l 14 -w 23 -p "Search: ")"

if [[ -n "$file" ]]; then
	ln -sf "$file" /home/henry/.config/hypr/symlink
    awww img "$file" --transition-type grow --transition-fps 60 --transition-duration 2.8
    notify-send BEFORE
    matugen image "$file" --source-color-index 0
    notify-send AFTER
else
    echo "no file"
fi
