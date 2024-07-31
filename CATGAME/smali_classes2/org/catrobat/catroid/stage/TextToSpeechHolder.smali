.class public final Lorg/catrobat/catroid/stage/TextToSpeechHolder;
.super Ljava/lang/Object;
.source "TextToSpeechHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextToSpeechHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextToSpeechHolder.kt\norg/catrobat/catroid/stage/TextToSpeechHolder\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,97:1\n1256#2,2:98\n*E\n*S KotlinDebug\n*F\n+ 1 TextToSpeechHolder.kt\norg/catrobat/catroid/stage/TextToSpeechHolder\n*L\n83#1,2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0016\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u0004J6\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/TextToSpeechHolder;",
        "",
        "()V",
        "deleteSpeechFiles",
        "",
        "initTextToSpeech",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "stageResourceHolder",
        "Lorg/catrobat/catroid/stage/StageResourceHolder;",
        "shutDownTextToSpeech",
        "textToSpeech",
        "text",
        "",
        "speechFile",
        "Ljava/io/File;",
        "listener",
        "Landroid/speech/tts/UtteranceProgressListener;",
        "speakParameter",
        "Ljava/util/HashMap;",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lorg/catrobat/catroid/stage/TextToSpeechHolder;

.field private static textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private static utteranceProgressListenerContainer:Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->Companion:Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;

    .line 90
    const-class v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    invoke-direct {v0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->instance:Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lorg/catrobat/catroid/stage/TextToSpeechHolder;
    .locals 1

    .line 38
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->instance:Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    return-object v0
.end method

.method public static final synthetic access$getTextToSpeech$cp()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .line 38
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public static final synthetic access$getUtteranceProgressListenerContainer$cp()Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;
    .locals 1

    .line 38
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->utteranceProgressListenerContainer:Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lorg/catrobat/catroid/stage/TextToSpeechHolder;)V
    .locals 0
    .param p0, "<set-?>"    # Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    .line 38
    sput-object p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->instance:Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    return-void
.end method

.method public static final synthetic access$setTextToSpeech$cp(Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/speech/tts/TextToSpeech;

    .line 38
    sput-object p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public static final synthetic access$setUtteranceProgressListenerContainer$cp(Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;)V
    .locals 0
    .param p0, "<set-?>"    # Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;

    .line 38
    sput-object p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->utteranceProgressListenerContainer:Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;

    return-void
.end method

.method public static final getInstance()Lorg/catrobat/catroid/stage/TextToSpeechHolder;
    .locals 1

    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->instance:Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    return-object v0
.end method

.method public static final setInstance(Lorg/catrobat/catroid/stage/TextToSpeechHolder;)V
    .locals 0

    sput-object p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->instance:Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    return-void
.end method


# virtual methods
.method public final deleteSpeechFiles()V
    .locals 7

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TEXT_TO_SPEECH_TMP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "pathToSpeechFiles":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlin/io/FilesKt;->walk$default(Ljava/io/File;Lkotlin/io/FileWalkDirection;ILjava/lang/Object;)Lkotlin/io/FileTreeWalk;

    move-result-object v1

    check-cast v1, Lkotlin/sequences/Sequence;

    .local v1, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/io/File;

    .local v5, "it":Ljava/io/File;
    const/4 v6, 0x0

    .line 84
    .local v6, "$i$a$-forEach-TextToSpeechHolder$deleteSpeechFiles$1":I
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 85
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/io/File;
    .end local v6    # "$i$a$-forEach-TextToSpeechHolder$deleteSpeechFiles$1":I
    goto :goto_0

    .line 87
    .end local v1    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$forEach":I
    :cond_0
    return-void
.end method

.method public final initTextToSpeech(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 3
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageResourceHolder"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    const-string v0, "stageActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageResourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;

    invoke-direct {v2, p2, p1}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;Lorg/catrobat/catroid/stage/StageActivity;)V

    check-cast v2, Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 63
    return-void
.end method

.method public final shutDownTextToSpeech()V
    .locals 1

    .line 66
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 67
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 68
    :cond_1
    return-void
.end method

.method public final textToSpeech(Ljava/lang/String;Ljava/io/File;Landroid/speech/tts/UtteranceProgressListener;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "speechFile"    # Ljava/io/File;
    .param p3, "listener"    # Landroid/speech/tts/UtteranceProgressListener;
    .param p4, "speakParameter"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Landroid/speech/tts/UtteranceProgressListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "speechFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speakParameter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 72
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->utteranceProgressListenerContainer:Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;

    if-eqz v0, :cond_3

    .line 71
    nop

    .line 72
    const-string v1, "utteranceId"

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    invoke-virtual {v0, p2, p3, v1}, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;->addUtteranceProgressListener(Ljava/io/File;Landroid/speech/tts/UtteranceProgressListener;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 73
    sget-object v0, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p4, v2}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 74
    .local v0, "status":Ljava/lang/Integer;
    :goto_1
    const/4 v1, -0x1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 75
    sget-object v1, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->TAG:Ljava/lang/String;

    const-string v2, "File synthesizing failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 71
    .end local v0    # "status":Ljava/lang/Integer;
    :cond_3
    nop

    .line 78
    :cond_4
    :goto_2
    return-void
.end method
