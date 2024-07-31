.class public Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;
.super Ljava/lang/Object;
.source "SceneController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

.field private uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 56
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    return-void
.end method

.method private copyScreenshot(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "sourceDirectory"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;

    .line 120
    new-instance v0, Ljava/io/File;

    const-string v1, "manual_screenshot.png"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "screenshotFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/io/File;

    const-string v2, "automatic_screenshot.png"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :try_start_0
    invoke-static {v0, p2}, Lorg/catrobat/catroid/io/StorageOperations;->copyFileToDir(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "exception":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v1    # "exception":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method private createDirectory(Ljava/io/File;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .line 166
    new-instance v0, Ljava/io/File;

    const-string v1, "images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v0, "imageDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "sounds"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v1, "soundDir":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    :try_start_0
    invoke-static {p1}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_1

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public static newSceneWithBackgroundSprite(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;
    .locals 4
    .param p0, "sceneName"    # Ljava/lang/String;
    .param p1, "backgroundName"    # Ljava/lang/String;
    .param p2, "dstProject"    # Lorg/catrobat/catroid/content/Project;

    .line 59
    new-instance v0, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {v0, p0, p2}, Lorg/catrobat/catroid/content/Scene;-><init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V

    .line 60
    .local v0, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v1, Lorg/catrobat/catroid/content/Sprite;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "backgroundSprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    .line 62
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Scene;->addSprite(Lorg/catrobat/catroid/content/Sprite;)V

    .line 63
    return-object v0
.end method


# virtual methods
.method public copy(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;
    .locals 6
    .param p1, "sceneToCopy"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "dstProject"    # Lorg/catrobat/catroid/content/Project;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/Scene;-><init>()V

    .line 101
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Scene;->setName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, p2}, Lorg/catrobat/catroid/content/Scene;->setProject(Lorg/catrobat/catroid/content/Project;)V

    .line 104
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->createDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    new-instance v2, Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-direct {v2}, Lorg/catrobat/catroid/physics/PhysicsWorld;-><init>()V

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Scene;->setPhysicsWorld(Lorg/catrobat/catroid/physics/PhysicsWorld;)V

    .line 110
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 111
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v5, v3, p2, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->copy(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->copyScreenshot(Ljava/io/File;Ljava/io/File;)V

    .line 116
    return-object v1

    .line 105
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory for Scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be created."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public delete(Lorg/catrobat/catroid/content/Scene;)V
    .locals 1
    .param p1, "sceneToDelete"    # Lorg/catrobat/catroid/content/Scene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Project;->removeScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 137
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/io/StorageOperations;->deleteDir(Ljava/io/File;)V

    .line 138
    return-void
.end method

.method public pack(Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Scene;
    .locals 7
    .param p1, "sceneToPack"    # Lorg/catrobat/catroid/content/Scene;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->uniqueNameProvider:Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;

    .line 142
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getScenes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/catrobat/catroid/content/Scene;

    invoke-direct {v1}, Lorg/catrobat/catroid/content/Scene;-><init>()V

    .line 145
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Scene;->setName(Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Scene;->setProject(Lorg/catrobat/catroid/content/Project;)V

    .line 148
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->createDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Sprite;

    .line 153
    .local v4, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->spriteController:Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    invoke-virtual {v6, v4, v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->copy(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Scene;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->copyScreenshot(Ljava/io/File;Ljava/io/File;)V

    .line 158
    return-object v1

    .line 149
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory for Scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be created."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public rename(Lorg/catrobat/catroid/content/Scene;Ljava/lang/String;)Z
    .locals 12
    .param p1, "sceneToRename"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "name"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    .line 68
    .local v0, "renamed":Z
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "previousName":Ljava/lang/String;
    invoke-static {p2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "encodedName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v4

    .line 72
    .local v4, "oldDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 76
    :cond_0
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/content/Scene;->setName(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/Scene;

    .line 79
    .local v6, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/Sprite;

    .line 80
    .local v8, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/Sprite;->getAllBricks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 81
    .local v10, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v11, v10, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;

    if-eqz v11, :cond_1

    move-object v11, v10

    check-cast v11, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;

    .line 82
    invoke-virtual {v11}, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->getSceneToStart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 83
    move-object v11, v10

    check-cast v11, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;

    invoke-virtual {v11, p2}, Lorg/catrobat/catroid/content/bricks/SceneStartBrick;->setSceneToStart(Ljava/lang/String;)V

    .line 85
    :cond_1
    instance-of v11, v10, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;

    .line 86
    invoke-virtual {v11}, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;->getSceneForTransition()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 87
    move-object v11, v10

    check-cast v11, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;

    invoke-virtual {v11, p2}, Lorg/catrobat/catroid/content/bricks/SceneTransitionBrick;->setSceneForTransition(Ljava/lang/String;)V

    .line 89
    .end local v10    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_2

    .line 90
    .end local v8    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_1

    .line 91
    .end local v6    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_4
    goto :goto_0

    .line 94
    :cond_5
    return v0
.end method

.method public unpack(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;
    .locals 1
    .param p1, "sceneToUnpack"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "dstProject"    # Lorg/catrobat/catroid/content/Project;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SceneController;->copy(Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    return-object v0
.end method
