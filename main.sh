#!/bin/bash

# Making a temporary directory for all the building stuff
cp -r CATGAME/. Build/

# changing the stock catgame to the user`s one

rm -rf Build/assets/CATGAME >> /dev/null
mkdir Build/assets/CATGAME >> /dev/null

cp $1 Build/assets/CATGAME/CATGAME.catrobat

unzip Build/assets/CATGAME/CATGAME.catrobat -d Build/assets/CATGAME/

# changing manifest to match user`s prefernces
sed -i "s/my.catgame/$2/g" Build/AndroidManifest.xml
sed -i "s/android:label=\"CATGAME\"/android:label=\"$3\"/g" Build/AndroidManifest.xml

# changing the icon
cp $4 Build/res/mipmap-xxhdpi/ic_launcher.png -f
cp $4 Build/res/mipmap-xxhdpi/ic_launcher_round.png -f

rm -r Build/res/mipmap-xxxhdpi
rm -r Build/res/mipmap-xhdpi
rm -r Build/res/mipmap-hdpi
rm -r Build/res/mipmap-mdpi
rm -r Build/res/mipmap-anydpi

# building the apk
apktool b Build

# Moving it to Release
mv Build/dist/catroid-pocketCode-signedRelease.apk Release/CATGAME-prealigned.apk

rm -rf Build

cd Release

# zipaligning 
echo "Zip aligning CATGAME..."
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
