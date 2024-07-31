.class public Lorg/catrobat/catroid/content/GroupSprite;
.super Lorg/catrobat/catroid/content/Sprite;
.source "GroupSprite.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient collapsed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Sprite;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/GroupSprite;->collapsed:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/GroupSprite;->collapsed:Z

    .line 45
    return-void
.end method

.method public static getSpritesFromGroupWithGroupName(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .line 79
    .local p1, "sprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    const/4 v1, 0x0

    .line 81
    .local v1, "position":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 82
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    goto :goto_1

    .line 85
    :cond_0
    nop

    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .local v2, "childPosition":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 88
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 89
    .local v3, "spriteToCheck":Lorg/catrobat/catroid/content/Sprite;
    instance-of v4, v3, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v4, :cond_2

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v3    # "spriteToCheck":Lorg/catrobat/catroid/content/Sprite;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    .end local v2    # "childPosition":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public createCollisionPolygons()V
    .locals 7

    .line 100
    const-string v0, "GroupSprite"

    const-string v1, "Creating Collision Polygons for all Sprites of group!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "spriteList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/GroupSprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/catrobat/catroid/content/GroupSprite;->getSpritesFromGroupWithGroupName(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "groupSprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 104
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/common/LookData;

    .line 105
    .local v5, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v5}, Lorg/catrobat/catroid/common/LookData;->getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;

    move-result-object v6

    invoke-virtual {v6}, Lorg/catrobat/catroid/sensing/CollisionInformation;->calculate()V

    .line 106
    .end local v5    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto :goto_1

    .line 107
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method public getGroupItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/GroupItemSprite;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "allSprites":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "groupItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/GroupItemSprite;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 53
    .local v2, "position":I
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

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

    .line 54
    .local v4, "sprite":Lorg/catrobat/catroid/content/Sprite;
    instance-of v5, v4, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v5, :cond_0

    .line 55
    move-object v5, v4

    check-cast v5, Lorg/catrobat/catroid/content/GroupItemSprite;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method

.method public getNumberOfItems()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/GroupSprite;->getGroupItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isCollapsed()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/GroupSprite;->collapsed:Z

    return v0
.end method

.method public setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    .line 68
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/GroupSprite;->collapsed:Z

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/GroupSprite;->getGroupItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/GroupItemSprite;

    .line 70
    .local v1, "item":Lorg/catrobat/catroid/content/GroupItemSprite;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/content/GroupItemSprite;->setCollapsed(Z)V

    .line 71
    .end local v1    # "item":Lorg/catrobat/catroid/content/GroupItemSprite;
    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method
