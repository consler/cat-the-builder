.class public final Lorg/catrobat/catroid/content/actions/VibrateAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "VibrateAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/VibrateAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "duration",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getDuration",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setDuration",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "begin",
        "",
        "update",
        "percent",
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
.field private duration:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 5

    .line 40
    nop

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/VibrateAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/VibrateAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 42
    .local v0, "newDuration":F
    float-to-long v1, v0

    const-wide v3, 0x2540be400L

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 43
    long-to-float v0, v3

    .line 45
    :cond_0
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setDuration(F)V

    .line 46
    sget-object v1, Lorg/catrobat/catroid/stage/StageActivity;->activeStageActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/stage/StageActivity;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/catrobat/catroid/stage/StageActivity;->vibrationManager:Lorg/catrobat/catroid/utils/VibrationManager;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 47
    .local v1, "vibrationManager":Lorg/catrobat/catroid/utils/VibrationManager;
    :goto_0
    if-eqz v1, :cond_3

    const-wide/16 v2, 0x3e8

    long-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/utils/VibrationManager;->vibrateFor(J)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    .end local v0    # "newDuration":F
    .end local v1    # "vibrationManager":Lorg/catrobat/catroid/utils/VibrationManager;
    :cond_2
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 51
    nop

    .line 52
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 49
    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :cond_3
    :goto_1
    nop

    .line 55
    return-void
.end method

.method public final getDuration()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/VibrateAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/VibrateAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final setDuration(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/VibrateAction;->duration:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/VibrateAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "percent"    # F

    .line 57
    return-void
.end method
