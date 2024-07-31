.class public final Lorg/catrobat/catroid/stage/SpeechSynthesizer;
.super Ljava/lang/Object;
.source "SpeechSynthesizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\"\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017J\"\u0010\u0019\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/SpeechSynthesizer;",
        "",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "text",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "hashText",
        "",
        "interpretedText",
        "listener",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "<set-?>",
        "Ljava/io/File;",
        "speechFile",
        "getSpeechFile",
        "()Ljava/io/File;",
        "getText",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setHuaweiTextToSpeechListener",
        "",
        "onError",
        "Lkotlin/Function0;",
        "onDone",
        "setUtteranceProgressListener",
        "synthesize",
        "androidStringProvider",
        "Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;",
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
.field private hashText:Ljava/lang/String;

.field private interpretedText:Ljava/lang/Object;

.field private listener:Ljava/lang/Object;

.field private final scope:Lorg/catrobat/catroid/content/Scope;

.field private speechFile:Ljava/io/File;

.field private final text:Lorg/catrobat/catroid/formulaeditor/Formula;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Scope;Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .param p2, "text"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->scope:Lorg/catrobat/catroid/content/Scope;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method


# virtual methods
.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final getSpeechFile()Ljava/io/File;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->speechFile:Ljava/io/File;

    return-object v0
.end method

.method public final getText()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final setHuaweiTextToSpeechListener(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "onError"    # Lkotlin/jvm/functions/Function0;
    .param p2, "onDone"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final setUtteranceProgressListener(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "onError"    # Lkotlin/jvm/functions/Function0;
    .param p2, "onDone"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lorg/catrobat/catroid/stage/SpeechSynthesizer$setUtteranceProgressListener$1;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/stage/SpeechSynthesizer$setUtteranceProgressListener$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->listener:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public final synthesize(Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;)V
    .locals 8
    .param p1, "androidStringProvider"    # Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    const-string v0, "androidStringProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->listener:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 59
    .local v0, "listener":Ljava/lang/Object;
    iget-object v1, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->text:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v1, :cond_0

    .line 60
    move-object v2, p1

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;

    iget-object v3, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1, v2, v3}, Lorg/catrobat/catroid/formulaeditor/Formula;->getUserFriendlyString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_0
    const-string v1, ""

    .line 59
    :goto_0
    iput-object v1, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->interpretedText:Ljava/lang/Object;

    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/utils/Utils;->md5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->hashText:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->hashText:Ljava/lang/String;

    .line 67
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->TEXT_TO_SPEECH_TMP_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "pathToSpeechFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 69
    new-instance v3, Ljava/io/File;

    const-string v4, ".wav"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v3, "speechFile":Ljava/io/File;
    iput-object v3, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->speechFile:Ljava/io/File;

    .line 72
    nop

    .line 73
    instance-of v4, v0, Landroid/speech/tts/UtteranceProgressListener;

    if-eqz v4, :cond_2

    .line 74
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v4, "speakParameter":Ljava/util/HashMap;
    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->hashText:Ljava/lang/String;

    const-string v7, "utteranceId"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v5, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->Companion:Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;

    invoke-virtual {v5}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;->getInstance()Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    move-result-object v5

    .line 77
    iget-object v6, p0, Lorg/catrobat/catroid/stage/SpeechSynthesizer;->interpretedText:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 78
    nop

    .line 79
    if-eqz v0, :cond_1

    move-object v7, v0

    check-cast v7, Landroid/speech/tts/UtteranceProgressListener;

    .line 80
    nop

    .line 76
    invoke-virtual {v5, v6, v3, v7, v4}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech(Ljava/lang/String;Ljava/io/File;Landroid/speech/tts/UtteranceProgressListener;Ljava/util/HashMap;)V

    .end local v4    # "speakParameter":Ljava/util/HashMap;
    goto :goto_1

    .line 79
    .restart local v4    # "speakParameter":Ljava/util/HashMap;
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type android.speech.tts.UtteranceProgressListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    .end local v4    # "speakParameter":Ljava/util/HashMap;
    :cond_2
    :goto_1
    nop

    .line 88
    return-void

    .line 58
    .end local v0    # "listener":Ljava/lang/Object;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "pathToSpeechFile":Ljava/io/File;
    .end local v3    # "speechFile":Ljava/io/File;
    :cond_3
    return-void
.end method
