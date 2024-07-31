.class public final Lorg/catrobat/catroid/content/actions/IfLogicAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "IfLogicAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/IfLogicAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "elseAction",
        "getElseAction",
        "()Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "setElseAction",
        "(Lcom/badlogic/gdx/scenes/scene2d/Action;)V",
        "ifAction",
        "getIfAction",
        "setIfAction",
        "ifCondition",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getIfCondition",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setIfCondition",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "ifConditionValue",
        "",
        "isInitialized",
        "isInterpretedCorrectly",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "act",
        "delta",
        "",
        "interpretCondition",
        "",
        "restart",
        "setActor",
        "actor",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

.field private ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private ifConditionValue:Z

.field private isInitialized:Z

.field private isInterpretedCorrectly:Z

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final interpretCondition()V
    .locals 5

    .line 42
    nop

    .line 43
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-int v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifConditionValue:Z

    .line 44
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    nop

    .line 42
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_2
    :goto_2
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->isInterpretedCorrectly:Z

    .line 49
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 52
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->isInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/IfLogicAction;->interpretCondition()V

    .line 54
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->isInitialized:Z

    .line 56
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->isInterpretedCorrectly:Z

    if-nez v0, :cond_1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifConditionValue:Z

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v1

    .line 58
    :cond_3
    :goto_0
    nop

    .line 56
    return v1
.end method

.method public final getElseAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public final getIfAction()Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-object v0
.end method

.method public final getIfCondition()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 68
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->isInitialized:Z

    .line 69
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 70
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const-string v0, "actor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 76
    :cond_1
    return-void
.end method

.method public final setElseAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->elseAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-void
.end method

.method public final setIfAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifAction:Lcom/badlogic/gdx/scenes/scene2d/Action;

    return-void
.end method

.method public final setIfCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->ifCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/IfLogicAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
