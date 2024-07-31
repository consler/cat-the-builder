.class public final Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1$callback$1;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolderFactory.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1$callback$1",
        "Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "onResult",
        "",
        "spokenWords",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "spokenWords"    # Ljava/lang/String;

    const-string v0, "spokenWords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method
