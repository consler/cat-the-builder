.class public Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "IfLogicBeginBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/CompositeBrick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;,
        Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected elseBranchBricks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private transient elseBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

.field private transient endBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

.field protected ifBranchBricks:Ljava/util/List;
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
    .locals 2

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 47
    new-instance v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;-><init>(Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    .line 54
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0139

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 58
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;-><init>()V

    .line 59
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 8
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 193
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 194
    .local v0, "ifSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 196
    .local v7, "elseSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 197
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-interface {v2, p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 200
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 203
    .restart local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    invoke-interface {v2, p1, v7}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 206
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 209
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/content/ActionFactory;->createIfLogicAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    .line 212
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 213
    return-void
.end method

.method public addBrickToElseBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 82
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 217
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 219
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 220
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 223
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 224
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 225
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

    .line 129
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addToFlatList(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 131
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 132
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 135
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 136
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 98
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;

    .line 99
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;-><init>(Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    .line 100
    new-instance v1, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    .line 104
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 105
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToIfBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 106
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 108
    .restart local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->addBrickToElseBranch(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 109
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 110
    :cond_1
    return-object v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 115
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

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$EndBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
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

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

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

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getPrototypeView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getPrototypeView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a03dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const v1, 0x7f0a03e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v1, 0x7f0a03de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
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

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 179
    const v0, 0x7f0d0086

    return v0
.end method

.method public hasSecondaryList()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    return v1

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 165
    .local v2, "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    return v1

    .line 168
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_2
    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 170
    .restart local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    return v1

    .line 173
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_4
    goto :goto_1

    .line 174
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 87
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setCommentedOut(Z)V

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 89
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 90
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 92
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 93
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 3
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 142
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 144
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 145
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 147
    .restart local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick;->elseBrick:Lorg/catrobat/catroid/content/bricks/IfLogicBeginBrick$ElseBrick;

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 148
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 149
    :cond_1
    return-void
.end method
