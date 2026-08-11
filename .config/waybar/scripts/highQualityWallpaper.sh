#!/bin/bash

# This is the random wallpaper chooser, that fires when user right clicks on waybar image
file="$(find /home/henry/Pictures/fullResolution/ -type f | shuf -n 1)"
ln -sf "$file" /home/henry/.config/hypr/symlink
awww img "$file" --transition-type grow --transition-fps 60 --transition-duration 2.8
notify-send "BEFORE (hq)"
matugen image "$file" --prefer value
notify-send "AFTER (hq)"
