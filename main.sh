#!/bin/bash

# changing the stock catrobat_project.zip to the user`s one
cp $1 CATGAME/assets/catrobat_project.zip


cd CATGAME

# changing manifest to match user`s prefernces
sed -i "s/my.owner.app/$2/g" AndroidManifest.xml
sed -i "s/android:label=\"App\"/android:label=\"$3\"/g" AndroidManifest.xml

# changing the icon
cd ../
cp $4 CATGAME/res/mipmap-mdpi/ic_launcher.png -f
cp $4 CATGAME/res/mipmap-hdpi/ic_launcher.png -f
cp $4 CATGAME/res/mipmap-xhdpi/ic_launcher.png -f
cp $4 CATGAME/res/mipmap-xxhdpi/ic_launcher.png -f
cp $4 CATGAME/res/mipmap-xxxhdpi/ic_launcher.png -f
cd CATGAME

# rescaling the icon so that it matched its dpi rate
magick res/mipmap-mdpi/ic_launcher.png -resize 48x48 res/mipmap-mdpi/ic_launcher.png
magick res/mipmap-hdpi/ic_launcher.png -resize 72x72 res/mipmap-hdpi/ic_launcher.png
magick res/mipmap-xhdpi/ic_launcher.png -resize 96x96 res/mipmap-xhdpi/ic_launcher.png
magick res/mipmap-xxhdpi/ic_launcher.png -resize 144x144 res/mipmap-xxhdpi/ic_launcher.png
magick res/mipmap-xxxhdpi/ic_launcher.png -resize 192x192 res/mipmap-xxxhdpi/ic_launcher.png

cd ../


# building the apk
apktool b CATGAME


# undoing the changes for the stock CATGAME

cp DummyManifest.xml CATGAME/AndroidManifest.xml 

mv CATGAME/dist/CATGAME.apk Release

cp dummyIcon.png CATGAME/res/mipmap-mdpi/ic_launcher.png -f
cp dummyIcon.png CATGAME/res/mipmap-hdpi/ic_launcher.png -f
cp dummyIcon.png CATGAME/res/mipmap-xhdpi/ic_launcher.png -f
cp dummyIcon.png CATGAME/res/mipmap-xxhdpi/ic_launcher.png -f
cp dummyIcon.png CATGAME/res/mipmap-xxxhdpi/ic_launcher.png -f

cd CATGAME

magick res/mipmap-mdpi/ic_launcher.png -resize 48x48 res/mipmap-mdpi/ic_launcher.png
magick res/mipmap-hdpi/ic_launcher.png -resize 72x72 res/mipmap-hdpi/ic_launcher.png
magick res/mipmap-xhdpi/ic_launcher.png -resize 96x96 res/mipmap-xhdpi/ic_launcher.png
magick res/mipmap-xxhdpi/ic_launcher.png -resize 144x144 res/mipmap-xxhdpi/ic_launcher.png
magick res/mipmap-xxxhdpi/ic_launcher.png -resize 192x192 res/mipmap-xxxhdpi/ic_launcher.png

cd ../Release

# zipaligning 
mv CATGAME.apk CATGAME-prealigned.apk
zipalign -v 4 CATGAME-prealigned.apk CATGAME.apk >> /dev/null
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
