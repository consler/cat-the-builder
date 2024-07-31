.class public final Lorg/catrobat/catroid/ui/controller/BackpackListManager;
.super Ljava/lang/Object;
.source "BackpackListManager.java"


# static fields
.field private static final INSTANCE:Lorg/catrobat/catroid/ui/controller/BackpackListManager;


# instance fields
.field private backpack:Lorg/catrobat/catroid/common/Backpack;

.field public final backpackDirectory:Ljava/io/File;

.field public final backpackFile:Ljava/io/File;

.field public final backpackImageDirectory:Ljava/io/File;

.field public final backpackSceneDirectory:Ljava/io/File;

.field private backpackSerializer:Lorg/catrobat/catroid/io/BackpackSerializer;

.field public final backpackSoundDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->INSTANCE:Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    const-string v2, "backpack"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackDirectory:Ljava/io/File;

    .line 55
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackDirectory:Ljava/io/File;

    const-string v2, "backpack.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackFile:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackDirectory:Ljava/io/File;

    const-string v2, "scenes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSceneDirectory:Ljava/io/File;

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackDirectory:Ljava/io/File;

    const-string v2, "backpack_sound"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSoundDirectory:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackDirectory:Ljava/io/File;

    const-string v2, "backpack_image"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackImageDirectory:Ljava/io/File;

    .line 60
    new-instance v0, Lorg/catrobat/catroid/common/Backpack;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/Backpack;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpack:Lorg/catrobat/catroid/common/Backpack;

    .line 62
    new-instance v0, Lorg/catrobat/catroid/io/BackpackSerializer;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/io/BackpackSerializer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSerializer:Lorg/catrobat/catroid/io/BackpackSerializer;

    .line 69
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->createBackpackDirectories()V

    .line 70
    return-void
.end method

.method private createBackpackDirectories()V
    .locals 1

    .line 73
    sget-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSceneDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackImageDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSoundDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 78
    return-void
.end method

.method public static getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;
    .locals 1

    .line 65
    sget-object v0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->INSTANCE:Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    return-object v0
.end method

.method private setLookFileReferences(Ljava/util/List;Ljava/io/File;)V
    .locals 4
    .param p2, "parentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 165
    .local p1, "looks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/LookData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/LookData;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/LookData;

    .line 167
    .local v1, "lookData":Lorg/catrobat/catroid/common/LookData;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/LookData;->getXstreamFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v2, "lookFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/common/LookData;->setFile(Ljava/io/File;)V

    goto :goto_1

    .line 172
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 174
    .end local v1    # "lookData":Lorg/catrobat/catroid/common/LookData;
    .end local v2    # "lookFile":Ljava/io/File;
    :goto_1
    goto :goto_0

    .line 175
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/LookData;>;"
    :cond_1
    return-void
.end method

.method private setSoundFileReferences(Ljava/util/List;Ljava/io/File;)V
    .locals 4
    .param p2, "parentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 178
    .local p1, "sounds":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/SoundInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/SoundInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/SoundInfo;

    .line 180
    .local v1, "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lorg/catrobat/catroid/common/SoundInfo;->getXstreamFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    .local v2, "soundFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/common/SoundInfo;->setFile(Ljava/io/File;)V

    goto :goto_1

    .line 185
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 187
    .end local v1    # "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    .end local v2    # "soundFile":Ljava/io/File;
    :goto_1
    goto :goto_0

    .line 188
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/SoundInfo;>;"
    :cond_1
    return-void
.end method

.method private setSpriteFileReferences(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .param p2, "parentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 158
    .local p1, "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 159
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "images"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setLookFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 160
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "sounds"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setSoundFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 161
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public addScriptToBackPack(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "scriptGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Script;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p2, "scripts":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Script;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedScripts:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public addUserDefinedBrickToBackPack(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "scriptGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p2, "userDefinedBricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedUserDefinedBricks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public getBackpack()Lorg/catrobat/catroid/common/Backpack;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpack:Lorg/catrobat/catroid/common/Backpack;

    return-object v0
.end method

.method public getBackpackedLooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedLooks:Ljava/util/List;

    return-object v0
.end method

.method public getBackpackedScriptGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/common/Backpack;->backpackedScripts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBackpackedScripts()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Script;",
            ">;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedScripts:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBackpackedSounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/SoundInfo;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedSounds:Ljava/util/List;

    return-object v0
.end method

.method public getBackpackedUserDefinedBricks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/UserDefinedBrick;",
            ">;>;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedUserDefinedBricks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getScenes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Scene;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedScenes:Ljava/util/List;

    return-object v0
.end method

.method public getSprites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedSprites:Ljava/util/List;

    return-object v0
.end method

.method public isBackpackEmpty()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedLooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScriptGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedSounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method public loadBackpack()V
    .locals 4

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSerializer:Lorg/catrobat/catroid/io/BackpackSerializer;

    invoke-virtual {v0}, Lorg/catrobat/catroid/io/BackpackSerializer;->loadBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpack:Lorg/catrobat/catroid/common/Backpack;

    .line 136
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getScenes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 137
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setSpriteFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 138
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 141
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackImageDirectory:Ljava/io/File;

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setLookFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 143
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSoundDirectory:Ljava/io/File;

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setSoundFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 145
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedLooks()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackImageDirectory:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setLookFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 148
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedSounds()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSoundDirectory:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->setSoundFileReferences(Ljava/util/List;Ljava/io/File;)V

    .line 150
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpackedScripts()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 151
    .local v1, "scripts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/catrobat/catroid/content/Script;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 152
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->setParents()V

    .line 153
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_3

    .line 154
    .end local v1    # "scripts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/catrobat/catroid/content/Script;>;"
    :cond_2
    goto :goto_2

    .line 155
    :cond_3
    return-void
.end method

.method public removeItemFromScriptBackPack(Ljava/lang/String;)V
    .locals 1
    .param p1, "scriptGroup"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/Backpack;->backpackedScripts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public saveBackpack()V
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSerializer:Lorg/catrobat/catroid/io/BackpackSerializer;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getBackpack()Lorg/catrobat/catroid/common/Backpack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/BackpackSerializer;->saveBackpack(Lorg/catrobat/catroid/common/Backpack;)Z

    .line 131
    return-void
.end method
