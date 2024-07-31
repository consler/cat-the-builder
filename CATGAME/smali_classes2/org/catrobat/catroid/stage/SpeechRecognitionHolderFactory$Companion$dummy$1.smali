.class public final Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolderFactory.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "org/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1",
        "Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;",
        "callback",
        "Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "getCallback",
        "()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "setCallback",
        "(Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;)V",
        "destroy",
        "",
        "forceSetLanguage",
        "initSpeechRecognition",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "stageResourceHolder",
        "Lorg/catrobat/catroid/stage/StageResourceHolder;",
        "startListening",
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
.field private callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1$callback$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1$callback$1;-><init>()V

    check-cast v0, Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;->callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 42
    return-void
.end method

.method public forceSetLanguage()V
    .locals 0

    .line 36
    return-void
.end method

.method public getCallback()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;->callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    return-object v0
.end method

.method public initSpeechRecognition(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 1
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageResourceHolder"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    const-string v0, "stageActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageResourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setCallback(Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;->callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    return-void
.end method

.method public startListening()V
    .locals 0

    .line 41
    return-void
.end method
