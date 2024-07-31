.class public Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetBounceFactorAction.java"


# instance fields
.field private bounceFactor:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setBounceFactor(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "bounceFactor"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->bounceFactor:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 63
    return-void
.end method

.method public setPhysicsObject(Lorg/catrobat/catroid/physics/PhysicsObject;)V
    .locals 0
    .param p1, "physicsObject"    # Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    .line 59
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 54
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 55
    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "percent"    # F

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->bounceFactor:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->bounceFactor:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 45
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    .line 49
    .local v0, "newBounceFactor":Ljava/lang/Float;
    nop

    .line 50
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetBounceFactorAction;->physicsObject:Lorg/catrobat/catroid/physics/PhysicsObject;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/physics/PhysicsObject;->setBounceFactor(F)V

    .line 51
    return-void

    .line 46
    .end local v0    # "newBounceFactor":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    return-void
.end method
