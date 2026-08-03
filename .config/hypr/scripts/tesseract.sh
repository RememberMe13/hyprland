#!/bin/bash
cd ~
grim -g "$(slurp)" tesseract.png
tesseract tesseract.png - | wl-copy
notify-send "Copied:" "$(wl-paste)"
rm tesseract.png
