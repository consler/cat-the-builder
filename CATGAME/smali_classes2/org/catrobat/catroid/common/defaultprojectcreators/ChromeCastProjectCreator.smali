.class public Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;
.super Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;
.source "ChromeCastProjectCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;-><init>()V

    .line 77
    const v0, 0x7f120236

    iput v0, p0, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->defaultProjectNameResourceId:I

    .line 78
    return-void
.end method


# virtual methods
.method public createDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;
    .locals 62
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "landscapeMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    move-object/from16 v0, p2

    new-instance v1, Lorg/catrobat/catroid/content/Project;

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-direct {v1, v0, v3, v2, v2}, Lorg/catrobat/catroid/content/Project;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 84
    .local v1, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 92
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    const v4, 0x7f0800f2

    .line 97
    .local v4, "backgroundDrawableId":I
    const v14, 0x7f0800f8

    .line 98
    .local v14, "cloudDrawableId":I
    const v15, 0x7f0800fb

    .line 100
    .local v15, "screenshotDrawableId":I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v12, v5

    .line 101
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v5, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v7, 0x2d0

    const/16 v13, 0x500

    invoke-static {v5, v6, v13, v7}, Lorg/catrobat/catroid/utils/ImageEditing;->calculateScaleFactor(IIII)D

    move-result-wide v5

    sput-wide v5, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    .line 110
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v11

    .line 112
    .local v11, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v11}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "images"

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v7, "imageDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v11}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v6

    const-string v8, "sounds"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v5

    .line 115
    .local v9, "soundDir":Ljava/io/File;
    const-string v22, "img.png"

    .line 116
    .local v22, "imageFileName":Ljava/lang/String;
    const-string v10, "snd.wav"

    .line 118
    .local v10, "soundFileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-wide v16, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    move v6, v4

    move-object/from16 v8, v22

    move-object v2, v9

    move-object v3, v10

    .end local v9    # "soundDir":Ljava/io/File;
    .end local v10    # "soundFileName":Ljava/lang/String;
    .local v2, "soundDir":Ljava/io/File;
    .local v3, "soundFileName":Ljava/lang/String;
    move-wide/from16 v9, v16

    invoke-static/range {v5 .. v10}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v5

    .line 124
    .local v5, "backgroundFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-wide v16, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    move v9, v14

    move-object v10, v7

    move-object v6, v11

    .end local v11    # "scene":Lorg/catrobat/catroid/content/Scene;
    .local v6, "scene":Lorg/catrobat/catroid/content/Scene;
    move-object/from16 v11, v22

    move/from16 v24, v4

    move-object/from16 v23, v12

    move v4, v13

    .end local v4    # "backgroundDrawableId":I
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v23, "options":Landroid/graphics/BitmapFactory$Options;
    .local v24, "backgroundDrawableId":I
    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v12

    .line 130
    .local v12, "cloudFile1":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-wide v16, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    move-object v4, v12

    .end local v12    # "cloudFile1":Ljava/io/File;
    .local v4, "cloudFile1":Ljava/io/File;
    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v12

    .line 136
    .local v12, "cloudFile2":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800f6

    sget-wide v20, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    move-object/from16 v18, v7

    move-object/from16 v19, v22

    invoke-static/range {v16 .. v21}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v13

    .line 142
    .local v13, "birdWingUpFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800f4

    sget-wide v20, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    invoke-static/range {v16 .. v21}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v11

    .line 148
    .local v11, "birdWingDownFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800f7

    sget-wide v20, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    invoke-static/range {v16 .. v21}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v10

    .line 154
    .local v10, "birdLeftWingUpFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800f5

    sget-wide v20, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;->backgroundImageScaleFactor:D

    invoke-static/range {v16 .. v21}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v9

    .line 160
    .local v9, "birdLeftWingDownFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v16, v7

    .end local v7    # "imageDir":Ljava/io/File;
    .local v16, "imageDir":Ljava/io/File;
    const/high16 v7, 0x7f110000

    invoke-static {v8, v7, v2, v3}, Lorg/catrobat/catroid/io/ResourceImporter;->createSoundFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 165
    .local v7, "tweetFile1":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v17, v9

    .end local v9    # "birdLeftWingDownFile":Ljava/io/File;
    .local v17, "birdLeftWingDownFile":Ljava/io/File;
    const v9, 0x7f110001

    invoke-static {v8, v9, v2, v3}, Lorg/catrobat/catroid/io/ResourceImporter;->createSoundFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 170
    .local v9, "tweetFile2":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 172
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v18

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 170
    const-string v21, "automatic_screenshot.png"

    move-object/from16 v27, v9

    move-object/from16 v26, v17

    .end local v9    # "tweetFile2":Ljava/io/File;
    .end local v17    # "birdLeftWingDownFile":Ljava/io/File;
    .local v26, "birdLeftWingDownFile":Ljava/io/File;
    .local v27, "tweetFile2":Ljava/io/File;
    move v9, v15

    move-object/from16 v28, v10

    .end local v10    # "birdLeftWingUpFile":Ljava/io/File;
    .local v28, "birdLeftWingUpFile":Ljava/io/File;
    move-object/from16 v10, v18

    move-object/from16 v17, v2

    move-object v2, v11

    .end local v11    # "birdWingDownFile":Ljava/io/File;
    .local v2, "birdWingDownFile":Ljava/io/File;
    .local v17, "soundDir":Ljava/io/File;
    move-object/from16 v11, v21

    move-object/from16 v18, v3

    move-object v3, v12

    move/from16 v21, v14

    move-object v14, v13

    .end local v12    # "cloudFile2":Ljava/io/File;
    .end local v13    # "birdWingUpFile":Ljava/io/File;
    .local v3, "cloudFile2":Ljava/io/File;
    .local v14, "birdWingUpFile":Ljava/io/File;
    .local v18, "soundFileName":Ljava/lang/String;
    .local v21, "cloudDrawableId":I
    move-wide/from16 v12, v19

    invoke-static/range {v8 .. v13}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    .line 176
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/Sprite;

    .line 177
    .local v8, "background":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lorg/catrobat/catroid/common/LookData;

    const v12, 0x7f120232

    .line 178
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v5}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v10, Lorg/catrobat/catroid/content/Sprite;

    const v11, 0x7f120234

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 181
    .local v10, "cloud1":Lorg/catrobat/catroid/content/Sprite;
    new-instance v11, Lorg/catrobat/catroid/content/Sprite;

    const v12, 0x7f120235

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 182
    .local v11, "cloud2":Lorg/catrobat/catroid/content/Sprite;
    new-instance v12, Lorg/catrobat/catroid/content/Sprite;

    const v13, 0x7f120237

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 184
    .local v12, "bird":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v6, v10}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 185
    invoke-virtual {v6, v11}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 186
    invoke-virtual {v6, v12}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 188
    invoke-virtual {v10}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v13

    new-instance v9, Lorg/catrobat/catroid/common/LookData;

    .line 189
    move-object/from16 v20, v5

    .end local v5    # "backgroundFile":Ljava/io/File;
    .local v20, "backgroundFile":Ljava/io/File;
    const v5, 0x7f120233

    move-object/from16 v29, v6

    .end local v6    # "scene":Lorg/catrobat/catroid/content/Scene;
    .local v29, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6, v4}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v11}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v6

    new-instance v9, Lorg/catrobat/catroid/common/LookData;

    .line 191
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5, v3}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    const v9, 0x7f12023a

    .line 193
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v14}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    const v9, 0x7f120238

    .line 195
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v2}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    const v9, 0x7f12023b

    .line 197
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, v28

    .end local v28    # "birdLeftWingUpFile":Ljava/io/File;
    .local v13, "birdLeftWingUpFile":Ljava/io/File;
    invoke-direct {v6, v9, v13}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    const v9, 0x7f120239

    .line 199
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v28, v2

    move-object/from16 v2, v26

    .end local v26    # "birdLeftWingDownFile":Ljava/io/File;
    .local v2, "birdLeftWingDownFile":Ljava/io/File;
    .local v28, "birdWingDownFile":Ljava/io/File;
    invoke-direct {v6, v9, v2}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/common/SoundInfo;

    const v9, 0x7f12023c

    .line 201
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v7}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/common/SoundInfo;

    const v9, 0x7f12023d

    .line 203
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, v27

    .end local v27    # "tweetFile2":Ljava/io/File;
    .local v2, "tweetFile2":Ljava/io/File;
    .restart local v26    # "birdLeftWingDownFile":Ljava/io/File;
    invoke-direct {v6, v9, v2}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v5, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v5}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    .line 207
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v6, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v30, v2

    const/16 v27, 0x0

    .end local v2    # "tweetFile2":Ljava/io/File;
    .local v30, "tweetFile2":Ljava/io/File;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v31, v3

    .end local v3    # "cloudFile2":Ljava/io/File;
    .local v31, "cloudFile2":Ljava/io/File;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v6, v9, v2}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 208
    new-instance v2, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v6, -0x500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v33, 0x5

    move-object/from16 v34, v4

    .end local v4    # "cloudFile1":Ljava/io/File;
    .local v34, "cloudFile1":Ljava/io/File;
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v2, v3, v9, v6}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v5, v2}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 209
    new-instance v2, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    move/from16 v4, v27

    const/16 v3, 0x500

    invoke-direct {v2, v3, v4}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(II)V

    invoke-virtual {v5, v2}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 211
    new-instance v2, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v2}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    .line 212
    .local v2, "loopBrick":Lorg/catrobat/catroid/content/bricks/ForeverBrick;
    new-instance v3, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v6, -0x500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v27, v7

    const/4 v9, 0x0

    .end local v7    # "tweetFile1":Ljava/io/File;
    .local v27, "tweetFile1":Ljava/io/File;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v35, 0xa

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v3, v4, v6, v7}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 213
    new-instance v3, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    const/16 v4, 0x500

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 215
    invoke-virtual {v5, v2}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 216
    invoke-virtual {v10, v5}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 218
    new-instance v3, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v3}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    .line 219
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v4, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v6, 0x500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v4, v5, v6}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 221
    new-instance v4, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v4}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    move-object v2, v4

    .line 222
    new-instance v4, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v6, -0x500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v4, v5, v6, v7}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v2, v4}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 223
    new-instance v4, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v6, 0x500

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v4, v5, v6}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v2, v4}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 225
    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 226
    invoke-virtual {v11, v3}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 228
    new-instance v4, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v4}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    move-object v3, v4

    .line 230
    new-instance v4, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v4}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    move-object v2, v4

    .line 232
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v6, "-640"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object/from16 v39, v4

    .line 233
    .local v39, "minX":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v9, "640"

    invoke-direct {v4, v5, v9, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object/from16 v45, v4

    .line 234
    .local v45, "maxX":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-object/from16 v25, v8

    .end local v8    # "background":Lorg/catrobat/catroid/content/Sprite;
    .local v25, "background":Lorg/catrobat/catroid/content/Sprite;
    const-string v8, "-360"

    invoke-direct {v4, v5, v8, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object/from16 v51, v4

    .line 235
    .local v51, "minY":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-object/from16 v32, v10

    .end local v10    # "cloud1":Lorg/catrobat/catroid/content/Sprite;
    .local v32, "cloud1":Lorg/catrobat/catroid/content/Sprite;
    const-string v10, "360"

    invoke-direct {v4, v5, v10, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object/from16 v57, v4

    .line 237
    .local v57, "maxY":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v35, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-object/from16 v59, v11

    .end local v11    # "cloud2":Lorg/catrobat/catroid/content/Sprite;
    .local v59, "cloud2":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual/range {v35 .. v35}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v11, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object/from16 v40, v4

    .line 238
    .local v40, "birdX":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v11, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object/from16 v58, v4

    .line 240
    .local v58, "birdY":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v35, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_UP_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 241
    move-object/from16 v60, v13

    .end local v13    # "birdLeftWingUpFile":Ljava/io/File;
    .local v60, "birdLeftWingUpFile":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v61, v14

    const/4 v14, 0x0

    .end local v14    # "birdWingUpFile":Ljava/io/File;
    .local v61, "birdWingUpFile":Ljava/io/File;
    invoke-direct {v11, v7, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v5, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 243
    .local v4, "ifBrick":Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
    new-instance v5, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v54, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 244
    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x0

    move-object/from16 v53, v11

    invoke-direct/range {v53 .. v58}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v5, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 245
    .local v5, "innerIfBrick":Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
    new-instance v7, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v13, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v14, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v35, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 246
    move/from16 v53, v15

    .end local v15    # "screenshotDrawableId":I
    .local v53, "screenshotDrawableId":I
    invoke-virtual/range {v35 .. v35}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v54, v6

    const/4 v6, 0x0

    invoke-direct {v13, v14, v15, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v11, v13}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    new-instance v13, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v14, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v15, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {v14, v15, v8, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v13, v14}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v11, v13}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 245
    invoke-virtual {v5, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 248
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 249
    new-instance v6, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 251
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 253
    new-instance v6, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v8, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_DOWN_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 254
    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v8, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v4, v6

    .line 256
    new-instance v6, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v8, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v48, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 257
    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v47, v8

    move-object/from16 v52, v58

    invoke-direct/range {v47 .. v52}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v5, v6

    .line 258
    new-instance v6, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v8, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 259
    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v8, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    new-instance v8, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {v11, v13, v10, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v6, v7, v8}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 258
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 261
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 262
    new-instance v6, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v8, -0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 264
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 266
    new-instance v6, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    const v7, 0x7f12023e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    .line 267
    .local v6, "directionVar":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v1, v6}, Lorg/catrobat/catroid/content/Project;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    .line 269
    new-instance v7, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v14, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_LEFT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 270
    invoke-virtual {v14}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v10, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v10}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v4, v7

    .line 272
    new-instance v7, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v14, Lorg/catrobat/catroid/formulaeditor/Functions;->TRUE:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 273
    invoke-virtual {v14}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v11, v13, v14, v15}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v10, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v7, v10, v6}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 272
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 275
    new-instance v7, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v7}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    .line 276
    .local v7, "setLookBrick":Lorg/catrobat/catroid/content/bricks/SetLookBrick;
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7, v10}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 277
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 279
    new-instance v10, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v13, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v14, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v36, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v15, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 280
    invoke-virtual {v15}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v35, v14

    invoke-direct/range {v35 .. v40}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v13, v14}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v10, v13}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v5, v10

    .line 281
    new-instance v10, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v13, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v14, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v15, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v35, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 282
    invoke-virtual/range {v35 .. v35}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    invoke-direct {v14, v15, v11, v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v13, v14}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v14, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v15, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {v14, v15, v9, v8}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v11, v14}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v10, v13, v11}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 281
    invoke-virtual {v5, v10}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 284
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 285
    new-instance v8, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v10, -0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 287
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 289
    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 290
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 292
    new-instance v8, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_RIGHT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 293
    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v4, v8

    .line 295
    new-instance v8, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/Functions;->TRUE:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 296
    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v9, v6}, Lorg/catrobat/catroid/content/bricks/SetVariableBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/UserVariable;)V

    .line 295
    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 298
    new-instance v8, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    move-object v7, v8

    .line 299
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 300
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 302
    new-instance v8, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v42, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 303
    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v41, v10

    move-object/from16 v46, v40

    invoke-direct/range {v41 .. v46}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v5, v8

    .line 304
    new-instance v8, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    .line 305
    invoke-virtual {v13}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v13, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-object/from16 v15, v54

    invoke-direct {v11, v13, v15, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v10, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 304
    invoke-virtual {v5, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 307
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 308
    new-instance v8, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/ChangeYByNBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 310
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 312
    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 313
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 315
    new-instance v8, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;

    const v9, 0x7f1201c2

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 317
    new-instance v8, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 318
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v4, v8

    .line 320
    new-instance v8, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    move-object v7, v8

    .line 321
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 322
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 324
    new-instance v8, Lorg/catrobat/catroid/content/bricks/WaitBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {v9, v13}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/WaitBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 326
    new-instance v8, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    move-object v7, v8

    .line 327
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 328
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 330
    new-instance v8, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    move-object v7, v8

    .line 331
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 332
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 334
    new-instance v8, Lorg/catrobat/catroid/content/bricks/WaitBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/WaitBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 336
    new-instance v8, Lorg/catrobat/catroid/content/bricks/SetLookBrick;

    invoke-direct {v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;-><init>()V

    move-object v7, v8

    .line 337
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7, v8}, Lorg/catrobat/catroid/content/bricks/SetLookBrick;->setLook(Lorg/catrobat/catroid/common/LookData;)V

    .line 338
    invoke-virtual {v4, v7}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 340
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 341
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 343
    new-instance v8, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;

    const v9, 0x7f1201c3

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/WhenGamepadButtonScript;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 345
    new-instance v8, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    new-instance v9, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v10, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    .line 346
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v10, v11, v13, v14}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v9, v10}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v8, v9}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v4, v8

    .line 348
    new-instance v8, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-direct {v8}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;-><init>()V

    .line 349
    .local v8, "playSoundBrick":Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v8, v9}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;->setSound(Lorg/catrobat/catroid/common/SoundInfo;)V

    .line 350
    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 352
    new-instance v9, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-direct {v9}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;-><init>()V

    move-object v8, v9

    .line 353
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v8, v9}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;->setSound(Lorg/catrobat/catroid/common/SoundInfo;)V

    .line 354
    invoke-virtual {v4, v8}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToElseBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 356
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 357
    invoke-virtual {v12, v3}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 359
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 360
    return-object v1

    .line 93
    .end local v2    # "loopBrick":Lorg/catrobat/catroid/content/bricks/ForeverBrick;
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "ifBrick":Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
    .end local v5    # "innerIfBrick":Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
    .end local v6    # "directionVar":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .end local v7    # "setLookBrick":Lorg/catrobat/catroid/content/bricks/SetLookBrick;
    .end local v8    # "playSoundBrick":Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;
    .end local v12    # "bird":Lorg/catrobat/catroid/content/Sprite;
    .end local v16    # "imageDir":Ljava/io/File;
    .end local v17    # "soundDir":Ljava/io/File;
    .end local v18    # "soundFileName":Ljava/lang/String;
    .end local v20    # "backgroundFile":Ljava/io/File;
    .end local v21    # "cloudDrawableId":I
    .end local v22    # "imageFileName":Ljava/lang/String;
    .end local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v24    # "backgroundDrawableId":I
    .end local v25    # "background":Lorg/catrobat/catroid/content/Sprite;
    .end local v26    # "birdLeftWingDownFile":Ljava/io/File;
    .end local v27    # "tweetFile1":Ljava/io/File;
    .end local v28    # "birdWingDownFile":Ljava/io/File;
    .end local v29    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v30    # "tweetFile2":Ljava/io/File;
    .end local v31    # "cloudFile2":Ljava/io/File;
    .end local v32    # "cloud1":Lorg/catrobat/catroid/content/Sprite;
    .end local v34    # "cloudFile1":Ljava/io/File;
    .end local v39    # "minX":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v40    # "birdX":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v45    # "maxX":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v51    # "minY":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v53    # "screenshotDrawableId":I
    .end local v57    # "maxY":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v58    # "birdY":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v59    # "cloud2":Lorg/catrobat/catroid/content/Sprite;
    .end local v60    # "birdLeftWingUpFile":Ljava/io/File;
    .end local v61    # "birdWingUpFile":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create project at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create new project at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", directory already exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
