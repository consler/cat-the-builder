#!/bin/bash

cp $1 CATGAME/assets/catrobat_project.zip

cd CATGAME

sed -i "s/my.owner.app/$2/g" AndroidManifest.xml
sed -i "s/android:label=\"App\"/android:label=\"$3\"/g" AndroidManifest.xml

#cp $4 res/mipmap-ldpi/ic_launcher.png
cp $4 res/mipmap-mdpi/ic_launcher.png
cp $4 res/mipmap-hdpi/ic_launcher.png
cp $4 res/mipmap-xhdpi/ic_launcher.png
cp $4 res/mipmap-xxhdpi/ic_launcher.png
cp $4 res/mipmap-xxxhdpi/ic_launcher.png

#magick res/mipmap-ldpi/ic_launcher.png -resize 36x36 res/mipmap-ldpi/ic_launcher.png
magick res/mipmap-mdpi/ic_launcher.png -resize 48x48 res/mipmap-mdpi/ic_launcher.png
magick res/mipmap-hdpi/ic_launcher.png -resize 72x72 res/mipmap-hdpi/ic_launcher.png
magick res/mipmap-xhdpi/ic_launcher.png -resize 96x96 res/mipmap-xhdpi/ic_launcher.png
magick res/mipmap-xxhdpi/ic_launcher.png -resize 144x144 res/mipmap-xxhdpi/ic_launcher.png
magick res/mipmap-xxxhdpi/ic_launcher.png -resize 192x192 res/mipmap-xxxhdpi/ic_launcher.png

cd ../

apktool b CATGAME

cp DummyManifest.xml CATGAME/AndroidManifest.xml 

mv CATGAME/dist/CATGAME.apk Release

rm CATGAME/dist/CATGAME.apk

cd Release

mv CATGAME.apk CATGAME-prealigned.apk
zipalign -v 4 CATGAME-prealigned.apk CATGAME.apk
rm CATGAME-prealigned.apk

apksigner sign --ks ../ks.jks --ks-pass pass:password --v2-signing-enabled true --min-sdk-version 26 --append-signature CATGAME.apk

rm CATGAME.apk.idsig

mv CATGAME.apk App.apk
