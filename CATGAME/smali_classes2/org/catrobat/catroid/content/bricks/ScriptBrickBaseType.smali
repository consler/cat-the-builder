.class public abstract Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "ScriptBrickBaseType.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/ScriptBrick;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    return-void
.end method


# virtual methods
.method public addToFlatList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->addToFlatList(Ljava/util/List;)V

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 34
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 35
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public getDragAndDropTargetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public getPositionInScript()I
    .locals 1

    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 1
    .param p1, "commentedOut"    # Z

    .line 55
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->setCommentedOut(Z)V

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/ScriptBrickBaseType;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Script;->setCommentedOut(Z)V

    .line 57
    return-void
.end method
