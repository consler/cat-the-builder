# Cat The Builder BETA
This is a tool to automate building .apk from .catrobat. Please report any malfunctioning you find.

## Dependencies
[ImageMagick](imagemagick.org),

[apktool](apktool.org),

[SDK Build Tools](developer.android.com/tools/releases/build-tools), specifically [zipalign](developer.android/tools/zipalign), [apksigner](developer.android/tools/apksigner)

## Installation 
``` git clone https://github.com/consler/cat-the-builder.git ```
### For Windows
You need to set up [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
## Usage
Cd into cat-the-builder
Run:
``` ./main.sh path/to/your/game.catrobat ny.package.name AppName path/to/icon.png ```
