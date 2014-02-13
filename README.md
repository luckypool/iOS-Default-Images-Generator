iphone-icons-generator
======================

Auto generator for 'App Icons' and 'App Launch (Default) Images'

## Prepare

This script needs `convert` command.  Please install `ImageMagick` like bellow.

```
$ brew install imagemagick
```

## Usage

```
usage: ./generator.sh icon color [dest_dir]
```

- icon:  'App Icons' source file. (1024x1024 size png)
- color: Background collor of 'App Launch (Default) Images'. You can set value like [this](http://www.imagemagick.org/script/command-line-options.php#fill).

## Example

```
$ ./generator.sh d_1024.png "#4e4e4e"
```

Above command generates:

```
.
├── README.md
├── d_1024.png
├── dst
│   ├── icon
│   │   ├── Icon-60.png
│   │   ├── Icon-60@2x.png
│   │   ├── Icon-72.png
│   │   ├── Icon-72@2x.png
│   │   ├── Icon-76.png
│   │   ├── Icon-76@2x.png
│   │   ├── Icon-Small.png
│   │   ├── Icon-Small@2x.png
│   │   ├── Icon.png
│   │   ├── Icon@2x.png
│   │   ├── iTunesArtwork.png
│   │   └── iTunesArtwork@2x.png
│   └── screen
│       ├── Default-568h@2x~iphone.png
│       ├── Default-Landscape@2x~iPad.png
│       ├── Default-Landscape~iPad.png
│       ├── Default-Portrait@2x~iPad.png
│       ├── Default-Portrait~iPad.png
│       ├── Default@2x~iphone.png
│       └── Default~iphone.png
└── generator.sh
```

## References

- [iOS App Programming Guide: App-Related Resources]](https://developer.apple.com/library/ios/documentation/iphone/conceptual/iphoneosprogrammingguide/App-RelatedResources/App-RelatedResources.html)
- [iOSヒューマンインターフェイスガイドライン: 起動画像](https://developer.apple.com/jp/devcenter/ios/library/documentation/userexperience/conceptual/mobilehig/LaunchImages/LaunchImages.html)
- [ImageMagick: Command-line Options](http://www.imagemagick.org/script/command-line-options.php#fill)

