# Cat The Builder BETA
This is a tool to automate building .apk from .catrobat. Please report any malfunctioning you find.

## Goals
* Remove splash screen [ALMOST DONE]

* Support for Termux [DONE]

* Rewrite the interpeter

* Optimization

* Remake into java

* Make an android app
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
``` # downloading dependencies ```

```pkg install openjdk-17```

``` curl -s https://raw.githubusercontent.com/rendiix/rendiix.github.io/master/install-repo.sh | bash ```

``` pkg install zipalign apksigner imagemagick apktool git ```

``` git clone https://github.com/consler/cat-the-builder.git # cloning into the repo```

```termux-setup-storage # setting up the storage ```

``` cd storage/shared # cding into your files ```

``` cp PATH/TO/YOUR/FILE.catrobat /data/data/com.termux/files/home # PATH/TO/YOUR/FILE.catrobat is the path to your game```

``` cp PATH/TO/YOUR/ICON.png /data/data/com.termux/files/home # PATH/TO/YOUR/ICON.png is the path to your icon ```

``` cd ```

``` # running ```

``` cd cat-the-builder ```

``` ./main.sh ../yourGame.catrobat my.package.name AppName ../yourIcon.png # change the params for your preferences ```

``` cd Release```

```cp AppName.apk ../../```

```cd```

``` cp AppName.apk storage/shared # the app is stored in your external storage```


## Notes
This is still a beta, huge changes may occur, things might break etc. 
