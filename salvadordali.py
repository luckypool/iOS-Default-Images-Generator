#!/usr/bin/env python

import sys
import subprocess

if len(sys.argv) < 3:
    print('salvadordali.py InputImage BackgroundColor [OutputPrefix]')
    print('Example : ./salvadordali.py appicon.png "#44B380" "png"')
    exit(-1)

input_image = sys.argv[1]
background_color = sys.argv[2]

if len(sys.argv) >= 4:
    output_prefix = sys.argv[3]
else:
    output_prefix = ''


assets = [
    ('320x480', 'Default.png'),
    ('640x960', 'Default@2x.png'),
    ('640x1136', 'Default-568h@2x.png'),
    ('750x1334', 'Default-667h@2x.png'),
    ('1242x2208', 'Default-736h@3x.png'),
    ('768x1024', 'Default-Portrait.png'),
    ('1024x768', 'Default-Landscape.png'),
    ('1536x2048', 'Default-Portrait@2x.png'),
    ('2048x1536', 'Default-Landscape@2x.png'),
    ('2208x1242', 'Default-Landscape@3x.png'),
    ('384x512', 'LaunchScreen-Center.png'),
    ('768x1024', 'LaunchScreen-Center@2x.png')
]


backgrounds = [
    ('768x1024', 'LaunchScreen-AspectFill.png'),
    ('1536x2048', 'LaunchScreen-AspectFill@2x.png'),
]


for output in assets:
    params = (input_image, output[0], background_color, output[0], output[1])
    print('/usr/local/bin/convert %s -resize %s -background %s -gravity center -extent %s %s' % params)
    subprocess.call([
        '/usr/local/bin/convert',
        input_image,
        '-resize',
        '%s' % output[0],
        '-background',
        '%s' % background_color,
        '-gravity',
        'center',
        '-extent',
        '%s' % output[0],
        '%s%s' % (output_prefix, output[1])
    ])


for output in backgrounds:
    params = (output[0], background_color, output_prefix, output[1])
    print('/usr/local/bin/convert -size %s xc:%s %s%s' % params)
    subprocess.call([
        '/usr/local/bin/convert',
        '-size',
        '%s' % output[0],
        'xc:%s' % background_color,
        '%s%s' % (output_prefix, output[1])
    ])
