#!/bin/bash

cp -r CATGAME/. Build/

# changing the stock catrobat_project.zip to the user`s one
cp $1 Build/assets/catrobat_project.zip

# changing manifest to match user`s prefernces
sed -i "s/my.owner.app/$2/g" Build/AndroidManifest.xml
sed -i "s/android:label=\"App\"/android:label=\"$3\"/g" Build/AndroidManifest.xml

# changing the icon
cp $4 Build/res/mipmap-mdpi/ic_launcher.png -f
cp $4 Build/res/mipmap-hdpi/ic_launcher.png -f
cp $4 Build/res/mipmap-xhdpi/ic_launcher.png -f
cp $4 Build/res/mipmap-xxhdpi/ic_launcher.png -f
cp $4 Build/res/mipmap-xxxhdpi/ic_launcher.png -f

# rescaling the icon so that it matched its dpi rate
magick Build/res/mipmap-mdpi/ic_launcher.png -resize 48x48 Build/res/mipmap-mdpi/ic_launcher.png
magick Build/res/mipmap-hdpi/ic_launcher.png -resize 72x72 Build/res/mipmap-hdpi/ic_launcher.png
magick Build/res/mipmap-xhdpi/ic_launcher.png -resize 96x96 Build/res/mipmap-xhdpi/ic_launcher.png
magick Build/res/mipmap-xxhdpi/ic_launcher.png -resize 144x144 Build/res/mipmap-xxhdpi/ic_launcher.png
magick Build/res/mipmap-xxxhdpi/ic_launcher.png -resize 192x192 Build/res/mipmap-xxxhdpi/ic_launcher.png


# zipping the apk
apktool b Build

mv Build/dist/CATGAME.apk Release

rm -rf Build

cd Release

# zipaligning 
mv CATGAME.apk CATGAME-prealigned.apk
echo "Zip aligning CATGAME"
zipalign 4 CATGAME-prealigned.apk CATGAME.apk
rm CATGAME-prealigned.apk

#signing the apk
apksigner sign --ks ../ks.jks --ks-pass pass:password --v2-signing-enabled true --min-sdk-version 26 --append-signature CATGAME.apk

# removing the unsigned apk
rm CATGAME.apk.idsig

# renaming the file to match user`s prefernces
mv CATGAME.apk $3.apk

# telling user what to do
echo ""
echo "------------------------------------------------------------------------"
echo ""
echo "It's done! If there were no errors your file should be in Release folder"
echo ""
