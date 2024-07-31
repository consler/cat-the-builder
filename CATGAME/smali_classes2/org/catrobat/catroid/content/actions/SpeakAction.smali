.class public final Lorg/catrobat/catroid/content/actions/SpeakAction;
.super Lorg/catrobat/catroid/content/actions/AsynchronousAction;
.source "SpeakAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0018H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SpeakAction;",
        "Lorg/catrobat/catroid/content/actions/AsynchronousAction;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "isFinished",
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
        "initialize",
        "",
        "onDone",
        "onError",
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

.field private isFinished:Z

.field public mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

.field public speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$onDone(Lorg/catrobat/catroid/content/actions/SpeakAction;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/actions/SpeakAction;

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SpeakAction;->onDone()V

    return-void
.end method

.method public static final synthetic access$onError(Lorg/catrobat/catroid/content/actions/SpeakAction;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/actions/SpeakAction;

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SpeakAction;->onError()V

    return-void
.end method

.method private final onDone()V
    .locals 5

    .line 54
    invoke-static {}, Lorg/catrobat/catroid/io/SoundManager;->getInstance()Lorg/catrobat/catroid/io/SoundManager;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

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

    :goto_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->getScope()Lorg/catrobat/catroid/content/Scope;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    .line 54
    :cond_3
    invoke-virtual {v0, v1, v3}, Lorg/catrobat/catroid/io/SoundManager;->playSoundFile(Ljava/lang/String;Lorg/catrobat/catroid/content/Sprite;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->isFinished:Z

    .line 58
    return-void
.end method

.method private final onError()V
    .locals 1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->isFinished:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getMobileServiceAvailability()Lorg/catrobat/catroid/utils/MobileServiceAvailability;
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    if-nez v0, :cond_0

    const-string v1, "mobileServiceAvailability"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getSpeechSynthesizer()Lorg/catrobat/catroid/stage/SpeechSynthesizer;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_0

    const-string v1, "speechSynthesizer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public initialize()V
    .locals 6

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    const-string v1, "mobileServiceAvailability"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->context:Landroid/content/Context;

    const-string v3, "context"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isGmsAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "speechSynthesizer"

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$1;

    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/content/actions/SpeakAction;

    invoke-direct {v1, v4}, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$1;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAction;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$2;

    move-object v5, p0

    check-cast v5, Lorg/catrobat/catroid/content/actions/SpeakAction;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$2;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAction;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v4}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->setUtteranceProgressListener(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isHmsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$3;

    move-object v4, p0

    check-cast v4, Lorg/catrobat/catroid/content/actions/SpeakAction;

    invoke-direct {v1, v4}, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$3;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAction;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$4;

    move-object v5, p0

    check-cast v5, Lorg/catrobat/catroid/content/actions/SpeakAction;

    invoke-direct {v4, v5}, Lorg/catrobat/catroid/content/actions/SpeakAction$initialize$4;-><init>(Lorg/catrobat/catroid/content/actions/SpeakAction;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v4}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->setHuaweiTextToSpeechListener(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 45
    :goto_0
    nop

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->context:Landroid/content/Context;

    if-nez v2, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-direct {v1, v2}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->synthesize(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V

    .line 47
    return-void

    .line 44
    :cond_9
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->isFinished:Z

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/content/Context;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->context:Landroid/content/Context;

    return-void
.end method

.method public final setMobileServiceAvailability(Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    return-void
.end method

.method public final setSpeechSynthesizer(Lorg/catrobat/catroid/stage/SpeechSynthesizer;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SpeakAction;->speechSynthesizer:Lorg/catrobat/catroid/stage/SpeechSynthesizer;

    return-void
.end method
