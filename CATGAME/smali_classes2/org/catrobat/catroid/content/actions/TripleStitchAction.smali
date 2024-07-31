.class public Lorg/catrobat/catroid/content/actions/TripleStitchAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "TripleStitchAction.java"


# instance fields
.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private steps:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 56
    return-void
.end method

.method public setSteps(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "steps"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 59
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 60
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "delta"    # F

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "stepsInterpretation":I
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 49
    :cond_0
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->runningStitch:Lorg/catrobat/catroid/embroidery/RunningStitch;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    new-instance v3, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;

    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/TripleStitchAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/catrobat/catroid/embroidery/TripleRunningStitch;-><init>(Lorg/catrobat/catroid/content/Sprite;I)V

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/embroidery/RunningStitch;->activateStitching(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/embroidery/RunningStitchType;)V

    .line 52
    return-void
.end method
