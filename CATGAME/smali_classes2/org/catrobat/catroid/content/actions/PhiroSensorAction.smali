.class public Lorg/catrobat/catroid/content/actions/PhiroSensorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "PhiroSensorAction.java"


# static fields
.field private static final DISTANCE_THRESHOLD_VALUE:I = 0x352


# instance fields
.field private elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private ifConditionValue:Ljava/lang/Boolean;

.field private isInitialized:Z

.field private isInterpretedCorrectly:Z

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private sensorNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInitialized:Z

    return-void
.end method

.method private getPhiroProSensorByNumber()Lorg/catrobat/catroid/formulaeditor/Sensors;
    .locals 2

    .line 112
    iget v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->sensorNumber:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 127
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0

    .line 124
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0

    .line 122
    :cond_1
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0

    .line 120
    :cond_2
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0

    .line 118
    :cond_3
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0

    .line 116
    :cond_4
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0

    .line 114
    :cond_5
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    return-object v0
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 66
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->begin()V

    .line 68
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInitialized:Z

    .line 71
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInterpretedCorrectly:Z

    if-nez v0, :cond_1

    .line 72
    return v1

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifConditionValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    return v0

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    return v0
.end method

.method protected begin()V
    .locals 5

    .line 51
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v1, :cond_0

    .line 52
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInterpretedCorrectly:Z

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v1

    .line 56
    .local v1, "interpretation":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v2

    const/16 v3, 0x352

    const/4 v4, 0x1

    if-gt v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifConditionValue:Ljava/lang/Boolean;

    .line 57
    iput-boolean v4, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInterpretedCorrectly:Z
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "interpretation":Ljava/lang/Double;
    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInterpretedCorrectly:Z

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method

.method public restart()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 85
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->isInitialized:Z

    .line 87
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 88
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 132
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 135
    return-void
.end method

.method public setElseAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "elseAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 99
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 100
    return-void
.end method

.method public setIfAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "ifAction"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 95
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 96
    return-void
.end method

.method public setIfCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "ifCondition"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 103
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 104
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 91
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 92
    return-void
.end method

.method public setSensor(I)V
    .locals 5
    .param p1, "sensorNumber"    # I

    .line 107
    iput p1, p0, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->sensorNumber:I

    .line 108
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Formula;

    new-instance v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->getPhiroProSensorByNumber()Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;-><init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/PhiroSensorAction;->setIfCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V

    .line 109
    return-void
.end method
