.class public Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "PhiroIfLogicBeginBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/CompositeBrick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;,
        Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private elseBranchBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private transient elseBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

.field private transient endBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

.field private ifBranchBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private sensorSpinnerPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->sensorSpinnerPosition:I

    .line 52
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 8
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 213
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 214
    .local v0, "ifSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 216
    .local v7, "elseSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 217
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-interface {v2, p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 220
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 223
    .restart local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v3

    if-nez v3, :cond_2

    .line 224
    invoke-interface {v2, p1, v7}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 226
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    iget v4, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->sensorSpinnerPosition:I

    .line 229
    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/content/ActionFactory;->createPhiroSendSelectedSensorAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;ILcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    .line 232
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 233
    return-void
.end method

.method public addBrickToElseBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 200
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 201
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 202
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 203
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 204
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 207
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 208
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 209
    :cond_1
    return-void
.end method

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

    .line 125
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->addToFlatList(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 127
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 128
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 131
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 132
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 94
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;

    .line 95
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    .line 96
    new-instance v1, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    .line 100
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 101
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 102
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 104
    .restart local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->addBrickToElseBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 105
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 106
    :cond_1
    return-object v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getAllParts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$EndBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
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

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getNestedBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryNestedBricks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 181
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->view:Landroid/view/View;

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 183
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030007

    const v3, 0x1090008

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 187
    .local v1, "spinnerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 190
    iget v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->sensorSpinnerPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 191
    new-instance v2, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;

    new-instance v3, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroIfLogicBeginBrick$Bg0KY2yKbc6hrofa6qdBw48J38k;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/content/bricks/-$$Lambda$PhiroIfLogicBeginBrick$Bg0KY2yKbc6hrofa6qdBw48J38k;-><init>(Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/content/AdapterViewOnItemSelectedListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->view:Landroid/view/View;

    return-object v2
.end method

.method public getViewResource()I
    .locals 1

    .line 175
    const v0, 0x7f0d00a7

    return v0
.end method

.method public hasSecondaryList()Z
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$getView$0$PhiroIfLogicBeginBrick(Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 1
    .param p1, "position"    # Ljava/lang/Integer;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->sensorSpinnerPosition:I

    .line 193
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 154
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 155
    return v1

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 161
    .local v2, "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    return v1

    .line 164
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 166
    .restart local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    return v1

    .line 169
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_4
    goto :goto_1

    .line 170
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 83
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->setCommentedOut(Z)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 85
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 86
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 88
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 89
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 90
    :cond_1
    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 3
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 138
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 140
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 141
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 143
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/PhiroIfLogicBeginBrick$ElseBrick;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 144
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 145
    :cond_1
    return-void
.end method
