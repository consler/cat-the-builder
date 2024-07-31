.class public Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "GlideToAction.java"


# instance fields
.field private currentXValue:F

.field private currentYValue:F

.field private duration:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private durationValue:F

.field private endX:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private endXValue:F

.field private endY:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private endYValue:F

.field private restart:Z

.field protected scope:Lorg/catrobat/catroid/content/Scope;

.field private startXValue:F

.field private startYValue:F

.field private velocityXValue:F

.field private velocityYValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityXValue:F

    .line 48
    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityYValue:F

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->restart:Z

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 8

    .line 55
    const-string v0, "Formula interpretation for this specific Brick failed."

    const/4 v1, 0x0

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 55
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 56
    .local v3, "endXInterpretation":Ljava/lang/Float;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 59
    .local v4, "endYInterpretation":Ljava/lang/Float;
    :try_start_0
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v5, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 60
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v5
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 64
    .local v5, "durationInterpretation":Ljava/lang/Float;
    goto :goto_1

    .line 61
    .end local v5    # "durationInterpretation":Ljava/lang/Float;
    :catch_0
    move-exception v5

    .line 62
    .local v5, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 63
    .local v6, "durationInterpretation":Ljava/lang/Float;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 67
    .end local v6    # "durationInterpretation":Ljava/lang/Float;
    .local v5, "durationInterpretation":Ljava/lang/Float;
    :goto_1
    :try_start_1
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endX:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endX:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v7, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v6
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v3, v6

    .line 71
    goto :goto_3

    .line 68
    :catch_1
    move-exception v6

    .line 69
    .local v6, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v6    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_3
    :try_start_2
    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endY:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endY:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v6, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v6}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v2
    :try_end_2
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    move-object v4, v2

    .line 78
    goto :goto_5

    .line 75
    :catch_2
    move-exception v2

    .line 76
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_5
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->restart:Z

    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setDuration(F)V

    .line 83
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->durationValue:F

    .line 85
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endXValue:F

    .line 86
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endYValue:F

    .line 88
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->restart:Z

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startXValue:F

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startYValue:F

    .line 92
    iget v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startXValue:F

    iput v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentXValue:F

    .line 93
    iput v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentYValue:F

    .line 94
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_5

    iget v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startYValue:F

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 95
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->finish()V

    .line 97
    :cond_5
    iget v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityXValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityYValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->durationValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    .line 98
    iget v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endXValue:F

    iget v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startXValue:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityXValue:F

    .line 99
    iget v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endYValue:F

    iget v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startYValue:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityYValue:F

    .line 102
    :cond_6
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityXValue:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->setGlidingVelocityX(F)V

    .line 103
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->velocityYValue:F

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->setGlidingVelocityY(F)V

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->setGliding(Z)V

    .line 105
    return-void
.end method

.method protected end()V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->setGliding(Z)V

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->setGlidingVelocityX(F)V

    .line 126
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Sprite;->setGlidingVelocityY(F)V

    .line 127
    return-void
.end method

.method public setDuration(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "duration"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 130
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 131
    return-void
.end method

.method public setPosition(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "x"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "y"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 134
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endX:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 135
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endY:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 136
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 139
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 140
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v0

    iget v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentXValue:F

    sub-float/2addr v0, v1

    .line 110
    .local v0, "deltaX":F
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v1

    iget v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentYValue:F

    sub-float/2addr v1, v2

    .line 111
    .local v1, "deltaY":F
    const v2, -0x42333333    # -0.1f

    cmpl-float v3, v2, v0

    if-gtz v3, :cond_1

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v4, v0, v3

    if-gtz v4, :cond_1

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startXValue:F

    iget v3, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endXValue:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentXValue:F

    .line 117
    iget v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->startYValue:F

    iget v3, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->endYValue:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentYValue:F

    .line 118
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    iget v3, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentXValue:F

    iget v4, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->currentYValue:F

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/content/Look;->setPositionInUserInterfaceDimensionUnit(FF)V

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->restart:Z

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->getDuration()F

    move-result v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->getTime()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->setDuration(F)V

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/conditional/GlideToAction;->restart()V

    .line 120
    :goto_1
    return-void
.end method
