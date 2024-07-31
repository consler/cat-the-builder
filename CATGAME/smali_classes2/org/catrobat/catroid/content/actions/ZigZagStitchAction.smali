.class public Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ZigZagStitchAction.java"


# instance fields
.field private length:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private width:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setLength(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "length"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->length:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 71
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 67
    return-void
.end method

.method public setWidth(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "width"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 74
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->width:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 75
    return-void
.end method

.method protected update(F)V
    .locals 6
    .param p1, "delta"    # F

    .line 43
    const-string v0, "Formula interpretation for this specific Brick failed."

    const/4 v1, 0x0

    .line 44
    .local v1, "lengthInterpretation":F
    const/4 v2, 0x0

    .line 46
    .local v2, "heightInterpretation":F
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->length:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->length:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 52
    :cond_0
    goto :goto_0

    .line 49
    :catch_0
    move-exception v3

    .line 50
    .local v3, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v3    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->width:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->width:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v0

    .line 60
    :cond_1
    goto :goto_1

    .line 57
    :catch_1
    move-exception v3

    .line 58
    .restart local v3    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v3    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    new-instance v4, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;

    iget-object v5, p0, Lorg/catrobat/catroid/content/actions/ZigZagStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lorg/catrobat/catroid/embroidery/ZigZagRunningStitch;-><init>(Lorg/catrobat/catroid/content/Sprite;FF)V

    invoke-virtual {v0, v3, v4}, Lorg/catrobat/catroid/embroidery/RunningStitch;->activateStitching(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/embroidery/RunningStitchType;)V

    .line 63
    return-void
.end method
