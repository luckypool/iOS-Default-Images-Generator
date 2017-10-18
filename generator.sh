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

# iPhone Notification 20x20
$c "$1" -resize 40x40   "$ICONDIR/AppIcon-20@2x.png"
$c "$1" -resize 60x60 "$ICONDIR/AppIcon-20@3x.png"

# iPhone Spotlight / Settings 29x29 
$c "$1" -resize 58x58   "$ICONDIR/AppIcon-29@2x.png"
$c "$1" -resize 87x87 "$ICONDIR/AppIcon-29@3x.png"

# iPhone Spotlight 40x40 
$c "$1" -resize 80x80   "$ICONDIR/AppIcon-40@2x.png"
$c "$1" -resize 120x120 "$ICONDIR/AppIcon-40@3x.png"

# iPhone App 60x60 
$c "$1" -resize 120x120   "$ICONDIR/AppIcon-60@2x.png"
$c "$1" -resize 180x180 "$ICONDIR/AppIcon-60@3x.png"

# iPad Notifications
$c "$1" -resize 20x20   "$ICONDIR/AppIcon-20.png"
$c "$1" -resize 40x40 "$ICONDIR/AppIcon-20@2x.png"

# iPad Notifications
$c "$1" -resize 20x20   "$ICONDIR/AppIcon-20.png"
$c "$1" -resize 40x40 "$ICONDIR/AppIcon-20@2x.png"

# iPad Settings
$c "$1" -resize 29x29   "$ICONDIR/AppIcon-29.png"
$c "$1" -resize 58x58 "$ICONDIR/AppIcon-58@2x.png"

# iPad Spotlight
$c "$1" -resize 40x40   "$ICONDIR/AppIcon-40.png"
$c "$1" -resize 80x80 "$ICONDIR/AppIcon-40@2x.png"

# iPad App
$c "$1" -resize 76x76   "$ICONDIR/AppIcon-76.png"
$c "$1" -resize 172x172 "$ICONDIR/AppIcon-76@2x.png"

# iPad Pro App
$c "$1" -resize 167x167   "$ICONDIR/AppIcon-83_5.png"

# App Store
$c "$1" -resize 1024x1024   "$ICONDIR/AppIcon-1024.png"

# 20x20 @2x
$c "$1" -resize 40x40   "$ICONDIR/Icon-20@2x.png"
$c "$1" -resize 60x60 "$ICONDIR/Icon-20@3x.png"

# iPhone iOS 5/6
$c "$1" -resize 57x57   "$ICONDIR/Icon-57.png"
$c "$1" -resize 114x114 "$ICONDIR/Icon-57@2x.png"
# iPad iOS 5/6
$c "$1" -resize 72x72   "$ICONDIR/Icon-72.png"
$c "$1" -resize 144x144 "$ICONDIR/Icon-72@2x.png"
# iPhone iOS7
$c "$1" -resize 60x60   "$ICONDIR/Icon-60.png"
$c "$1" -resize 120x120 "$ICONDIR/Icon-60@2x.png"
$c "$1" -resize 180x180 "$ICONDIR/Icon-60@3x.png"
# iPad iOS7
$c "$1" -resize 76x76   "$ICONDIR/Icon-76.png"
$c "$1" -resize 152x152 "$ICONDIR/Icon-76@2x.png"
# iPad Pro
$c "$1" -resize 167x167   "$ICONDIR/Icon-83.5@2x.png"

#Logo
$c "$1" -resize 341x341   "$ICONDIR/Icon-341.png"
$c "$1" -resize 682x682   "$ICONDIR/Icon-341@2x.png"
$c "$1" -resize 1023x1023 "$ICONDIR/Icon-341@3x.png"

$c "$1" -resize 20x20   "$ICONDIR/Icon-20x.png"
$c "$1" -resize 40x40   "$ICONDIR/Icon-20@2x.png"
$c "$1" -resize 60x60   "$ICONDIR/Icon-20@3x.png"

# Setting
$c "$1" -resize 29x29   "$ICONDIR/Icon-Small-29.png"
$c "$1" -resize 58x58   "$ICONDIR/Icon-Small-29@2x.png"
$c "$1" -resize 87x87   "$ICONDIR/Icon-Small-29@3x.png"
# Spotlight
$c "$1" -resize 40x40   "$ICONDIR/Icon-Small-40.png"
$c "$1" -resize 80x80   "$ICONDIR/Icon-Small-40@2x.png"
$c "$1" -resize 120x120   "$ICONDIR/Icon-Small-40@3x.png"
# 50
$c "$1" -resize 50x50   "$ICONDIR/Icon-Small-50.png"
$c "$1" -resize 100x100 "$ICONDIR/Icon-Small-50@2x.png"
#iPad Pro
$c "$1" -resize 167x167 "$ICONDIR/Icon-Small-83.5@2x.png"

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
$c -resize 512x512   -extent 768x1024  "$SCREENDIR/Default-Portrait~ipad.png"
$c -resize 1024x1024 -extent 1536x2048 "$SCREENDIR/Default-Portrait@2x~ipad.png"
$c -resize 512x512   -extent 1024x768  "$SCREENDIR/Default-Landscape~ipad.png"
$c -resize 1024x1024 -extent 2048x1536 "$SCREENDIR/Default-Landscape@2x~ipad.png"
