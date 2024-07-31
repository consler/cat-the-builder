.class public final Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "PauseForBeatsAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "beats",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getBeats",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setBeats",
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
.field public beats:Lorg/catrobat/catroid/formulaeditor/Formula;

.field public scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 4

    .line 39
    nop

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const-string v1, "beats"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-nez v1, :cond_1

    const-string v2, "scope"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "beats.interpretFloat(scope)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 41
    .local v0, "pausedBeats":F
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getDurationForBeats(F)J

    move-result-wide v1

    long-to-float v1, v1

    const/16 v2, 0x3e8

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-super {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setDuration(F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pausedBeats":F
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_0
    nop

    .line 45
    return-void
.end method

.method public final getBeats()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const-string v1, "beats"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-nez v0, :cond_0

    const-string v1, "scope"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setBeats(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->beats:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/PauseForBeatsAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method protected update(F)V
    .locals 0
    .param p1, "percent"    # F

    .line 47
    return-void
.end method
