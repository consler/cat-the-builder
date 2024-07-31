.class public final Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SpeakAndWaitAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u001eH\u0002J\u0008\u0010 \u001a\u00020\u001eH\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\nH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "lengthOfText",
        "",
        "mobileServiceAvailability",
        "Lorg/catrobat/catroid/utils/MobileServiceAvailability;",
        "getMobileServiceAvailability",
        "()Lorg/catrobat/catroid/utils/MobileServiceAvailability;",
        "setMobileServiceAvailability",
        "(Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V",
        "speechSynthesizer",
        "Lorg/catrobat/catroid/stage/SpeechSynthesizer;",
        "getSpeechSynthesizer",
        "()Lorg/catrobat/catroid/stage/SpeechSynthesizer;",
        "setSpeechSynthesizer",
        "(Lorg/catrobat/catroid/stage/SpeechSynthesizer;)V",
        "synthesizingFinished",
        "",
        "getSynthesizingFinished",
        "()Z",
        "setSynthesizingFinished",
        "(Z)V",
        "begin",
        "",
        "onDone",
        "onError",
        "update",
        "delta",
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
.field public context:Landroid/content/Context;

.field private lengthOfText:F

.field public mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

.field public speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

.field private synthesizingFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$onDone(Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->onDone()V

    return-void
.end method

.method public static final synthetic access$onError(Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->onError()V

    return-void
.end method

.method private final onDone()V
    .locals 3

    .line 73
    nop

    .line 74
    nop

    .line 73
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v1, :cond_0

    const-string v2, "speechSynthesizer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->getSpeechFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/io/SoundManager;->getDurationOfSoundFile(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->lengthOfText:F

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->synthesizingFinished:Z

    .line 76
    return-void
.end method

.method private final onError()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setDuration(F)V

    .line 70
    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 6

    .line 45
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setDuration(F)V

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    const-string v1, "mobileServiceAvailability"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->context:Landroid/content/Context;

    const-string v3, "context"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isGmsAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "speechSynthesizer"

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$1;

    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    invoke-direct {v1, v4}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$1;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$2;

    move-object v5, p0

    check-cast v5, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$2;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v4}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->setUtteranceProgressListener(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isHmsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$3;

    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    invoke-direct {v1, v4}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$3;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$4;

    move-object v5, p0

    check-cast v5, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction$begin$4;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v4}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->setHuaweiTextToSpeechListener(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 52
    :goto_0
    nop

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->context:Landroid/content/Context;

    if-nez v2, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-direct {v1, v2}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->synthesize(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 54
    return-void

    .line 51
    :cond_9
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMobileServiceAvailability()Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    if-nez v0, :cond_0

    const-string v1, "mobileServiceAvailability"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSpeechSynthesizer()Lorg/catrobat/catroid/stage/SpeechSynthesizer;
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_0

    const-string v1, "speechSynthesizer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSynthesizingFinished()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->synthesizingFinished:Z

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/content/Context;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMobileServiceAvailability(Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    return-void
.end method

.method public final setSpeechSynthesizer(Lorg/catrobat/catroid/stage/SpeechSynthesizer;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    return-void
.end method

.method public final setSynthesizingFinished(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 39
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->synthesizingFinished:Z

    return-void
.end method

.method protected update(F)V
    .locals 5
    .param p1, "delta"    # F

    .line 57
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->synthesizingFinished:Z

    if-eqz v0, :cond_4

    .line 58
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    const-string v2, "speechSynthesizer"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->getSpeechFile()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 60
    :goto_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    .line 58
    :cond_3
    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/SoundManager;->playSoundFile(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 62
    iget v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->lengthOfText:F

    const/16 v1, 0x3e8

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setDuration(F)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->setTime(F)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAndWaitAction;->synthesizingFinished:Z

    .line 66
    :cond_4
    return-void
.end method
