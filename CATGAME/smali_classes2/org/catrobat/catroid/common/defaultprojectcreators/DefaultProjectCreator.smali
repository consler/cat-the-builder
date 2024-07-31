.class public Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;
.super Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;
.source "DefaultProjectCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;-><init>()V

    .line 70
    const v0, 0x7f120247

    iput v0, p0, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->defaultProjectNameResourceId:I

    .line 71
    return-void
.end method


# virtual methods
.method public createDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;
    .locals 36
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "landscapeMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    move-object/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Lorg/catrobat/catroid/content/Project;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3, v1}, Lorg/catrobat/catroid/content/Project;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 77
    .local v2, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 85
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    const v4, 0x7f0800f2

    .line 95
    .local v4, "backgroundDrawableId":I
    const v5, 0x7f0800f8

    .line 96
    .local v5, "cloudDrawableId":I
    const v6, 0x7f0800fb

    .local v6, "screenshotDrawableId":I
    goto :goto_0

    .line 98
    .end local v4    # "backgroundDrawableId":I
    .end local v5    # "cloudDrawableId":I
    .end local v6    # "screenshotDrawableId":I
    :cond_0
    const v4, 0x7f0800f3

    .line 99
    .restart local v4    # "backgroundDrawableId":I
    const v5, 0x7f0800f9

    .line 100
    .restart local v5    # "cloudDrawableId":I
    const v6, 0x7f0800fa

    .line 103
    .restart local v6    # "screenshotDrawableId":I
    :goto_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v14, v7

    .line 104
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    iget v7, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v9, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    sget v10, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_HEIGHT:I

    invoke-static {v7, v8, v9, v10}, Lorg/catrobat/catroid/utils/ImageEditing;->calculateScaleFactor(IIII)D

    move-result-wide v7

    sput-wide v7, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->backgroundImageScaleFactor:D

    .line 113
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v13

    .line 115
    .local v13, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v9, Ljava/io/File;

    invoke-virtual {v13}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "images"

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v9, "imageDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v13}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v8

    const-string v10, "sounds"

    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v7

    .line 118
    .local v11, "soundDir":Ljava/io/File;
    const-string v22, "img.png"

    .line 119
    .local v22, "imageFileName":Ljava/lang/String;
    const-string v12, "snd.wav"

    .line 121
    .local v12, "soundFileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-wide v16, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->backgroundImageScaleFactor:D

    move v8, v4

    move-object/from16 v10, v22

    move-object v1, v11

    move-object v3, v12

    .end local v11    # "soundDir":Ljava/io/File;
    .end local v12    # "soundFileName":Ljava/lang/String;
    .local v1, "soundDir":Ljava/io/File;
    .local v3, "soundFileName":Ljava/lang/String;
    move-wide/from16 v11, v16

    invoke-static/range {v7 .. v12}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v7

    .line 127
    .local v7, "backgroundFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-wide v16, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->backgroundImageScaleFactor:D

    move v11, v5

    move-object v12, v9

    move-object v8, v13

    .end local v13    # "scene":Lorg/catrobat/catroid/content/Scene;
    .local v8, "scene":Lorg/catrobat/catroid/content/Scene;
    move-object/from16 v13, v22

    move-object/from16 v23, v14

    move/from16 v24, v15

    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v23, "options":Landroid/graphics/BitmapFactory$Options;
    move-wide/from16 v14, v16

    invoke-static/range {v10 .. v15}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v14

    .line 133
    .local v14, "cloudFile1":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-wide v15, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->backgroundImageScaleFactor:D

    move/from16 v25, v4

    move-object v4, v14

    .end local v14    # "cloudFile1":Ljava/io/File;
    .local v4, "cloudFile1":Ljava/io/File;
    .local v25, "backgroundDrawableId":I
    move-wide v14, v15

    invoke-static/range {v10 .. v15}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v14

    .line 139
    .local v14, "cloudFile2":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800f6

    sget-wide v20, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->backgroundImageScaleFactor:D

    move-object/from16 v18, v9

    move-object/from16 v19, v22

    invoke-static/range {v16 .. v21}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v15

    .line 145
    .local v15, "birdWingUpFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0800f4

    sget-wide v20, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultProjectCreator;->backgroundImageScaleFactor:D

    invoke-static/range {v16 .. v21}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    move-result-object v13

    .line 151
    .local v13, "birdWingDownFile":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f110000

    invoke-static {v10, v11, v1, v3}, Lorg/catrobat/catroid/io/ResourceImporter;->createSoundFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 156
    .local v12, "tweetFile1":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110001

    invoke-static {v10, v11, v1, v3}, Lorg/catrobat/catroid/io/ResourceImporter;->createSoundFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 161
    .local v11, "tweetFile2":Ljava/io/File;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 163
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v16

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 161
    const-string v19, "automatic_screenshot.png"

    move-object/from16 v26, v11

    .end local v11    # "tweetFile2":Ljava/io/File;
    .local v26, "tweetFile2":Ljava/io/File;
    move v11, v6

    move-object/from16 v27, v12

    .end local v12    # "tweetFile1":Ljava/io/File;
    .local v27, "tweetFile1":Ljava/io/File;
    move-object/from16 v12, v16

    move-object/from16 v16, v1

    move-object v1, v13

    .end local v13    # "birdWingDownFile":Ljava/io/File;
    .local v1, "birdWingDownFile":Ljava/io/File;
    .local v16, "soundDir":Ljava/io/File;
    move-object/from16 v13, v19

    move-object/from16 v19, v3

    move/from16 v20, v5

    move-object v3, v14

    move-object v5, v15

    .end local v14    # "cloudFile2":Ljava/io/File;
    .end local v15    # "birdWingUpFile":Ljava/io/File;
    .local v3, "cloudFile2":Ljava/io/File;
    .local v5, "birdWingUpFile":Ljava/io/File;
    .local v19, "soundFileName":Ljava/lang/String;
    .local v20, "cloudDrawableId":I
    move-wide/from16 v14, v17

    invoke-static/range {v10 .. v15}, Lorg/catrobat/catroid/io/ResourceImporter;->createImageFileFromResourcesInDirectory(Landroid/content/res/Resources;ILjava/io/File;Ljava/lang/String;D)Ljava/io/File;

    .line 167
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/catrobat/catroid/content/Sprite;

    .line 168
    .local v10, "background":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v10}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v12

    new-instance v13, Lorg/catrobat/catroid/common/LookData;

    const v14, 0x7f120242

    .line 169
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v7}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v12, Lorg/catrobat/catroid/content/Sprite;

    const v13, 0x7f120244

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 172
    .local v12, "cloud1":Lorg/catrobat/catroid/content/Sprite;
    new-instance v13, Lorg/catrobat/catroid/content/Sprite;

    const v14, 0x7f120245

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 173
    .local v13, "cloud2":Lorg/catrobat/catroid/content/Sprite;
    new-instance v14, Lorg/catrobat/catroid/content/Sprite;

    const v15, 0x7f12024a

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 175
    .local v14, "bird":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v8, v12}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 176
    invoke-virtual {v8, v13}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 177
    invoke-virtual {v8, v14}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 179
    invoke-virtual {v12}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v15

    new-instance v11, Lorg/catrobat/catroid/common/LookData;

    .line 180
    move/from16 v18, v6

    .end local v6    # "screenshotDrawableId":I
    .local v18, "screenshotDrawableId":I
    const v6, 0x7f120243

    move-object/from16 v21, v7

    .end local v7    # "backgroundFile":Ljava/io/File;
    .local v21, "backgroundFile":Ljava/io/File;
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v11, v7, v4}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v13}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    new-instance v11, Lorg/catrobat/catroid/common/LookData;

    .line 182
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6, v3}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/common/LookData;

    const v11, 0x7f12024c

    .line 184
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v5}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/common/LookData;

    const v11, 0x7f12024b

    .line 186
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v1}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/common/SoundInfo;

    const v11, 0x7f12024d

    .line 188
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, v27

    .end local v27    # "tweetFile1":Ljava/io/File;
    .local v15, "tweetFile1":Ljava/io/File;
    invoke-direct {v7, v11, v15}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/common/SoundInfo;

    const v11, 0x7f12024e

    .line 190
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v26

    .end local v26    # "tweetFile2":Ljava/io/File;
    .local v0, "tweetFile2":Ljava/io/File;
    invoke-direct {v7, v11, v0}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v6, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v6}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    .line 193
    .local v6, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v7, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v17, 0x0

    .end local v0    # "tweetFile2":Ljava/io/File;
    .restart local v26    # "tweetFile2":Ljava/io/File;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v27, v1

    .end local v1    # "birdWingDownFile":Ljava/io/File;
    .local v27, "birdWingDownFile":Ljava/io/File;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v7, v11, v0}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 194
    new-instance v0, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v7, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v28, v3

    const/4 v11, 0x0

    .end local v3    # "cloudFile2":Ljava/io/File;
    .local v28, "cloudFile2":Ljava/io/File;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v7, v3}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 195
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v3, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 197
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    .line 198
    .local v0, "loopBrick":Lorg/catrobat/catroid/content/bricks/ForeverBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v7, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v7, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v29, v4

    const/4 v11, 0x0

    .end local v4    # "cloudFile1":Ljava/io/File;
    .local v29, "cloudFile1":Ljava/io/File;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/16 v11, 0xa

    move-object/from16 v30, v5

    .end local v5    # "birdWingUpFile":Ljava/io/File;
    .local v30, "birdWingUpFile":Ljava/io/File;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v1, v3, v7, v4}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 199
    new-instance v1, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v3, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v4, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v1, v3, v4}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 201
    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 202
    invoke-virtual {v12, v6}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 204
    new-instance v1, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    .line 205
    .end local v6    # "script":Lorg/catrobat/catroid/content/Script;
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v3, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v5, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 207
    new-instance v3, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    move-object v0, v3

    .line 208
    new-instance v3, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v5, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v6, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v3, v4, v5, v6}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 209
    new-instance v3, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;

    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    sget v5, Lorg/catrobat/catroid/common/ScreenValues;->SCREEN_WIDTH:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v3, v4, v5}, Lorg/catrobat/catroid/content/bricks/PlaceAtBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 211
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 212
    invoke-virtual {v13, v1}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 214
    new-instance v3, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v3}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    move-object v1, v3

    .line 216
    new-instance v3, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    move-object v0, v3

    .line 218
    new-instance v3, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/Functions;->RAND:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 220
    invoke-virtual {v5}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 222
    .local v3, "randomElement1":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 224
    invoke-virtual {v7}, Lorg/catrobat/catroid/formulaeditor/Operators;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 227
    .local v4, "randomElement1LeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    const-string v11, "300"

    invoke-direct {v5, v7, v11, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 232
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setLeftChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 233
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {v5, v7, v11, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {v3, v5}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 238
    new-instance v5, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v5, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 240
    .local v5, "randomGlide1":Lorg/catrobat/catroid/formulaeditor/Formula;
    new-instance v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->FUNCTION:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v31, Lorg/catrobat/catroid/formulaeditor/Functions;->RAND:Lorg/catrobat/catroid/formulaeditor/Functions;

    .line 242
    move-object/from16 v32, v3

    .end local v3    # "randomElement1":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .local v32, "randomElement1":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-virtual/range {v31 .. v31}, Lorg/catrobat/catroid/formulaeditor/Functions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v11, v3, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    move-object v3, v7

    .line 245
    .local v3, "randomElement2":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v6, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 247
    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Operators;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v7, v11, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 250
    .local v6, "randomElement2LeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    new-instance v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-object/from16 v31, v4

    .end local v4    # "randomElement1LeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .local v31, "randomElement1LeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    const-string v4, "200"

    invoke-direct {v7, v11, v4, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 255
    invoke-virtual {v3, v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setLeftChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 256
    new-instance v7, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v11, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {v7, v11, v4, v3}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {v3, v7}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setRightChild(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 261
    new-instance v4, Lorg/catrobat/catroid/formulaeditor/Formula;

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    .line 263
    .local v4, "randomGlide2":Lorg/catrobat/catroid/formulaeditor/Formula;
    new-instance v7, Lorg/catrobat/catroid/content/bricks/GlideToBrick;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    move-object/from16 v33, v3

    .end local v3    # "randomElement2":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .local v33, "randomElement2":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v11, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v7, v5, v4, v11}, Lorg/catrobat/catroid/content/bricks/GlideToBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    move-object v3, v7

    .line 264
    .local v3, "glideToBrick":Lorg/catrobat/catroid/content/bricks/GlideToBrick;
    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 266
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 267
    invoke-virtual {v14, v1}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 269
    new-instance v7, Lorg/catrobat/catroid/content/StartScript;

    invoke-direct {v7}, Lorg/catrobat/catroid/content/StartScript;-><init>()V

    move-object v1, v7

    .line 271
    new-instance v7, Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    invoke-direct {v7}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;-><init>()V

    move-object v0, v7

    .line 272
    new-instance v7, Lorg/catrobat/catroid/content/bricks/NextLookBrick;

    invoke-direct {v7}, Lorg/catrobat/catroid/content/bricks/NextLookBrick;-><init>()V

    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 273
    new-instance v7, Lorg/catrobat/catroid/content/bricks/WaitBrick;

    new-instance v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    const-wide v34, 0x3fc999999999999aL    # 0.2

    move-object/from16 v24, v3

    .end local v3    # "glideToBrick":Lorg/catrobat/catroid/content/bricks/GlideToBrick;
    .local v24, "glideToBrick":Lorg/catrobat/catroid/content/bricks/GlideToBrick;
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v11, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Double;)V

    invoke-direct {v7, v11}, Lorg/catrobat/catroid/content/bricks/WaitBrick;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    invoke-virtual {v0, v7}, Lorg/catrobat/catroid/content/bricks/ForeverBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 275
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 276
    invoke-virtual {v14, v1}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 278
    new-instance v3, Lorg/catrobat/catroid/content/WhenScript;

    invoke-direct {v3}, Lorg/catrobat/catroid/content/WhenScript;-><init>()V

    move-object v1, v3

    .line 279
    new-instance v3, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;

    invoke-direct {v3}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;-><init>()V

    .line 280
    .local v3, "playSoundBrick":Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;
    invoke-virtual {v14}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v3, v7}, Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;->setSound(Lorg/catrobat/catroid/common/SoundInfo;)V

    .line 281
    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/Script;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 282
    invoke-virtual {v14, v1}, Lorg/catrobat/catroid/content/Sprite;->addScript(Lorg/catrobat/catroid/content/Script;)V

    .line 284
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v7

    invoke-virtual {v7, v2}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 285
    return-object v2

    .line 86
    .end local v0    # "loopBrick":Lorg/catrobat/catroid/content/bricks/ForeverBrick;
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v3    # "playSoundBrick":Lorg/catrobat/catroid/content/bricks/PlaySoundBrick;
    .end local v4    # "randomGlide2":Lorg/catrobat/catroid/formulaeditor/Formula;
    .end local v5    # "randomGlide1":Lorg/catrobat/catroid/formulaeditor/Formula;
    .end local v6    # "randomElement2LeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v8    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v9    # "imageDir":Ljava/io/File;
    .end local v10    # "background":Lorg/catrobat/catroid/content/Sprite;
    .end local v12    # "cloud1":Lorg/catrobat/catroid/content/Sprite;
    .end local v13    # "cloud2":Lorg/catrobat/catroid/content/Sprite;
    .end local v14    # "bird":Lorg/catrobat/catroid/content/Sprite;
    .end local v15    # "tweetFile1":Ljava/io/File;
    .end local v16    # "soundDir":Ljava/io/File;
    .end local v18    # "screenshotDrawableId":I
    .end local v19    # "soundFileName":Ljava/lang/String;
    .end local v20    # "cloudDrawableId":I
    .end local v21    # "backgroundFile":Ljava/io/File;
    .end local v22    # "imageFileName":Ljava/lang/String;
    .end local v23    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v24    # "glideToBrick":Lorg/catrobat/catroid/content/bricks/GlideToBrick;
    .end local v25    # "backgroundDrawableId":I
    .end local v26    # "tweetFile2":Ljava/io/File;
    .end local v27    # "birdWingDownFile":Ljava/io/File;
    .end local v28    # "cloudFile2":Ljava/io/File;
    .end local v29    # "cloudFile1":Ljava/io/File;
    .end local v30    # "birdWingUpFile":Ljava/io/File;
    .end local v31    # "randomElement1LeftChild":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v32    # "randomElement1":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .end local v33    # "randomElement2":Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create project at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create new project at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", directory already exists."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
