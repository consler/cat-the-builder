.class public Lorg/catrobat/catroid/ui/SpriteActivity;
.super Lorg/catrobat/catroid/ui/BaseActivity;
.source "SpriteActivity.java"


# static fields
.field public static final BACKGROUND_CAMERA:I = 0x7

.field public static final BACKGROUND_FILE:I = 0x6

.field public static final BACKGROUND_LIBRARY:I = 0x5

.field public static final BACKGROUND_POCKET_PAINT:I = 0x4

.field public static final EDIT_LOOK:I = 0x7e4

.field public static final EXTRA_BRICK_HASH:Ljava/lang/String; = "BRICK_HASH"

.field public static final EXTRA_FRAGMENT_POSITION:Ljava/lang/String; = "fragmentPosition"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "TEXT"

.field public static final EXTRA_TEXT_ALIGNMENT:Ljava/lang/String; = "TEXT_ALIGNMENT"

.field public static final EXTRA_TEXT_COLOR:Ljava/lang/String; = "TEXT_COLOR"

.field public static final EXTRA_TEXT_SIZE:Ljava/lang/String; = "TEXT_SIZE"

.field public static final EXTRA_X_TRANSFORM:Ljava/lang/String; = "X"

.field public static final EXTRA_Y_TRANSFORM:Ljava/lang/String; = "Y"

.field public static final FRAGMENT_LOOKS:I = 0x1

.field public static final FRAGMENT_SCRIPTS:I = 0x0

.field public static final FRAGMENT_SOUNDS:I = 0x2

.field public static final LOOK_CAMERA:I = 0xb

.field public static final LOOK_FILE:I = 0xa

.field public static final LOOK_LIBRARY:I = 0x9

.field public static final LOOK_POCKET_PAINT:I = 0x8

.field public static final REQUEST_CODE_VISUAL_PLACEMENT:I = 0x7e3

.field public static final SOUND_FILE:I = 0xe

.field public static final SOUND_LIBRARY:I = 0xd

.field public static final SOUND_RECORD:I = 0xc

.field public static final SPRITE_CAMERA:I = 0x3

.field public static final SPRITE_FILE:I = 0x2

.field public static final SPRITE_LIBRARY:I = 0x1

.field public static final SPRITE_POCKET_PAINT:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private currentLookData:Lorg/catrobat/catroid/common/LookData;

.field private currentMenu:Landroid/view/Menu;

.field private currentProject:Lorg/catrobat/catroid/content/Project;

.field private currentScene:Lorg/catrobat/catroid/content/Scene;

.field private currentSprite:Lorg/catrobat/catroid/content/Sprite;

.field private generatedVariableName:Ljava/lang/String;

.field private isUndoMenuItemVisible:Z

.field private onNewLookListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;"
        }
    .end annotation
.end field

.field private onNewSoundListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onNewSpriteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private projectManager:Lorg/catrobat/catroid/ProjectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-class v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/SpriteActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseActivity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->isUndoMenuItemVisible:Z

    return-void
.end method

.method private addBackgroundFromUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 522
    const-string v0, ".png"

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addBackgroundFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private addBackgroundFromUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageExtension"    # Ljava/lang/String;

    .line 526
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "resolvedFileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 531
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 533
    .local v1, "useSpriteName":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 534
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "lookDataName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "lookFileName":Ljava/lang/String;
    goto :goto_2

    .line 537
    .end local v2    # "lookDataName":Ljava/lang/String;
    .end local v3    # "lookFileName":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .restart local v2    # "lookDataName":Ljava/lang/String;
    move-object v3, v0

    .line 541
    .restart local v3    # "lookFileName":Ljava/lang/String;
    :goto_2
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 544
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "images"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 545
    .local v4, "imageDirectory":Ljava/io/File;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v4, v3}, Lorg/catrobat/catroid/io/StorageOperations;->copyUriToDir(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 547
    .local v5, "file":Ljava/io/File;
    invoke-static {v4, v3}, Lorg/catrobat/catroid/utils/Utils;->removeExifData(Ljava/io/File;Ljava/lang/String;)V

    .line 548
    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v6, v2, v5}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 549
    .local v6, "look":Lorg/catrobat/catroid/common/LookData;
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v7

    invoke-virtual {v7}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V

    .line 551
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewLookListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    if-eqz v7, :cond_3

    .line 552
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewLookListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    invoke-interface {v7, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;->addItem(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v4    # "imageDirectory":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "look":Lorg/catrobat/catroid/common/LookData;
    :cond_3
    goto :goto_3

    .line 554
    :catch_0
    move-exception v4

    .line 555
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/SpriteActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private addLookFromUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 560
    const-string v0, ".png"

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addLookFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private addLookFromUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageExtension"    # Ljava/lang/String;

    .line 564
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "resolvedFileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 569
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 571
    .local v1, "useSpriteName":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 572
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "lookDataName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "lookFileName":Ljava/lang/String;
    goto :goto_2

    .line 575
    .end local v2    # "lookDataName":Ljava/lang/String;
    .end local v3    # "lookFileName":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .restart local v2    # "lookDataName":Ljava/lang/String;
    move-object v3, v0

    .line 579
    .restart local v3    # "lookFileName":Ljava/lang/String;
    :goto_2
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 582
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "images"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 583
    .local v4, "imageDirectory":Ljava/io/File;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v4, v3}, Lorg/catrobat/catroid/io/StorageOperations;->copyUriToDir(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 584
    .local v5, "file":Ljava/io/File;
    invoke-static {v4, v3}, Lorg/catrobat/catroid/utils/Utils;->removeExifData(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    new-instance v6, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v6, v2, v5}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 586
    .local v6, "look":Lorg/catrobat/catroid/common/LookData;
    iput-object v6, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentLookData:Lorg/catrobat/catroid/common/LookData;

    .line 587
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v7

    invoke-virtual {v7}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V

    .line 589
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewLookListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    if-eqz v7, :cond_3

    .line 590
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewLookListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    invoke-interface {v7, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;->addItem(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v4    # "imageDirectory":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "look":Lorg/catrobat/catroid/common/LookData;
    :cond_3
    goto :goto_3

    .line 592
    :catch_0
    move-exception v4

    .line 593
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/SpriteActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private addSoundFromUri(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 598
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "resolvedFileName":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 604
    .local v1, "useSpriteName":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 605
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "soundInfoName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "soundFileName":Ljava/lang/String;
    goto :goto_1

    .line 608
    .end local v2    # "soundInfoName":Ljava/lang/String;
    .end local v3    # "soundFileName":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .restart local v2    # "soundInfoName":Ljava/lang/String;
    move-object v3, v0

    .line 612
    .restart local v3    # "soundFileName":Ljava/lang/String;
    :goto_1
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 615
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "sounds"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    .local v4, "soundDirectory":Ljava/io/File;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1, v4, v3}, Lorg/catrobat/catroid/io/StorageOperations;->copyUriToDir(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 618
    .local v5, "file":Ljava/io/File;
    new-instance v6, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-direct {v6, v2, v5}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 619
    .local v6, "sound":Lorg/catrobat/catroid/common/SoundInfo;
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewSoundListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    if-eqz v7, :cond_2

    .line 621
    iget-object v7, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewSoundListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    invoke-interface {v7, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;->addItem(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v4    # "soundDirectory":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "sound":Lorg/catrobat/catroid/common/SoundInfo;
    :cond_2
    goto :goto_2

    .line 623
    :catch_0
    move-exception v4

    .line 624
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/ui/SpriteActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private addSpriteFromUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 457
    const-string v0, ".png"

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSpriteFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private addSpriteFromUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageExtension"    # Ljava/lang/String;

    .line 462
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/catrobat/catroid/io/StorageOperations;->resolveFileName(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "resolvedFileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 468
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 470
    .local v1, "useDefaultSpriteName":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 471
    const v2, 0x7f120251

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "resolvedName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "lookFileName":Ljava/lang/String;
    goto :goto_2

    .line 474
    .end local v2    # "resolvedName":Ljava/lang/String;
    .end local v3    # "lookFileName":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->getSanitizedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .restart local v2    # "resolvedName":Ljava/lang/String;
    move-object v3, v0

    .line 478
    .restart local v3    # "lookFileName":Ljava/lang/String;
    :goto_2
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v4}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iget-object v5, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "lookDataName":Ljava/lang/String;
    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v5, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v5, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v6, 0x7f12075f

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setHint(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v6

    .line 483
    invoke-virtual {v6, v4}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    iget-object v8, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    .line 484
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v6

    const v7, 0x7f1205ff

    .line 485
    invoke-virtual {p0, v7}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;

    invoke-direct {v8, p0, p1, v3}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$IFB6lpczAYE4uL-ljYm51TsMEQI;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 508
    const v6, 0x7f1205b0

    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f1201b8

    sget-object v8, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$THafpQTZ_wodMpYtVC3XdnbBNJU;->INSTANCE:Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$THafpQTZ_wodMpYtVC3XdnbBNJU;

    .line 509
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v6

    .line 518
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 519
    return-void
.end method

.method static synthetic lambda$addSpriteFromUri$1(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 511
    :try_start_0
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/ui/SpriteActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$handleAddUserDataButton$18(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "makeListCheckBox"    # Landroid/widget/CheckBox;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 813
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 814
    return-void
.end method

.method private saveProject()V
    .locals 3

    .line 320
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    .line 321
    new-instance v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;-><init>(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync()V

    .line 322
    return-void
.end method


# virtual methods
.method public addTabs()V
    .locals 1

    .line 988
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->getTabPositionInSpriteActivity(Landroidx/fragment/app/Fragment;)I

    move-result v0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->addTabLayout(Landroid/app/Activity;I)V

    .line 989
    return-void
.end method

.method public checkForChange()V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 228
    const v1, 0x7f0a041e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->changedProject(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->resetChangedFlag(Lorg/catrobat/catroid/content/Project;)V

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method public createActionBarTitle()Ljava/lang/String;
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 207
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public handleAddBackgroundButton()V
    .locals 5

    .line 686
    const v0, 0x7f0d0133

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "root":Landroid/view/View;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    const v2, 0x7f1205a8

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 695
    .local v1, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    const-string v2, "https://share.catrob.at/pocketcode/media-library/backgrounds-landscape"

    .local v2, "mediaLibraryUrl":Ljava/lang/String;
    goto :goto_0

    .line 698
    .end local v2    # "mediaLibraryUrl":Ljava/lang/String;
    :cond_0
    const-string v2, "https://share.catrob.at/pocketcode/media-library/backgrounds-portrait"

    .line 701
    .restart local v2    # "mediaLibraryUrl":Ljava/lang/String;
    :goto_0
    const v3, 0x7f0a0350

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$TUUO4ivjRIFgLlMUOTZRf4tqhsY;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$TUUO4ivjRIFgLlMUOTZRf4tqhsY;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    const v3, 0x7f0a034e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$UtCzgICfHvvVSouijQKUzN1JHT0;

    invoke-direct {v4, p0, v2, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$UtCzgICfHvvVSouijQKUzN1JHT0;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    const v3, 0x7f0a034d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$v_sQUxvkiqeSoV5dbfaieCNrKmo;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$v_sQUxvkiqeSoV5dbfaieCNrKmo;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    const v3, 0x7f0a034b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$cK42VcJu_4d308DWWXXTbymBxi4;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$cK42VcJu_4d308DWWXXTbymBxi4;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 723
    return-void
.end method

.method public handleAddButton(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 629
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->handleAddButton()V

    .line 631
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/CatblocksScriptFragment;->handleAddButton()V

    .line 635
    return-void

    .line 637
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddUserDataButton()V

    .line 639
    return-void

    .line 641
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddLookButton()V

    .line 643
    return-void

    .line 645
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SoundListFragment;

    if-eqz v0, :cond_4

    .line 646
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddSoundButton()V

    .line 648
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    if-eqz v0, :cond_5

    .line 649
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->handleAddUserListButton()V

    .line 651
    :cond_5
    return-void
.end method

.method public handleAddLookButton()V
    .locals 5

    .line 726
    const v0, 0x7f0d0133

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 728
    .local v0, "root":Landroid/view/View;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    const v2, 0x7f1205a8

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 730
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 735
    .local v1, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scene;->getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ProjectManager;->isCurrentProjectLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    const-string v2, "https://share.catrob.at/pocketcode/media-library/backgrounds-landscape"

    .local v2, "mediaLibraryUrl":Ljava/lang/String;
    goto :goto_0

    .line 739
    .end local v2    # "mediaLibraryUrl":Ljava/lang/String;
    :cond_0
    const-string v2, "https://share.catrob.at/pocketcode/media-library/backgrounds-portrait"

    .restart local v2    # "mediaLibraryUrl":Ljava/lang/String;
    goto :goto_0

    .line 742
    .end local v2    # "mediaLibraryUrl":Ljava/lang/String;
    :cond_1
    const-string v2, "https://share.catrob.at/pocketcode/media-library/looks"

    .line 745
    .restart local v2    # "mediaLibraryUrl":Ljava/lang/String;
    :goto_0
    const v3, 0x7f0a0350

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$vxrJEy8RV4P1yFEzUbj_27Jkr4Y;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$vxrJEy8RV4P1yFEzUbj_27Jkr4Y;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    const v3, 0x7f0a034e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$EZFw18U6qgMWeB8IfrbqCJO7SHc;

    invoke-direct {v4, p0, v2, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$EZFw18U6qgMWeB8IfrbqCJO7SHc;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    const v3, 0x7f0a034d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$e3ihj9QU5McBnUypxUQhUSdnCOA;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$e3ihj9QU5McBnUypxUQhUSdnCOA;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    const v3, 0x7f0a034b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$1t-Nh4fUCZ00zdAweYRiwtXKHfA;

    invoke-direct {v4, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$1t-Nh4fUCZ00zdAweYRiwtXKHfA;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 767
    return-void
.end method

.method public handleAddSoundButton()V
    .locals 5

    .line 770
    const v0, 0x7f0d0135

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 772
    .local v0, "root":Landroid/view/View;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    const v2, 0x7f1205ae

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 774
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 777
    .local v1, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    const v2, 0x7f0a0354

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$hBl2kbABUjGRUtKMLMIn9OYMXLY;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$hBl2kbABUjGRUtKMLMIn9OYMXLY;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    const v2, 0x7f0a0352

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$zF0vJYMLe22w2e8OPyZBhkD8KQk;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$zF0vJYMLe22w2e8OPyZBhkD8KQk;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    const v2, 0x7f0a0351

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$Z12s35iKO_lCgkRhtjvtLGxsXa4;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$Z12s35iKO_lCgkRhtjvtLGxsXa4;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    const v2, 0x7f0a0353

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 795
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$sFMLgE3D1vzLyduOMdng2gkeXno;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$sFMLgE3D1vzLyduOMdng2gkeXno;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 801
    return-void
.end method

.method public handleAddSpriteButton()V
    .locals 4

    .line 654
    const v0, 0x7f0d0133

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 656
    .local v0, "root":Landroid/view/View;
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    const v2, 0x7f1205b0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 661
    .local v1, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    const v2, 0x7f0a0350

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$cJ0SruqPvM4L-wAGAiWxFZa7Ed4;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$cJ0SruqPvM4L-wAGAiWxFZa7Ed4;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    const v2, 0x7f0a034e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$Bo6Himl221AKoqbE0OuAw4IWeTc;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$Bo6Himl221AKoqbE0OuAw4IWeTc;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    const v2, 0x7f0a034d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$fvm01ynx4F-hZqozHQ-upQlR2L0;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$fvm01ynx4F-hZqozHQ-upQlR2L0;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    const v2, 0x7f0a034b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$mSyxubwgGHgcyQVxF2GFYd2aQ1o;

    invoke-direct {v3, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$mSyxubwgGHgcyQVxF2GFYd2aQ1o;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 683
    return-void
.end method

.method public handleAddUserDataButton()V
    .locals 22

    .line 804
    move-object/from16 v9, p0

    const v0, 0x7f0d0137

    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 806
    .local v10, "view":Landroid/view/View;
    const v0, 0x7f0a0412

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/CheckBox;

    .line 807
    .local v11, "makeListCheckBox":Landroid/widget/CheckBox;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 809
    const v2, 0x7f0a0478

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioButton;

    .line 810
    .local v12, "multiplayerRadioButton":Landroid/widget/RadioButton;
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isMultiplayerVariablesPreferenceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 812
    new-instance v0, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$fw-atVhBdgRkVXKyPonCA8fE96g;

    invoke-direct {v0, v11}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$fw-atVhBdgRkVXKyPonCA8fE96g;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v12, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 817
    :cond_0
    const v0, 0x7f0a03ca

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/RadioButton;

    .line 819
    .local v13, "addToProjectUserDataRadioButton":Landroid/widget/RadioButton;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 821
    .local v14, "variables":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v15

    .line 822
    .local v15, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    invoke-virtual {v15}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iput-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 823
    invoke-virtual {v15}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    .line 825
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 826
    iget-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 827
    iget-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 830
    .local v8, "lists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    iget-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 831
    iget-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    invoke-direct {v0, v14}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    move-object v7, v0

    .line 834
    .local v7, "textWatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v0, v9}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 835
    .local v6, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v0, 0x7f120253

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    move-result-object v5

    .line 836
    .local v5, "uniqueVariableNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    const v2, 0x7f120241

    invoke-virtual {v6, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    move-result-object v16

    .line 837
    .local v16, "uniqueListNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    invoke-virtual {v9, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->generatedVariableName:Ljava/lang/String;

    .line 838
    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v0

    iget-object v2, v9, Lorg/catrobat/catroid/ui/SpriteActivity;->generatedVariableName:Ljava/lang/String;

    .line 839
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setText(Ljava/lang/String;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v0

    const v2, 0x7f1205ff

    .line 840
    invoke-virtual {v9, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;

    invoke-direct {v3, v9, v13, v12, v11}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$_ownblMHSUJsaZ36sgN18xAh_RA;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 871
    const v0, 0x7f1204b3

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 872
    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1201b8

    .line 873
    invoke-virtual {v9, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v17

    .line 876
    .local v17, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v4, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$imrM1jV8F74iE-JL123poTuJO7Y;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v7

    move-object v9, v4

    move-object v4, v8

    move-object/from16 v18, v5

    .end local v5    # "uniqueVariableNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    .local v18, "uniqueVariableNameProvider":Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    move-object/from16 v5, v16

    move-object/from16 v19, v6

    .end local v6    # "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    .local v19, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    move-object v6, v14

    move-object/from16 v20, v7

    .end local v7    # "textWatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    .local v20, "textWatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    move-object/from16 v7, v18

    move-object/from16 v21, v8

    .end local v8    # "lists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    .local v21, "lists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$imrM1jV8F74iE-JL123poTuJO7Y;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroidx/appcompat/app/AlertDialog;Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;Ljava/util/List;Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;Ljava/util/List;Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;Landroid/widget/RadioButton;)V

    invoke-virtual {v11, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 900
    invoke-virtual/range {v17 .. v17}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 901
    return-void
.end method

.method public handleAddUserListButton()V
    .locals 7

    .line 904
    const v0, 0x7f0d0137

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 905
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 907
    .local v1, "addToProjectUserDataRadioButton":Landroid/widget/RadioButton;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 909
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getUserLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 911
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;

    invoke-direct {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;-><init>(Ljava/util/List;)V

    .line 913
    .local v3, "textWatcher":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    new-instance v4, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {v4, p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 914
    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTextWatcher(Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v4

    .line 915
    const v5, 0x7f1205ff

    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;

    invoke-direct {v6, p0, v1}, Lorg/catrobat/catroid/ui/-$$Lambda$SpriteActivity$kLIHBdqmu5PQBLPodOujOuSbttY;-><init>(Lorg/catrobat/catroid/ui/SpriteActivity;Landroid/widget/RadioButton;)V

    invoke-virtual {v4, v5, v6}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setPositiveButton(Ljava/lang/String;Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;)Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    move-result-object v4

    .line 930
    .local v4, "builder":Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    const v5, 0x7f1203e8

    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 931
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 932
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 934
    .local v5, "alertDialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 935
    return-void
.end method

.method public handlePlayButton(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 938
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 939
    .local v0, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v1, :cond_1

    .line 940
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isCurrentlyHighlighted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->cancelHighlighting()V

    .line 943
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isCurrentlyMoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->highlightMovingItem()V

    .line 945
    return-void

    .line 949
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 950
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 952
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-static {v1, p0}, Lorg/catrobat/catroid/stage/StageActivity;->handlePlayButton(Lorg/catrobat/catroid/ProjectManager;Landroid/app/Activity;)V

    .line 953
    return-void
.end method

.method public synthetic lambda$addSpriteFromUri$0$SpriteActivity(Landroid/net/Uri;Ljava/lang/String;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "lookFileName"    # Ljava/lang/String;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "textInput"    # Ljava/lang/String;

    .line 486
    new-instance v0, Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {v0, p4}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 489
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "images"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    .local v1, "imageDirectory":Ljava/io/File;
    nop

    .line 491
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1, p2}, Lorg/catrobat/catroid/io/StorageOperations;->copyUriToDir(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 492
    .local v2, "file":Ljava/io/File;
    invoke-static {v1, p2}, Lorg/catrobat/catroid/utils/Utils;->removeExifData(Ljava/io/File;Ljava/lang/String;)V

    .line 493
    new-instance v3, Lorg/catrobat/catroid/common/LookData;

    invoke-direct {v3, p4, v2}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 494
    .local v3, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "imageDirectory":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_0

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/ui/SpriteActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewSpriteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    if-eqz v1, :cond_0

    .line 500
    invoke-interface {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;->addItem(Ljava/lang/Object;)V

    .line 501
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 502
    .local v1, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v2, v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v2, :cond_0

    .line 503
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->notifyDataSetChanged()V

    .line 506
    .end local v1    # "currentFragment":Landroidx/fragment/app/Fragment;
    :cond_0
    return-void
.end method

.method public synthetic lambda$handleAddBackgroundButton$6$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 702
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    .line 703
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->startActivityForResult(I)V

    .line 704
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 705
    return-void
.end method

.method public synthetic lambda$handleAddBackgroundButton$7$SpriteActivity(Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "mediaLibraryUrl"    # Ljava/lang/String;
    .param p2, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "view"    # Landroid/view/View;

    .line 707
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;->startActivityForResult(I)V

    .line 709
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 710
    return-void
.end method

.method public synthetic lambda$handleAddBackgroundButton$8$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 3
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 712
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;

    const v1, 0x7f120729

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-direct {v0, p0, v2, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;->startActivityForResult(I)V

    .line 714
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 715
    return-void
.end method

.method public synthetic lambda$handleAddBackgroundButton$9$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 717
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 718
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->startActivityForResult(I)V

    .line 719
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 720
    return-void
.end method

.method public synthetic lambda$handleAddLookButton$10$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 746
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    .line 747
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->startActivityForResult(I)V

    .line 748
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 749
    return-void
.end method

.method public synthetic lambda$handleAddLookButton$11$SpriteActivity(Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "mediaLibraryUrl"    # Ljava/lang/String;
    .param p2, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "view"    # Landroid/view/View;

    .line 751
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 752
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;->startActivityForResult(I)V

    .line 753
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 754
    return-void
.end method

.method public synthetic lambda$handleAddLookButton$12$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 3
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 756
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;

    const v1, 0x7f120729

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-direct {v0, p0, v2, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;->startActivityForResult(I)V

    .line 758
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 759
    return-void
.end method

.method public synthetic lambda$handleAddLookButton$13$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 761
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 762
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->startActivityForResult(I)V

    .line 763
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 764
    return-void
.end method

.method public synthetic lambda$handleAddSoundButton$14$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/soundrecorder/SoundRecorderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 779
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 780
    return-void
.end method

.method public synthetic lambda$handleAddSoundButton$15$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 783
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;

    const-string v1, "https://share.catrob.at/pocketcode/media-library/sounds"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 784
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;->startActivityForResult(I)V

    .line 785
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 786
    return-void
.end method

.method public synthetic lambda$handleAddSoundButton$16$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 3
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 788
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;

    const v1, 0x7f120755

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-direct {v0, p0, v2, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;->startActivityForResult(I)V

    .line 790
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 791
    return-void
.end method

.method public synthetic lambda$handleAddSoundButton$17$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 796
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/catrobat/catroid/pocketmusic/PocketMusicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->startActivity(Landroid/content/Intent;)V

    .line 797
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 798
    return-void
.end method

.method public synthetic lambda$handleAddSpriteButton$2$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 662
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    .line 663
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->startActivityForResult(I)V

    .line 664
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 665
    return-void
.end method

.method public synthetic lambda$handleAddSpriteButton$3$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 667
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;

    const-string v1, "https://share.catrob.at/pocketcode/media-library/looks"

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 668
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFormMediaLibraryLauncher;->startActivityForResult(I)V

    .line 669
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 670
    return-void
.end method

.method public synthetic lambda$handleAddSpriteButton$4$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 3
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 672
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;

    const v1, 0x7f120729

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-direct {v0, p0, v2, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromFileLauncher;->startActivityForResult(I)V

    .line 674
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 675
    return-void
.end method

.method public synthetic lambda$handleAddSpriteButton$5$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "view"    # Landroid/view/View;

    .line 677
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 678
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->startActivityForResult(I)V

    .line 679
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 680
    return-void
.end method

.method public synthetic lambda$handleAddUserDataButton$19$SpriteActivity(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/CheckBox;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 5
    .param p1, "addToProjectUserDataRadioButton"    # Landroid/widget/RadioButton;
    .param p2, "multiplayerRadioButton"    # Landroid/widget/RadioButton;
    .param p3, "makeListCheckBox"    # Landroid/widget/CheckBox;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "textInput"    # Ljava/lang/String;

    .line 841
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 842
    .local v0, "addToProjectUserData":Z
    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 844
    .local v1, "addToMultiplayerData":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 845
    const-string v3, "variableIndexing"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 847
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v2, p5}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;)V

    .line 849
    .local v2, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    if-eqz v0, :cond_0

    .line 850
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Project;->addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    goto :goto_0

    .line 852
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Sprite;->addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    .line 854
    .end local v2    # "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :goto_0
    goto :goto_1

    .line 855
    :cond_1
    new-instance v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-direct {v2, p5}, Lorg/catrobat/catroid/formulaeditor/UserVariable;-><init>(Ljava/lang/String;)V

    .line 856
    .local v2, "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    if-eqz v1, :cond_2

    .line 857
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Project;->addMultiplayerVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    goto :goto_1

    .line 858
    :cond_2
    if-eqz v0, :cond_3

    .line 859
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Project;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    goto :goto_1

    .line 861
    :cond_3
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/content/Sprite;->addUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Z

    .line 865
    .end local v2    # "userVariable":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :goto_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    if-eqz v2, :cond_4

    .line 866
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->notifyDataSetChanged()V

    .line 867
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->indexAndSort()V

    .line 869
    :cond_4
    return-void
.end method

.method public synthetic lambda$handleAddUserDataButton$20$SpriteActivity(Landroidx/appcompat/app/AlertDialog;Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;Ljava/util/List;Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;Ljava/util/List;Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;Landroid/widget/RadioButton;Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "alertDialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "textWatcher"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;
    .param p3, "lists"    # Ljava/util/List;
    .param p4, "uniqueListNameProvider"    # Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    .param p5, "variables"    # Ljava/util/List;
    .param p6, "uniqueVariableNameProvider"    # Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
    .param p7, "multiplayerRadioButton"    # Landroid/widget/RadioButton;
    .param p8, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p9, "checked"    # Z

    .line 877
    const v0, 0x7f0a03ec

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 878
    .local v0, "textInputEditText":Lcom/google/android/material/textfield/TextInputEditText;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "currentName":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz p9, :cond_0

    .line 880
    const v3, 0x7f1203e8

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 881
    invoke-virtual {p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->setOriginalScope(Ljava/util/List;)V

    .line 882
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->generatedVariableName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    const v3, 0x7f120241

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->generatedVariableName:Ljava/lang/String;

    .line 885
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 888
    :cond_0
    const v3, 0x7f1204b3

    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 889
    invoke-virtual {p2, p5}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->setOriginalScope(Ljava/util/List;)V

    .line 890
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->generatedVariableName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 891
    const v3, 0x7f120253

    .line 892
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/SpriteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->generatedVariableName:Ljava/lang/String;

    .line 894
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 897
    :cond_1
    :goto_0
    xor-int/lit8 v2, p9, 0x1

    invoke-virtual {p7, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 898
    return-void
.end method

.method public synthetic lambda$handleAddUserListButton$21$SpriteActivity(Landroid/widget/RadioButton;Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3
    .param p1, "addToProjectUserDataRadioButton"    # Landroid/widget/RadioButton;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "textInput"    # Ljava/lang/String;

    .line 916
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 918
    .local v0, "addToProjectUserData":Z
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-direct {v1, p3}, Lorg/catrobat/catroid/formulaeditor/UserList;-><init>(Ljava/lang/String;)V

    .line 919
    .local v1, "userList":Lorg/catrobat/catroid/formulaeditor/UserList;
    if-eqz v0, :cond_0

    .line 920
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Project;->addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    goto :goto_0

    .line 922
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Sprite;->addUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Z

    .line 925
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    if-eqz v2, :cond_1

    .line 926
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ListSelectorFragment;->notifyDataSetChanged()V

    .line 928
    :cond_1
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 967
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 968
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    invoke-static {v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->isFragmentWithTablayout(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isFinderOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 969
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->getTabPositionInSpriteActivity(Landroidx/fragment/app/Fragment;)I

    move-result v1

    invoke-static {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->addTabLayout(Landroid/app/Activity;I)V

    .line 971
    :cond_1
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 972
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 326
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 328
    const/16 v0, 0x1e61

    if-eq p2, v0, :cond_0

    const/16 v0, 0x22b8

    if-ne p2, v0, :cond_1

    .line 330
    :cond_0
    const-string v0, "ASSERTION_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 333
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    const-string v3, "TestResult"

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 335
    .local v2, "testResult":Landroid/content/ClipData;
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 338
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v2    # "testResult":Landroid/content/ClipData;
    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 339
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->isCastSharedPreferenceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    .line 340
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->isCastProject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/cast/CastManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    invoke-static {}, Lorg/catrobat/catroid/cast/CastManager;->getInstance()Lorg/catrobat/catroid/cast/CastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/cast/CastManager;->openDeviceSelectorOrDisconnectDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 345
    :cond_2
    return-void

    .line 350
    :cond_3
    const/16 v0, 0x7e3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    const-string v1, "media_file_path"

    const-string v2, ".jpg"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 409
    :pswitch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 410
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSoundFromUri(Landroid/net/Uri;)V

    .line 411
    goto/16 :goto_1

    .line 405
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 406
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSoundFromUri(Landroid/net/Uri;)V

    .line 407
    goto/16 :goto_1

    .line 399
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v1, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->getCacheCameraUri()Landroid/net/Uri;

    move-result-object v1

    .line 400
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->addLookFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 402
    goto/16 :goto_1

    .line 394
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 395
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->addLookFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 397
    goto/16 :goto_1

    .line 389
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_4
    new-instance v2, Ljava/io/File;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 390
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->addLookFromUri(Landroid/net/Uri;)V

    .line 391
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 392
    goto/16 :goto_1

    .line 384
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_5
    new-instance v1, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->getPocketPaintCacheUri()Landroid/net/Uri;

    move-result-object v1

    .line 385
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->addLookFromUri(Landroid/net/Uri;)V

    .line 386
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 387
    goto/16 :goto_1

    .line 380
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_6
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->getCacheCameraUri()Landroid/net/Uri;

    move-result-object v0

    .line 381
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->addBackgroundFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 382
    goto/16 :goto_1

    .line 376
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 377
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->addBackgroundFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 378
    goto/16 :goto_1

    .line 372
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_8
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 373
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addBackgroundFromUri(Landroid/net/Uri;)V

    .line 374
    goto/16 :goto_1

    .line 368
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_9
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->getPocketPaintCacheUri()Landroid/net/Uri;

    move-result-object v0

    .line 369
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addBackgroundFromUri(Landroid/net/Uri;)V

    .line 370
    goto/16 :goto_1

    .line 364
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_a
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->getCacheCameraUri()Landroid/net/Uri;

    move-result-object v0

    .line 365
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSpriteFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 366
    goto/16 :goto_1

    .line 360
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_b
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 361
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSpriteFromUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 362
    goto :goto_1

    .line 356
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_c
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSpriteFromUri(Landroid/net/Uri;)V

    .line 358
    goto :goto_1

    .line 352
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_d
    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->getPocketPaintCacheUri()Landroid/net/Uri;

    move-result-object v0

    .line 353
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->addSpriteFromUri(Landroid/net/Uri;)V

    .line 354
    goto :goto_1

    .line 413
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 414
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_5

    .line 415
    return-void

    .line 418
    :cond_5
    const-string v1, "xCoordinate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 419
    .local v1, "xCoordinate":I
    const-string v2, "yCoordinate"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 420
    .local v2, "yCoordinate":I
    const-string v3, "BRICK_HASH"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, "brickHash":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 423
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    const/4 v5, 0x0

    .line 425
    .local v5, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v6, v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v6, :cond_6

    .line 426
    move-object v6, v4

    check-cast v6, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v6, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->findBrickByHash(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v5

    goto :goto_0

    .line 427
    :cond_6
    instance-of v6, v4, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v6, :cond_7

    .line 428
    move-object v6, v4

    check-cast v6, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v6}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->getFormulaBrick()Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    move-result-object v5

    .line 431
    :cond_7
    :goto_0
    if-eqz v5, :cond_8

    .line 432
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;

    invoke-virtual {v6, v1, v2}, Lorg/catrobat/catroid/content/bricks/VisualPlacementBrick;->setCoordinates(II)V

    .line 433
    instance-of v6, v4, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v6, :cond_8

    .line 434
    move-object v6, v4

    check-cast v6, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v6}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->updateFragmentAfterVisualPlacement()V

    .line 438
    :cond_8
    const-string v6, "changedCoordinates"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 442
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "xCoordinate":I
    .end local v2    # "yCoordinate":I
    .end local v3    # "brickHash":I
    .end local v4    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v5    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 285
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->saveProject()V

    .line 287
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 289
    .local v0, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v1, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v1, :cond_2

    .line 290
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isCurrentlyMoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->cancelMove()V

    .line 292
    return-void

    .line 294
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isFinderOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->closeFinder()V

    .line 296
    return-void

    .line 298
    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isCurrentlyHighlighted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 299
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->cancelHighlighting()V

    .line 300
    return-void

    .line 302
    :cond_2
    instance-of v1, v0, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    if-eqz v1, :cond_3

    .line 303
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/FormulaEditorFragment;->exitFormulaEditorFragment()V

    .line 304
    return-void

    .line 305
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 307
    instance-of v1, v0, Lorg/catrobat/catroid/ui/fragment/BrickCategoryFragment;

    if-eqz v1, :cond_4

    .line 308
    const v1, 0x7f1204e6

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    goto :goto_0

    .line 309
    :cond_4
    instance-of v1, v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    if-eqz v1, :cond_5

    .line 310
    const v1, 0x7f1204e3

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/SnackbarUtil;->showHintSnackbar(Landroid/app/Activity;I)V

    .line 313
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 314
    return-void

    .line 316
    :cond_6
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onBackPressed()V

    .line 317
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 168
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    .line 175
    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 177
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->projectManager:Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    .line 179
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->setContentView(I)V

    .line 180
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 181
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 182
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->createActionBarTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->getRecentBricks(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->loadRecentBricks()V

    .line 188
    :cond_1
    const/4 v0, 0x0

    .line 190
    .local v0, "fragmentPosition":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 191
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 192
    const/4 v2, 0x0

    const-string v3, "fragmentPosition"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 194
    :cond_2
    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->loadFragment(Lorg/catrobat/catroid/ui/SpriteActivity;I)V

    .line 195
    invoke-static {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->addTabLayout(Landroid/app/Activity;I)V

    .line 196
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 212
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 213
    iput-object p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentMenu:Landroid/view/Menu;

    .line 214
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 253
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->isCurrentlyMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 256
    .local v0, "isDragAndDropActiveInFragment":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;->highlightMovingItem()V

    .line 258
    return v2

    .line 261
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0a041e

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    if-eqz v3, :cond_3

    .line 262
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->setUndoMenuItemVisibility(Z)V

    .line 263
    iget-boolean v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->isUndoMenuItemVisible:Z

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/SpriteActivity;->showUndo(Z)V

    .line 264
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 265
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    instance-of v3, v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->undo()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentLookData:Lorg/catrobat/catroid/common/LookData;

    if-eqz v3, :cond_2

    .line 266
    move-object v4, v1

    check-cast v4, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;->deleteItem(Lorg/catrobat/catroid/common/LookData;)V

    .line 267
    iget-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentLookData:Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->dispose()V

    .line 268
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentLookData:Lorg/catrobat/catroid/common/LookData;

    .line 270
    :cond_2
    return v2

    .line 273
    .end local v1    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_3
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 1

    .line 278
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseActivity;->onPause()V

    .line 279
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->saveProject()V

    .line 280
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/RecentBrickListManager;->saveRecentBrickList()V

    .line 281
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 242
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/ScriptFragment;

    if-eqz v0, :cond_0

    .line 243
    const v0, 0x7f0a031a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 244
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->isUndoMenuItemVisible:Z

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->showUndo(Z)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/LookListFragment;

    if-eqz v0, :cond_1

    .line 246
    iget-boolean v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->isUndoMenuItemVisible:Z

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/SpriteActivity;->showUndo(Z)V

    .line 248
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public registerOnNewLookListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)V"
        }
    .end annotation

    .line 449
    .local p1, "listener":Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<Lorg/catrobat/catroid/common/LookData;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewLookListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    .line 450
    return-void
.end method

.method public registerOnNewSoundListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;)V"
        }
    .end annotation

    .line 453
    .local p1, "listener":Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<Lorg/catrobat/catroid/common/SoundInfo;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewSoundListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    .line 454
    return-void
.end method

.method public registerOnNewSpriteListener(Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p1, "listener":Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface<Lorg/catrobat/catroid/content/Sprite;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->onNewSpriteListener:Lorg/catrobat/catroid/ui/recyclerview/dialog/dialoginterface/NewItemInterface;

    .line 446
    return-void
.end method

.method public removeTabs()V
    .locals 0

    .line 984
    invoke-static {p0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->removeTabLayout(Landroid/app/Activity;)V

    .line 985
    return-void
.end method

.method public setCurrentSceneAndSprite(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 979
    iput-object p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentScene:Lorg/catrobat/catroid/content/Scene;

    .line 980
    iput-object p2, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 981
    return-void
.end method

.method public setCurrentSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 975
    iput-object p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 976
    return-void
.end method

.method public setUndoMenuItemVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .line 237
    iput-boolean p1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->isUndoMenuItemVisible:Z

    .line 238
    return-void
.end method

.method public showUndo(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 219
    const v1, 0x7f0a041e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/SpriteActivity;->currentProject:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ProjectManager;->changedProject(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 958
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/SpriteActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 959
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    invoke-static {v0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->isFragmentWithTablayout(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    invoke-static {p0}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->removeTabLayout(Landroid/app/Activity;)V

    .line 962
    :cond_0
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1
.end method
