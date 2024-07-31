.class public Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "IfThenLogicBeginBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/CompositeBrick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient endBrick:Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

.field private ifBranchBricks:Ljava/util/List;
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

    .line 49
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 45
    new-instance v0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a0139

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;-><init>()V

    .line 55
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 56
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 7
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 158
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 160
    .local v0, "ifSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 161
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v3

    if-nez v3, :cond_0

    .line 162
    invoke-interface {v2, p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 164
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 168
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    const/4 v6, 0x0

    .line 167
    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/content/ActionFactory;->createIfLogicAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    .line 170
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 171
    return-void
.end method

.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 175
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 177
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 178
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 179
    :cond_0
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

    .line 111
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addToFlatList(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 113
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 114
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 87
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;

    .line 88
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    .line 90
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 91
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 92
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 93
    :cond_0
    return-object v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 98
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

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick$EndBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
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

    .line 128
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

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
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    return-object v0
.end method

.method public getPrototypeView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getPrototypeView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a03e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
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
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 146
    const v0, 0x7f0d008a

    return v0
.end method

.method public hasSecondaryList()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 137
    .local v2, "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    return v1

    .line 140
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 79
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setCommentedOut(Z)V

    .line 80
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 81
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 82
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 2
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 120
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/IfThenLogicBeginBrick;->ifBranchBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 122
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 123
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method
