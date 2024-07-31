.class public final Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;
.super Ljava/lang/Object;
.source "TextToSpeechHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/stage/TextToSpeechHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "instance",
        "Lorg/catrobat/catroid/stage/TextToSpeechHolder;",
        "getInstance$annotations",
        "getInstance",
        "()Lorg/catrobat/catroid/stage/TextToSpeechHolder;",
        "setInstance",
        "(Lorg/catrobat/catroid/stage/TextToSpeechHolder;)V",
        "textToSpeech",
        "Landroid/speech/tts/TextToSpeech;",
        "utteranceProgressListenerContainer",
        "Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 89
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance()Lorg/catrobat/catroid/stage/TextToSpeechHolder;
    .locals 1

    .line 94
    invoke-static {}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->access$getInstance$cp()Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    move-result-object v0

    return-object v0
.end method

.method public final setInstance(Lorg/catrobat/catroid/stage/TextToSpeechHolder;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/stage/TextToSpeechHolder;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->access$setInstance$cp(Lorg/catrobat/catroid/stage/TextToSpeechHolder;)V

    return-void
.end method
