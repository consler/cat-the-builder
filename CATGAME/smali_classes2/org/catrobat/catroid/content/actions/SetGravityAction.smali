.class public Lorg/catrobat/catroid/content/actions/SetGravityAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetGravityAction.java"


# instance fields
.field private gravityX:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private gravityY:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setGravity(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "gravityX"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "gravityY"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 69
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->gravityX:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 70
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->gravityY:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 71
    return-void
.end method

.method public setPhysicsWorld(Lorg/catrobat/catroid/physics/PhysicsWorld;)V
    .locals 0
    .param p1, "physicsWorld"    # Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 65
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    .line 66
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 62
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 45
    const-string v0, "Formula interpretation for this specific Brick failed."

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->gravityX:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->gravityX:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .local v1, "newGravityX":Ljava/lang/Float;
    :goto_0
    nop

    .line 52
    :try_start_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->gravityY:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->gravityY:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .local v0, "newGravityY":Ljava/lang/Float;
    :goto_1
    nop

    .line 57
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetGravityAction;->physicsWorld:Lorg/catrobat/catroid/physics/PhysicsWorld;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/physics/PhysicsWorld;->setGravity(FF)V

    .line 58
    return-void

    .line 53
    .end local v0    # "newGravityY":Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    return-void

    .line 46
    .end local v1    # "newGravityX":Ljava/lang/Float;
    .end local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :catch_1
    move-exception v1

    .line 47
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-void
.end method
