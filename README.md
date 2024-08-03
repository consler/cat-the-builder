# Cat The Builder BETA
This is a tool to automate building .apk from .catrobat. Please report any malfunctioning you find.

## Dependencies
[ImageMagick](https://imagemagick.org),

[apktool](https://apktool.org),

[SDK Build Tools](https://developer.android.com/tools/releases/build-tools), specifically [zipalign](https://developer.android/tools/zipalign), [apksigner](https://developer.android/tools/apksigner)

## Installation 
``` git clone https://github.com/consler/cat-the-builder.git ```
### For Windows
You need to set up [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
## Usage
Cd into cat-the-builder

Run:

``` ./main.sh path/to/your/game.catrobat my.package.name AppName path/to/icon.png ```

You can find your .apk in Release folder


## For Termux
Install Termux via **F-Droid**

```pkg install openjdk-17```

``` curl -s https://raw.githubusercontent.com/rendiix/rendiix.github.io/master/install-repo.sh | bash ```

``` pkg install zipalign apksigner imagemagick apktool git ```

``` git clone https://github.com/consler/cat-the-builder.git ```

```termux-setup-storage ```

``` cd storage/shared ```

``` cp PATH/TO/YOUR/FILE.catrobat /data/data/com.termux/files/home ```

``` cp PATH/TO/YOUR/ICON.png /data/data/com.termux/files/home ```

``` cd ```

``` cd cat-the-builder ```

``` ./main.sh ../yourGame.catrobat my.package.name AppName ../yourIcon.png ```

``` cd Release```

```cp AppName.apk ../../```

```cd```

``` cp AppName.apk storage/shared```


