iphone-icons-generator
======================

## prepare


`convert` コマンドを使うので、imagemagickをインストールしといてください

```
$ brew install imagemagick
```

## usage

```
usage: ./generator.sh icon color [dest_dir]
```

- icon: 1024x1024のpng
- color: 背景の色

## example

```
$ ./generator.sh d_1024.png "#4e4e4e"
```

↓

```
.
├── README.md
├── d_1024.png
├── generator.sh
└── res
    ├── icon
    │   ├── Icon-Small.png
    │   ├── Icon-Small@2x.png
    │   ├── iTunesArtwork.png
    │   ├── iTunesArtwork@2x.png
    │   ├── ios5
    │   │   ├── Icon.png
    │   │   └── Icon@2x.png
    │   └── ios7
    │       ├── Icon-60.png
    │       └── Icon-60@2x.png
    └── screen
        ├── 3.5inch
        │   ├── Default@2x.png
        │   └── Defaultx.png
        └── 4inch
            └── Default.png
```

