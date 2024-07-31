.class public Lorg/catrobat/catroid/content/actions/MoveNStepsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "MoveNStepsAction.java"


# instance fields
.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private steps:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 54
    return-void
.end method

.method public setSteps(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "steps"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 57
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 58
    return-void
.end method

.method protected update(F)V
    .locals 8
    .param p1, "percent"    # F

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 42
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    nop

    .line 43
    .local v0, "stepsValue":Ljava/lang/Double;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 44
    .local v1, "radians":D
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->changeXInUserInterfaceDimensionUnit(F)V

    .line 45
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    iget-object v3, v3, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/Look;->changeYInUserInterfaceDimensionUnit(F)V

    .line 46
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/MoveNStepsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/catrobat/catroid/content/Sprite;->movedByStepsBrick:Z
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "stepsValue":Ljava/lang/Double;
    .end local v1    # "radians":D
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method
