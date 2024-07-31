.class public Lorg/catrobat/catroid/content/bricks/RepeatBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "RepeatBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/CompositeBrick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;
    }
.end annotation


# instance fields
.field private transient endBrick:Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

.field private loopBricks:Ljava/util/List;
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

    .line 54
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 50
    new-instance v0, Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/RepeatBrick;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    .line 55
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIMES_TO_REPEAT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a01ce

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "condition"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 59
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;-><init>()V

    .line 60
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIMES_TO_REPEAT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->setFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 8
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 182
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/ActionFactory;->createScriptSequenceAction(Lorg/catrobat/catroid/content/Script;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 183
    .local v0, "repeatSequence":Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/LoopUtil;->checkLoopBrickForLoopDelay(Lorg/catrobat/catroid/content/bricks/CompositeBrick;Lorg/catrobat/catroid/content/Script;)Z

    move-result v7

    .line 184
    .local v7, "isLoopDelay":Z
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 185
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-interface {v2, p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick;->addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V

    .line 188
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIMES_TO_REPEAT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 191
    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v4

    .line 190
    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/catrobat/catroid/content/ActionFactory;->createRepeatAction(Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;Lorg/catrobat/catroid/formulaeditor/Formula;Lcom/badlogic/gdx/scenes/scene2d/Action;Z)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v1

    .line 193
    .local v1, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {p2, v1}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 194
    return-void
.end method

.method public addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 198
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 199
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 200
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 201
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 202
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

    .line 116
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addToFlatList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 118
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 119
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

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

    .line 92
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;

    .line 93
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/RepeatBrick;
    new-instance v1, Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;-><init>(Lorg/catrobat/catroid/content/bricks/RepeatBrick;)V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 96
    .local v2, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2}, Lorg/catrobat/catroid/content/bricks/Brick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->addBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 97
    .end local v2    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 98
    :cond_0
    return-object v0
.end method

.method public consistsOfMultipleParts()Z
    .locals 1

    .line 103
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

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->endBrick:Lorg/catrobat/catroid/content/bricks/RepeatBrick$EndBrick;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
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

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

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

    .line 70
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

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

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->view:Landroid/view/View;

    const v1, 0x7f0a01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    .local v0, "label":Landroid/widget/TextView;
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIMES_TO_REPEAT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->isNumber()Z

    move-result v1

    const v2, 0x7f100027

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    .line 162
    .local v1, "projectManager":Lorg/catrobat/catroid/ProjectManager;
    new-instance v3, Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    .line 163
    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/catrobat/catroid/content/Scope;-><init>(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Sprite;Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;)V

    .line 164
    .local v3, "scope":Lorg/catrobat/catroid/content/Scope;
    iget-object v4, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->TIMES_TO_REPEAT:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 166
    invoke-virtual {p0, v5}, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v5

    .line 167
    invoke-virtual {v5, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/catrobat/catroid/utils/Utils;->convertDoubleToPluralInteger(D)I

    move-result v5

    .line 164
    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "projectManager":Lorg/catrobat/catroid/ProjectManager;
    .end local v3    # "scope":Lorg/catrobat/catroid/content/Scope;
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Couldn\'t interpret Formula"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    goto :goto_1

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0xbb6bc

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_1
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->view:Landroid/view/View;

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 151
    const v0, 0x7f0d00c3

    return v0
.end method

.method public hasSecondaryList()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z
    .locals 4
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 138
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 142
    .local v2, "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->removeChild(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    return v1

    .line 145
    .end local v2    # "childBrick":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_1
    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 2
    .param p1, "commentedOut"    # Z

    .line 84
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setCommentedOut(Z)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 86
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->setCommentedOut(Z)V

    .line 87
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 2
    .param p1, "parent"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 125
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/RepeatBrick;->loopBricks:Ljava/util/List;

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
    invoke-interface {v1, p0}, Lorg/catrobat/catroid/content/bricks/Brick;->setParent(Lorg/catrobat/catroid/content/bricks/Brick;)V

    .line 128
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
