.class public Lorg/catrobat/catroid/content/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "scene"
.end annotation

.annotation runtime Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;
    value = {
        "name",
        "objectList"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient firstStart:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "name"
    .end annotation
.end field

.field private transient physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

.field private transient project:Lorg/catrobat/catroid/content/Project;

.field private spriteList:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "objectList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/Scene;->firstStart:Z

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/content/Scene;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;

    .line 73
    return-void
.end method

.method private isInvisibleSprite(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 246
    add-int/lit8 v0, p1, -0x1

    .local v0, "spriteIndex":I
    :goto_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 247
    iget-object v2, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 248
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-nez v3, :cond_0

    .line 249
    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupSprite;

    xor-int/2addr v1, v3

    return v1

    .line 246
    .end local v2    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 252
    .end local v0    # "spriteIndex":I
    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized addSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 111
    .end local p0    # "this":Lorg/catrobat/catroid/content/Scene;
    .end local p1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkForInvisibleSprites()V
    .locals 5

    .line 236
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 237
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    instance-of v2, v1, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/Scene;->isInvisibleSprite(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Sprite;->setConvertToSprite(Z)V

    .line 239
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->convert()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    .line 240
    .local v2, "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v2    # "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method public deselectElements(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;>;)V"
        }
    .end annotation

    .line 230
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserData<*>;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 231
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/Sprite;->deselectElements(Ljava/util/List;)V

    .line 232
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public editBroadcastMessagesInUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "oldMessage"    # Ljava/lang/String;
    .param p2, "newMessage"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 198
    .local v1, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 199
    .local v3, "currentScript":Lorg/catrobat/catroid/content/Script;
    instance-of v4, v3, Lorg/catrobat/catroid/content/BroadcastScript;

    if-eqz v4, :cond_0

    .line 200
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/content/BroadcastScript;

    .line 201
    .local v4, "broadcastScript":Lorg/catrobat/catroid/content/BroadcastScript;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/BroadcastScript;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {v4, p2}, Lorg/catrobat/catroid/content/BroadcastScript;->setBroadcastMessage(Ljava/lang/String;)V

    .line 205
    .end local v4    # "broadcastScript":Lorg/catrobat/catroid/content/BroadcastScript;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v4, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 207
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 208
    .local v6, "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v7, v6, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    if-eqz v7, :cond_1

    .line 209
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    .line 210
    .local v7, "broadcastMessageBrick":Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    invoke-virtual {v7, p2}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->setBroadcastMessage(Ljava/lang/String;)V

    .line 214
    .end local v6    # "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v7    # "broadcastMessageBrick":Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;
    :cond_1
    goto :goto_2

    .line 215
    .end local v3    # "currentScript":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    goto :goto_1

    .line 216
    .end local v1    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_0

    .line 217
    :cond_4
    return-void
.end method

.method public getBackgroundSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/Sprite;

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBroadcastMessagesInUse()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 179
    .local v0, "messagesInUse":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 180
    .local v2, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Script;

    .line 181
    .local v4, "currentScript":Lorg/catrobat/catroid/content/Script;
    instance-of v5, v4, Lorg/catrobat/catroid/content/BroadcastScript;

    if-eqz v5, :cond_0

    .line 182
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/content/BroadcastScript;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/BroadcastScript;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v5, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v4, v5}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 186
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 187
    .local v7, "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v8, v7, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    if-eqz v8, :cond_1

    .line 188
    move-object v8, v7

    check-cast v8, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;

    invoke-virtual {v8}, Lorg/catrobat/catroid/content/bricks/BroadcastMessageBrick;->getBroadcastMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v7    # "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_2

    .line 191
    .end local v4    # "currentScript":Lorg/catrobat/catroid/content/Script;
    .end local v5    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    goto :goto_1

    .line 192
    .end local v2    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_0

    .line 193
    :cond_4
    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->backpackSceneDirectory:Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/catroid/content/Scene;->name:Ljava/lang/String;

    .line 142
    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/content/Scene;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Scene;->resetPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    return-object v0
.end method

.method public getProject()Lorg/catrobat/catroid/content/Project;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;

    return-object v0
.end method

.method public getSprite(Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;
    .locals 3
    .param p1, "spriteName"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 97
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    return-object v1

    .line 100
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpriteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    return-object v0
.end method

.method public removeClonedSprites()V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/content/Sprite;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 151
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    iget-boolean v2, v1, Lorg/catrobat/catroid/content/Sprite;->isClone:Z

    if-eqz v2, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 154
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 155
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/content/Sprite;>;"
    :cond_1
    return-void
.end method

.method public declared-synchronized removeSprite(Lorg/catrobat/catroid/content/Sprite;)Z
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 119
    .end local p0    # "this":Lorg/catrobat/catroid/content/Scene;
    .end local p1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeSpriteFromCloneBricks(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 9
    .param p1, "spriteToDelete"    # Lorg/catrobat/catroid/content/Sprite;

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 159
    .local v1, "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 161
    .local v3, "currentScript":Lorg/catrobat/catroid/content/Script;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v4, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 163
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 164
    .local v6, "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v7, v6, Lorg/catrobat/catroid/content/bricks/CloneBrick;

    if-eqz v7, :cond_0

    .line 165
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/bricks/CloneBrick;

    .line 166
    .local v7, "cloneBrick":Lorg/catrobat/catroid/content/bricks/CloneBrick;
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/CloneBrick;->getSelectedItem()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 167
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/CloneBrick;->getSelectedItem()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/catrobat/catroid/content/Sprite;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 168
    invoke-virtual {v7}, Lorg/catrobat/catroid/content/bricks/CloneBrick;->resetSpinner()V

    .line 171
    .end local v6    # "currentBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v7    # "cloneBrick":Lorg/catrobat/catroid/content/bricks/CloneBrick;
    :cond_0
    goto :goto_2

    .line 172
    .end local v3    # "currentScript":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_1
    goto :goto_1

    .line 174
    .end local v1    # "currentSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_0

    .line 175
    :cond_3
    return-void
.end method

.method public declared-synchronized resetPhysicsWorld()Lorg/catrobat/catroid/physics/PhysicsWorld;
    .locals 3

    monitor-enter p0

    .line 130
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/physics/PhysicsWorld;

    iget-object v1, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;

    .line 131
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    iget-object v2, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;

    .line 132
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    iget v2, v2, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/physics/PhysicsWorld;-><init>(II)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/Scene;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-object v0

    .line 129
    .end local p0    # "this":Lorg/catrobat/catroid/content/Scene;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 80
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/content/Scene;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Lorg/catrobat/catroid/content/Scene;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPhysicsWorld(Lorg/catrobat/catroid/physics/PhysicsWorld;)V
    .locals 0
    .param p1, "world"    # Lorg/catrobat/catroid/physics/PhysicsWorld;

    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/content/Scene;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    .end local p0    # "this":Lorg/catrobat/catroid/content/Scene;
    .end local p1    # "world":Lorg/catrobat/catroid/physics/PhysicsWorld;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProject(Lorg/catrobat/catroid/content/Project;)V
    .locals 0
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    monitor-enter p0

    .line 88
    :try_start_0
    iput-object p1, p0, Lorg/catrobat/catroid/content/Scene;->project:Lorg/catrobat/catroid/content/Project;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Lorg/catrobat/catroid/content/Scene;
    .end local p1    # "project":Lorg/catrobat/catroid/content/Project;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .line 220
    .local p3, "item":Lorg/catrobat/catroid/formulaeditor/UserData;, "Lorg/catrobat/catroid/formulaeditor/UserData<*>;"
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/content/Project;->isGlobalVariable(Lorg/catrobat/catroid/formulaeditor/UserData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/catrobat/catroid/content/Scene;->spriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 222
    .local v1, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v1, p1, p2, p3}, Lorg/catrobat/catroid/content/Sprite;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 223
    .end local v1    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 225
    :cond_1
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/catroid/content/Sprite;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 227
    :goto_1
    return-void
.end method
