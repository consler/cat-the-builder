.class public Lorg/catrobat/catroid/common/RecentBricksHolder;
.super Ljava/lang/Object;
.source "RecentBricksHolder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private recentBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public find(Lorg/catrobat/catroid/content/bricks/Brick;)I
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 46
    .local v1, "b":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    return v0

    .line 44
    .end local v1    # "b":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getRecentBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    return-object v0
.end method

.method public insert(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 2
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public remove()V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/RecentBricksHolder;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public size()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/catrobat/catroid/common/RecentBricksHolder;->recentBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
