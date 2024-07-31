.class public Lorg/catrobat/catroid/content/actions/SetVelocityAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetVelocityAction.java"


# instance fields
.field private physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

.field private scope:Lorg/catrobat/catroid/content/Scope;

.field private velocityX:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private velocityY:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setPhysicsObject(Lorg/catrobat/catroid/physics/PhysicsObject;)V
    .locals 0
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 67
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 68
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 64
    return-void
.end method

.method public setVelocity(Lorg/catrobat/catroid/formulaeditor/Formula;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "velocityX"    # Lorg/catrobat/catroid/formulaeditor/Formula;
    .param p2, "velocityY"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->velocityX:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 72
    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->velocityY:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 73
    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "percent"    # F

    .line 45
    const-string v0, "Formula interpretation for this specific Brick failed."

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->velocityX:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->velocityX:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 46
    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    nop

    .line 50
    .local v1, "newVelocityX":Ljava/lang/Float;
    nop

    .line 53
    :try_start_1
    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->velocityY:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->velocityY:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 54
    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0
    :try_end_1
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    nop

    .line 58
    .local v0, "newVelocityY":Ljava/lang/Float;
    nop

    .line 59
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetVelocityAction;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/physics/PhysicsObject;->setVelocity(FF)V

    .line 60
    return-void

    .line 55
    .end local v0    # "newVelocityY":Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return-void

    .line 47
    .end local v1    # "newVelocityX":Ljava/lang/Float;
    .end local v2    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    return-void
.end method
