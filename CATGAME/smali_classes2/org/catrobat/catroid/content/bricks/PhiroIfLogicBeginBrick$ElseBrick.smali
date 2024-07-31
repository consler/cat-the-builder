.class public Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "PhiroIfLogicBeginBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElseBrick"
.end annotation


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)V
    .locals 0
    .param p1, "ifBrick"    # Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    .line 238
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 239
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 240
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 279
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

    .line 259
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 260
    return-void
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 249
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

    .line 254
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

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

    .line 264
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    check-cast v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->access$000(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 269
    const/4 v0, -0x1

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 274
    const v0, 0x7f0d0087

    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v0

    return v0
.end method
