.class public final Lorg/catrobat/catroid/content/actions/RepeatAction;
.super Lorg/catrobat/catroid/content/actions/LoopAction;
.source "RepeatAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u0004H\u0016J\u0008\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\"H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0094\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/RepeatAction;",
        "Lorg/catrobat/catroid/content/actions/LoopAction;",
        "()V",
        "currentTime",
        "",
        "getCurrentTime",
        "()F",
        "setCurrentTime",
        "(F)V",
        "executedCount",
        "",
        "isCurrentLoopInitialized",
        "",
        "isForeverRepeat",
        "()Z",
        "setForeverRepeat",
        "(Z)V",
        "isRepeatActionInitialized",
        "repeatCount",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getRepeatCount",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setRepeatCount",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "repeatCountValue",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "delegate",
        "delta",
        "interpretRepeatCount",
        "",
        "restart",
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
.field private currentTime:F

.field private executedCount:I

.field private isCurrentLoopInitialized:Z

.field private isForeverRepeat:Z

.field private isRepeatActionInitialized:Z

.field private repeatCount:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private repeatCountValue:I

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;-><init>()V

    return-void
.end method

.method private final interpretRepeatCount()V
    .locals 5

    .line 75
    nop

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCount:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 80
    nop

    .line 81
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    .line 78
    const-string v4, "Formula interpretation for this specific Brick failed."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    nop

    .line 75
    .end local v1    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_0
    :goto_0
    iput v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCountValue:I

    .line 85
    return-void
.end method


# virtual methods
.method public delegate(F)Z
    .locals 4
    .param p1, "delta"    # F

    .line 41
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isRepeatActionInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 42
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isRepeatActionInitialized:Z

    .line 43
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/RepeatAction;->interpretRepeatCount()V

    .line 45
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isCurrentLoopInitialized:Z

    if-nez v0, :cond_1

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setCurrentTime(F)V

    .line 47
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isCurrentLoopInitialized:Z

    .line 49
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RepeatAction;->getCurrentTime()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/RepeatAction;->setCurrentTime(F)V

    .line 50
    iget v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCountValue:I

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 51
    iput v2, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCountValue:I

    .line 53
    :cond_2
    iget v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->executedCount:I

    iget v3, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCountValue:I

    if-lt v0, v3, :cond_3

    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isForeverRepeat:Z

    if-nez v0, :cond_3

    .line 54
    return v1

    .line 56
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/actions/RepeatAction;->isLoopDelayNeeded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 57
    iget v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->executedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->executedCount:I

    .line 58
    iget v3, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCountValue:I

    if-lt v0, v3, :cond_4

    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isForeverRepeat:Z

    if-nez v0, :cond_4

    .line 59
    return v1

    .line 61
    :cond_4
    iput-boolean v2, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isCurrentLoopInitialized:Z

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 64
    :cond_5
    return v2
.end method

.method protected getCurrentTime()F
    .locals 1

    .line 35
    iget v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->currentTime:F

    return v0
.end method

.method public final getRepeatCount()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCount:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final isForeverRepeat()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isForeverRepeat:Z

    return v0
.end method

.method public restart()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isCurrentLoopInitialized:Z

    .line 69
    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isRepeatActionInitialized:Z

    .line 70
    iput v0, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->executedCount:I

    .line 71
    invoke-super {p0}, Lorg/catrobat/catroid/content/actions/LoopAction;->restart()V

    .line 72
    return-void
.end method

.method protected setCurrentTime(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 35
    iput p1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->currentTime:F

    return-void
.end method

.method public final setForeverRepeat(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 37
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->isForeverRepeat:Z

    return-void
.end method

.method public final setRepeatCount(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->repeatCount:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/RepeatAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
