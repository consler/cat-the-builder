.class public Lorg/catrobat/catroid/content/actions/ChangeXByNAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ChangeXByNAction.java"


# instance fields
.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private xMovement:Lorg/catrobat/catroid/formulaeditor/Formula;


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

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 50
    return-void
.end method

.method public setxMovement(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "xMovement"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->xMovement:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 54
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "percent"    # F

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->xMovement:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->xMovement:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0

    .line 42
    .local v0, "newX":Ljava/lang/Float;
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ChangeXByNAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Look;->changeXInUserInterfaceDimensionUnit(F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "newX":Ljava/lang/Float;
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method
