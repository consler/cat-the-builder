.class public Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "GoNStepsBackAction.java"


# instance fields
.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private steps:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method

.method private goNStepsBack(I)V
    .locals 3
    .param p1, "steps"    # I

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v0

    .line 67
    .local v0, "zPosition":I
    sub-int v1, v0, p1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 68
    .local v1, "newSpriteZIndex":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    .line 69
    return-void
.end method

.method private toFront(F)V
    .locals 2
    .param p1, "delta"    # F

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createComeToFrontAction(Lorg/catrobat/catroid/content/Sprite;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 62
    .local v0, "comeToFrontAction":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    .line 63
    return-void
.end method


# virtual methods
.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 73
    return-void
.end method

.method public setSteps(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "steps"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 77
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "delta"    # F

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->steps:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v0, "stepsValue":Ljava/lang/Float;
    :goto_0
    nop

    .line 50
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v1

    .line 51
    .local v1, "zPosition":I
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v2

    sub-int v2, v1, v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 52
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v2

    iget-object v2, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v2

    sub-int v2, v1, v2

    if-ge v2, v1, :cond_2

    .line 54
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->toFront(F)V

    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/content/actions/GoNStepsBackAction;->goNStepsBack(I)V

    .line 58
    :goto_1
    return-void

    .line 45
    .end local v0    # "stepsValue":Ljava/lang/Float;
    .end local v1    # "zPosition":I
    :catch_0
    move-exception v0

    .line 46
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    return-void
.end method
