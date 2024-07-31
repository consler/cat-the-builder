.class public Lorg/catrobat/catroid/content/actions/WaitUntilAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "WaitUntilAction.java"


# static fields
.field private static final LOOP_DELAY:F = 0.02f


# instance fields
.field private completed:Z

.field private condition:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private currentTime:F

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->completed:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->currentTime:F

    .line 42
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 3
    .param p1, "delta"    # F

    .line 54
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->completed:Z

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->currentTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->currentTime:F

    .line 59
    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 60
    return v1

    .line 62
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->currentTime:F

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->condition:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretBoolean(Lorg/catrobat/catroid/content/Scope;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->completed:Z
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    iput-boolean v1, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->completed:Z

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v0    # "e":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->completed:Z

    return v0
.end method

.method public restart()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->completed:Z

    .line 78
    return-void
.end method

.method public setCondition(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "condition"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 45
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->condition:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 46
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WaitUntilAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 50
    return-void
.end method
