.class public Lorg/catrobat/catroid/content/WhenConditionScript;
.super Lorg/catrobat/catroid/content/Script;
.source "WhenConditionScript.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Script;-><init>()V

    .line 37
    new-instance v0, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-direct {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 40
    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    new-instance v2, Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 2
    .param p1, "formula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 44
    invoke-direct {p0}, Lorg/catrobat/catroid/content/WhenConditionScript;-><init>()V

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    sget-object v1, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->IF_CONDITION:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 2
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 70
    .local v1, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/formulaeditor/Formula;->addRequiredResources(Ljava/util/Set;)V

    .line 71
    .end local v1    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 73
    .local v1, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/content/bricks/Brick;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 74
    .end local v1    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/WhenConditionScript;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/content/Script;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 54
    invoke-super {p0}, Lorg/catrobat/catroid/content/Script;->clone()Lorg/catrobat/catroid/content/Script;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/WhenConditionScript;

    .line 55
    .local v0, "clone":Lorg/catrobat/catroid/content/WhenConditionScript;
    iget-object v1, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;->clone()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    move-result-object v1

    iput-object v1, v0, Lorg/catrobat/catroid/content/WhenConditionScript;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    .line 56
    return-object v0
.end method

.method public createEventId(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/eventids/EventId;
    .locals 3
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 79
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/WhenConditionScript;->getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;

    .line 80
    .local v0, "brick":Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;
    new-instance v1, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;->getConditionFormula()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/content/eventids/WhenConditionEventId;-><init>(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    return-object v1
.end method

.method public getFormulaMap()Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->formulaMap:Lorg/catrobat/catroid/content/bricks/ConcurrentFormulaHashMap;

    return-object v0
.end method

.method public getScriptBrick()Lorg/catrobat/catroid/content/bricks/ScriptBrick;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/bricks/WhenConditionBrick;-><init>(Lorg/catrobat/catroid/content/WhenConditionScript;)V

    iput-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/WhenConditionScript;->scriptBrick:Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    return-object v0
.end method
