#!/bin/bash

# Usage
# -------------------------------------------
usage() { echo "usage: $0 src_image bg_color [dst_dir]"; exit 1; }
[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "./dst"


# Directories
# -------------------------------------------
APPICONDIR=$3/appicon
SCREENDIR=$3/screen
LOGODIR=$3/logo
eval mkdir -p "$APPICONDIR"
eval mkdir -p "$SCREENDIR"


# Show progress
# -------------------------------------------
set -x


# App AppIcons
# -------------------------------------------
c="convert -background none"

# iPhone Notification 20x20
$c "$1" -resize 40x40   "$APPICONDIR/AppAppIcon-20@2x.png"
$c "$1" -resize 60x60 "$APPICONDIR/AppAppIcon-20@3x.png"

# iPad Spotlight 
$c "$1" -resize 50x50   "$APPICONDIR/AppAppIcon-50.png"
$c "$1" -resize 100x100   "$APPICONDIR/AppAppIcon-50@2x.png"

# iPhone Spotlight / Settings 29x29 
$c "$1" -resize 58x58   "$APPICONDIR/AppAppIcon-29@2x.png"
$c "$1" -resize 87x87 "$APPICONDIR/AppAppIcon-29@3x.png"

# iPhone Spotlight 40x40 
$c "$1" -resize 80x80   "$APPICONDIR/AppAppIcon-40@2x.png"
$c "$1" -resize 120x120 "$APPICONDIR/AppAppIcon-40@3x.png"

# iPhone App 60x60 
$c "$1" -resize 120x120   "$APPICONDIR/AppAppIcon-60@2x.png"
$c "$1" -resize 180x180 "$APPICONDIR/AppAppIcon-60@3x.png"

# iPad Notifications
$c "$1" -resize 20x20   "$APPICONDIR/AppAppIcon-20.png"
$c "$1" -resize 40x40 "$APPICONDIR/AppAppIcon-20@2x.png"

# iPad Notifications
$c "$1" -resize 20x20   "$APPICONDIR/AppAppIcon-20.png"
$c "$1" -resize 40x40 "$APPICONDIR/AppAppIcon-20@2x.png"

# iPad Settings
$c "$1" -resize 29x29   "$APPICONDIR/AppAppIcon-29.png"
$c "$1" -resize 58x58 "$APPICONDIR/AppAppIcon-58@2x.png"

# iPad Spotlight
$c "$1" -resize 40x40   "$APPICONDIR/AppAppIcon-40.png"
$c "$1" -resize 80x80 "$APPICONDIR/AppAppIcon-40@2x.png"

# iPad App(iOS 5,6)
$c "$1" -resize 76x76   "$APPICONDIR/AppAppIcon-76.png"
$c "$1" -resize 152x152 "$APPICONDIR/AppAppIcon-76@2x.png"

# iPad App(iOS 7-11)
$c "$1" -resize 76x76   "$APPICONDIR/AppAppIcon-76.png"
$c "$1" -resize 152x152 "$APPICONDIR/AppAppIcon-76@2x.png"

# iPad Pro App
$c "$1" -resize 167x167   "$APPICONDIR/AppAppIcon-83_5.png"

# App Store
$c "$1" -resize 1024x1024   "$APPICONDIR/AppAppIcon-1024.png"

# iPhone Spotlight
$c "$1" -resize 40x40   "$APPICONDIR/AppIcon-20@2x.png"
$c "$1" -resize 60x60 "$APPICONDIR/AppIcon-20@3x.png"

# iPhone iOS 5/6
$c "$1" -resize 57x57   "$APPICONDIR/AppIcon-57.png"
$c "$1" -resize 114x114 "$APPICONDIR/AppIcon-57@2x.png"
# iPad iOS 5/6
$c "$1" -resize 72x72   "$APPICONDIR/AppIcon-72.png"
$c "$1" -resize 144x144 "$APPICONDIR/AppIcon-72@2x.png"
# iPhone iOS7
$c "$1" -resize 60x60   "$APPICONDIR/AppIcon-60.png"
$c "$1" -resize 120x120 "$APPICONDIR/AppIcon-60@2x.png"
$c "$1" -resize 180x180 "$APPICONDIR/AppIcon-60@3x.png"
# iPad iOS7
$c "$1" -resize 76x76   "$APPICONDIR/AppIcon-76.png"
$c "$1" -resize 152x152 "$APPICONDIR/AppIcon-76@2x.png"
# iPad Pro
$c "$1" -resize 167x167   "$APPICONDIR/AppIcon-83.5@2x.png"

#Logo
$c "$1" -resize 341x341   "$APPICONDIR/AppIcon-341.png"
$c "$1" -resize 682x682   "$APPICONDIR/AppIcon-341@2x.png"
$c "$1" -resize 1023x1023 "$APPICONDIR/AppIcon-341@3x.png"


#Logo
$c "$1" -resize 341x341   "$LOGODIR/logo-341.png"
$c "$1" -resize 682x682   "$LOGODIR/logo-341@2x.png"
$c "$1" -resize 1023x1023 "$LOGODIR/logo-341@3x.png"

$c "$1" -resize 20x20   "$APPICONDIR/AppIcon-20x.png"
$c "$1" -resize 40x40   "$APPICONDIR/AppIcon-20@2x.png"
$c "$1" -resize 60x60   "$APPICONDIR/AppIcon-20@3x.png"

# Setting
$c "$1" -resize 29x29   "$APPICONDIR/AppIcon-Small-29.png"
$c "$1" -resize 58x58   "$APPICONDIR/AppIcon-Small-29@2x.png"
$c "$1" -resize 87x87   "$APPICONDIR/AppIcon-Small-29@3x.png"
# Spotlight
$c "$1" -resize 40x40   "$APPICONDIR/AppIcon-Small-40.png"
$c "$1" -resize 80x80   "$APPICONDIR/AppIcon-Small-40@2x.png"
$c "$1" -resize 120x120   "$APPICONDIR/AppIcon-Small-40@3x.png"
# 50
$c "$1" -resize 50x50   "$APPICONDIR/AppIcon-Small-50.png"
$c "$1" -resize 100x100 "$APPICONDIR/AppIcon-Small-50@2x.png"
#iPad Pro
$c "$1" -resize 167x167 "$APPICONDIR/AppIcon-Small-83.5@2x.png"

# AppStore
$c "$1" -resize 512x512   "$APPICONDIR/iTunesArtwork.png"

$c "$1" -resize 1024x1024 "$APPICONDIR/iTunesArtwork@2x.png"


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
