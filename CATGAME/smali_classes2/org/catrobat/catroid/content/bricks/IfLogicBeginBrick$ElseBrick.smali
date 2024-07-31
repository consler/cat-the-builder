.class public Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "IfLogicBeginBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElseBrick"
.end annotation


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;)V
    .locals 0
    .param p1, "ifBrick"    # Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    .line 230
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 231
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 232
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 271
    return-void
.end method

.method public addToFlatList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 252
    return-void
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public getAllParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBrickID()Ljava/util/UUID;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getBrickID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
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

    .line 256
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    iget-object v0, v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 266
    const v0, 0x7f0d0087

    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v0

    return v0
.end method
