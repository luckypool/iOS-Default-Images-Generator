#!/bin/bash

# Usage
# -------------------------------------------
usage() { echo "usage: $0 src_image bg_color [dst_dir]"; exit 1; }
[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "./dst"


# Directories
# -------------------------------------------
ICONDIR=$3/icon
SCREENDIR=$3/screen
eval mkdir -p "$ICONDIR"
eval mkdir -p "$SCREENDIR"


# Show progress
# -------------------------------------------
set -x


# App Icons
# -------------------------------------------
c="convert -background none"

# iPhone iOS 5/6
$c "$1" -resize 57x57   "$ICONDIR/Icon.png"
$c "$1" -resize 114x114 "$ICONDIR/Icon@2x.png"
# iPad iOS 5/6
$c "$1" -resize 72x72   "$ICONDIR/Icon-72.png"
$c "$1" -resize 144x144 "$ICONDIR/Icon-72@2x.png"
# iPhone iOS7
$c "$1" -resize 60x60   "$ICONDIR/Icon-60.png"
$c "$1" -resize 120x120 "$ICONDIR/Icon-60@2x.png"
# iPad iOS7
$c "$1" -resize 76x76   "$ICONDIR/Icon-76.png"
$c "$1" -resize 152x152 "$ICONDIR/Icon-76@2x.png"
# Preference/Spotlight
$c "$1" -resize 29x29   "$ICONDIR/Icon-Small.png"
$c "$1" -resize 58x58   "$ICONDIR/Icon-Small@2x.png"
# AppStore
$c "$1" -resize 512x512   "$ICONDIR/iTunesArtwork.png"
$c "$1" -resize 1024x1024 "$ICONDIR/iTunesArtwork@2x.png"


# App Launch Images
# -------------------------------------------
c="convert $1 -background $2 -gravity center"

# iPhone
$c -resize 256x256 -extent 320x480  "$SCREENDIR/Default~iphone.png"
$c -resize 512x512 -extent 640x960  "$SCREENDIR/Default@2x~iphone.png"
$c -resize 512x512 -extent 640x1136 "$SCREENDIR/Default-568h@2x~iphone.png"
# iPad
$c -resize 512x512   -extent 768x1024  "$SCREENDIR/Default-Portrait~iPad.png"
$c -resize 1024x1024 -extent 1536x2048 "$SCREENDIR/Default-Portrait@2x~iPad.png"
$c -resize 512x512   -extent 1024x768  "$SCREENDIR/Default-Landscape~iPad.png"
$c -resize 1024x1024 -extent 2048x1536 "$SCREENDIR/Default-Landscape@2x~iPad.png"

