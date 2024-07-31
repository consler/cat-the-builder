.class Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "ForeverBrick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/content/bricks/ForeverBrick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndBrick"
.end annotation


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/ForeverBrick;)V
    .locals 0
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/ForeverBrick;

    .line 164
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    .line 166
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 205
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

    .line 185
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 186
    return-void
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 175
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

    .line 180
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBrickID()Ljava/util/UUID;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 190
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getParent()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getViewResource()I
    .locals 1

    .line 200
    const v0, 0x7f0d0098

    return v0
.end method

.method public isCommentedOut()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ForeverBrick$EndBrick;->parent:Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v0

    return v0
.end method
