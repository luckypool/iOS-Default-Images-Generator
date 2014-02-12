#!/bin/bash

usage() { echo "usage: $0 icon color [dest_dir]"; exit 1; }

[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "."

eval mkdir -p "$3/res/icon/{ios5,ios7}"
eval mkdir -p "$3/res/screen/{4inch,3.5inch}"

# Show progress
set -x

# -----------------------------
# icons
# -----------------------------
convert="convert -background none"

# iPhone iOS 5/6
$convert "$1" -resize 57x57   "$3/res/icon/ios5/Icon.png"
$convert "$1" -resize 114x114 "$3/res/icon/ios5/Icon@2x.png"
# iPhone iOS7
$convert "$1" -resize 60x60   "$3/res/icon/ios7/Icon-60.png"
$convert "$1" -resize 120x120 "$3/res/icon/ios7/Icon-60@2x.png"

# iPad iOS 5/6
# $convert "$1" -resize 72x72   "$3/res/icon/Icon-72.png"
# $convert "$1" -resize 144x144 "$3/res/icon/Icon-72@2x.png"
# iPad iOS7
# $convert "$1" -resize 76x76   "$3/res/icon/Icon-76.png"
# $convert "$1" -resize 152x152 "$3/res/icon/Icon-76@2x.png"

# Preference/Spotlight
$convert "$1" -resize 29x29   "$3/res/icon/Icon-Small.png"
$convert "$1" -resize 58x58   "$3/res/icon/Icon-Small@2x.png"

# AppStore
$convert "$1" -resize 512x512 "$3/res/icon/iTunesArtwork.png"
$convert "$1" -resize 1024x1024 "$3/res/icon/iTunesArtwork@2x.png"

# -----------------------------
# screen
# -----------------------------
convert="convert $1 -background $2 -gravity center"
$convert -resize 256x256 -extent 320x480  "$3/res/screen/3.5inch/Defaultx.png"
$convert -resize 512x512 -extent 640x960  "$3/res/screen/3.5inch/Default@2x.png"
$convert -resize 512x512 -extent 640x1136 "$3/res/screen/4inch/Default.png"


