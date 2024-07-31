.class public Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;
.super Lorg/catrobat/catroid/content/bricks/FormulaBrick;
.source "WhenConditionBrick.java"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/ScriptBrick;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private script:Lorg/catrobat/catroid/content/WhenConditionScript;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/catrobat/catroid/content/WhenConditionScript;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/WhenConditionScript;-><init>()V

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;-><init>(Lorg/catrobat/catroid/content/WhenConditionScript;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/content/WhenConditionScript;)V
    .locals 2
    .param p1, "script"    # Lorg/catrobat/catroid/content/WhenConditionScript;

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;-><init>()V

    .line 45
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    const v1, 0x7f0a02b9

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->addAllowedBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;I)V

    .line 46
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/content/WhenConditionScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 47
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenConditionScript;->isCommentedOut()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->commentedOut:Z

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->script:Lorg/catrobat/catroid/content/WhenConditionScript;

    .line 50
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/WhenConditionScript;->getFormulaMap()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    .line 107
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

    .line 83
    .local p1, "bricks":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->addToFlatList(Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->getScript()Lorg/catrobat/catroid/content/Script;

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

    .line 85
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 86
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 55
    invoke-super {p0}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->clone()Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;

    .line 56
    .local v0, "clone":Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->script:Lorg/catrobat/catroid/content/WhenConditionScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenConditionScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/WhenConditionScript;

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->script:Lorg/catrobat/catroid/content/WhenConditionScript;

    .line 57
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/WhenConditionScript;->setScriptBrick(Lorg/catrobat/catroid/content/bricks/ScriptBrick;)V

    .line 58
    iget-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->script:Lorg/catrobat/catroid/content/WhenConditionScript;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/WhenConditionScript;->getFormulaMap()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 59
    return-object v0
.end method

.method public getConditionFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 68
    sget-object v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->getFormulaWithBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)Lorg/catrobat/catroid/formulaeditor/Formula;

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

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInDragAndDropTargetList()I
    .locals 1

    .line 96
    const/4 v0, -0x1

    return v0
.end method

.method public getPositionInScript()I
    .locals 1

    .line 78
    const/4 v0, -0x1

    return v0
.end method

.method public getScript()Lorg/catrobat/catroid/content/Script;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->script:Lorg/catrobat/catroid/content/WhenConditionScript;

    return-object v0
.end method

.method public getViewResource()I
    .locals 1

    .line 64
    const v0, 0x7f0d0108

    return v0
.end method

.method public setCommentedOut(Z)V
    .locals 1
    .param p1, "commentedOut"    # Z

    .line 101
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setCommentedOut(Z)V

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Script;->setCommentedOut(Z)V

    .line 103
    return-void
.end method
