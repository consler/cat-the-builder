.class public Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;
.super Lorg/catrobat/catroid/content/actions/LoopAction;
.source "ForVariableFromToAction.java"


# instance fields
.field private controlVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

.field private executedCount:I

.field private from:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private fromValue:I

.field private isCurrentLoopInitialized:Z

.field private isRepeatActionInitialized:Z

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private step:I

.field private to:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private toValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isCurrentLoopInitialized:Z

    .line 40
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isRepeatActionInitialized:Z

    .line 43
    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->executedCount:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->step:I

    return-void
.end method

.method private interpretParameters()Z
    .locals 5

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isRepeatActionInitialized:Z

    .line 98
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->from:Lorg/catrobat/catroid/formulaeditor/Formula;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->from:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 99
    invoke-virtual {v1, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    nop

    .line 100
    .local v1, "fromInterpretation":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v4

    iput v4, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->fromValue:I

    .line 101
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->to:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->to:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v2

    .line 102
    .local v2, "toInterpretation":Ljava/lang/Double;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v3

    iput v3, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->toValue:I

    .line 103
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setStepValue()V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return v0

    .line 105
    .end local v1    # "fromInterpretation":Ljava/lang/Double;
    .end local v2    # "toInterpretation":Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v1, 0x0

    return v1
.end method

.method private setControlVariable(I)V
    .locals 3
    .param p1, "value"    # I

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->controlVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->setValue(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method private setStepValue()V
    .locals 2

    .line 112
    iget v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->fromValue:I

    iget v1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->toValue:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->step:I

    .line 113
    return-void
.end method


# virtual methods
.method public delegate(F)Z
    .locals 5
    .param p1, "delta"    # F

    .line 49
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isRepeatActionInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->interpretParameters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 53
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isCurrentLoopInitialized:Z

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setCurrentTime(F)V

    .line 55
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isCurrentLoopInitialized:Z

    .line 58
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->fromValue:I

    iget v2, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->step:I

    iget v3, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->executedCount:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setControlVariable(I)V

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->getCurrentTime()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->setCurrentTime(F)V

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isLoopDelayNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    iget v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->executedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->executedCount:I

    .line 64
    iget v3, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->step:I

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->toValue:I

    iget v4, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->fromValue:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 65
    return v1

    .line 68
    :cond_2
    iput-boolean v2, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isCurrentLoopInitialized:Z

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 71
    :cond_3
    return v2
.end method

.method public restart()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isCurrentLoopInitialized:Z

    .line 77
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->isRepeatActionInitialized:Z

    .line 78
    iput v0, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->executedCount:I

    .line 79
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;->restart()V

    .line 80
    return-void
.end method

.method public setControlVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)V
    .locals 0
    .param p1, "variable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->controlVariable:Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 93
    return-void
.end method

.method public setRange(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "from"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "to"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 87
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->from:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 88
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->to:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 89
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 83
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ForVariableFromToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 84
    return-void
.end method
