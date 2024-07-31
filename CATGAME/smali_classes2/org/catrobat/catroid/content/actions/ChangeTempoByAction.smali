.class public final Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "ChangeTempoByAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "tempo",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getTempo",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setTempo",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "update",
        "",
        "delta",
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
.field public scope:Lorg/catrobat/catroid/content/Scope;

.field public tempo:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-nez v0, :cond_0

    const-string v1, "scope"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getTempo()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->tempo:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const-string v1, "tempo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method public final setTempo(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->tempo:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method protected update(F)V
    .locals 4
    .param p1, "delta"    # F

    .line 36
    const-string v0, "MidiSoundManager.getInstance()"

    .line 37
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->tempo:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v1, :cond_0

    const-string v2, "tempo"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/ChangeTempoByAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-nez v2, :cond_1

    const-string v3, "scope"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretInteger(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 38
    .local v1, "newTempo":I
    :goto_0
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getInstance()Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->getTempo()F

    move-result v0

    int-to-float v3, v1

    add-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiSoundManager;->setTempo(F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "newTempo":I
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 42
    nop

    .line 43
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 40
    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    nop

    .line 46
    return-void
.end method
