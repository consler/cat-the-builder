.class public final Lorg/catrobat/catroid/content/actions/RepeatUntilAction;
.super Lorg/catrobat/catroid/content/actions/LoopAction;
.source "RepeatUntilAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\tH\u0002J\u0008\u0010\u001a\u001a\u00020\tH\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/RepeatUntilAction;",
        "Lorg/catrobat/catroid/content/actions/LoopAction;",
        "()V",
        "<set-?>",
        "",
        "executedCount",
        "getExecutedCount",
        "()I",
        "isCurrentLoopInitialized",
        "",
        "repeatCondition",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getRepeatCondition",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setRepeatCondition",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "delegate",
        "delta",
        "",
        "isConditionTrue",
        "isValidConditionFormula",
        "restart",
        "",
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
.field private executedCount:I

.field private isCurrentLoopInitialized:Z

.field private repeatCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;-><init>()V

    return-void
.end method

.method private final isConditionTrue()Z
    .locals 5

    .line 50
    nop

    .line 51
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->repeatCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result v1
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 55
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    .line 53
    const-string v4, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    nop

    .line 50
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    nop

    .line 58
    return v0
.end method

.method private final isValidConditionFormula()Z
    .locals 5

    .line 38
    nop

    .line 39
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->repeatCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretDouble(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    nop

    .line 47
    const/4 v0, 0x1

    return v0

    .line 39
    :cond_0
    return v0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 43
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    .line 41
    const-string v4, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    return v0
.end method


# virtual methods
.method public delegate(F)Z
    .locals 3
    .param p1, "delta"    # F

    .line 61
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isValidConditionFormula()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 62
    return v1

    .line 64
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isCurrentLoopInitialized:Z

    if-nez v0, :cond_2

    .line 65
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isConditionTrue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    return v1

    .line 68
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->setCurrentTime(F)V

    .line 69
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isCurrentLoopInitialized:Z

    .line 71
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->getCurrentTime()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->setCurrentTime(F)V

    .line 72
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isLoopDelayNeeded()Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    iget v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->executedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->executedCount:I

    .line 74
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isConditionTrue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    return v1

    .line 77
    :cond_3
    iput-boolean v2, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isCurrentLoopInitialized:Z

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 80
    :cond_4
    return v2
.end method

.method public final getExecutedCount()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->executedCount:I

    return v0
.end method

.method public final getRepeatCondition()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->repeatCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public restart()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->isCurrentLoopInitialized:Z

    .line 85
    iput v0, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->executedCount:I

    .line 86
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;->restart()V

    .line 87
    return-void
.end method

.method public final setRepeatCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->repeatCondition:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatUntilAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
