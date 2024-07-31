.class public Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;
.super Ljava/lang/Object;
.source "BrickTreeBuilder.java"


# instance fields
.field private convertedBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private parentListDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->convertedBricks:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    .line 44
    iget-object v1, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->convertedBricks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method private addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private addCompositeBrick(Lorg/catrobat/catroid/content/bricks/CompositeBrick;)V
    .locals 2
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {p1}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getNestedBricks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private addElseBrick()V
    .locals 4

    .line 71
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, "parentList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 77
    .local v1, "lastBrickInParentList":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->hasSecondaryList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    move-object v3, v1

    check-cast v3, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    invoke-interface {v3}, Lorg/catrobat/catroid/content/bricks/CompositeBrick;->getSecondaryNestedBricks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 82
    .end local v0    # "parentList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    .end local v1    # "lastBrickInParentList":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    return-void
.end method

.method private addEndBrick()V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->parentListDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public convertBricks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 49
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    if-eqz v2, :cond_0

    .line 50
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/bricks/CompositeBrick;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->addCompositeBrick(Lorg/catrobat/catroid/content/bricks/CompositeBrick;)V

    goto :goto_1

    .line 51
    :cond_0
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/IfLogicElseBrick;

    if-eqz v2, :cond_1

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->addElseBrick()V

    goto :goto_1

    .line 53
    :cond_1
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/IfLogicEndBrick;

    if-eqz v2, :cond_2

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->addEndBrick()V

    goto :goto_1

    .line 55
    :cond_2
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/IfThenLogicEndBrick;

    if-eqz v2, :cond_3

    .line 56
    invoke-direct {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->addEndBrick()V

    goto :goto_1

    .line 57
    :cond_3
    instance-of v2, v1, Lorg/catrobat/catroid/content/bricks/LoopEndBrick;

    if-eqz v2, :cond_4

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->addEndBrick()V

    goto :goto_1

    .line 60
    :cond_4
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 62
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :goto_1
    goto :goto_0

    .line 63
    :cond_5
    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->convertedBricks:Ljava/util/List;

    return-object v0
.end method
